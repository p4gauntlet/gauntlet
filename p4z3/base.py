import operator as op
import z3


class Z3P4Class():
    def __init__(self, z3_reg, z3_id=0):
        cls_name = self.__class__.__name__
        self.name = "%s%d" % (cls_name, z3_id)
        self.z3_type = z3_reg.type(cls_name)
        self.const = z3.Const(f"{self.name}_0", self.z3_type)
        self.constructor = self.z3_type.constructor(0)
        # self.revisions = [self.const]

        self._set_z3_accessors(self.z3_type, self.constructor)
        self._set_members(z3_reg, self.accessors)

    def _set_z3_accessors(self, z3_type, constructor):
        self.accessors = []
        for type_index in range(constructor.arity()):
            accessor = z3_type.accessor(0, type_index)
            self.accessors.append(accessor)

    def _set_members(self, z3_reg, accessors):
        for accessor in accessors:
            arg_type = accessor.range()
            if isinstance(arg_type, z3.DatatypeSortRef):
                # this is a complex datatype, reference the Python object
                member_cls = z3_reg.instance(arg_type.name())
                setattr(self, accessor.name(), member_cls)
            else:
                # use the default z3 constructor
                setattr(self, accessor.name(), accessor(self.const))

    def _make(self, parent_const=None):
        members = []
        for accessor in self.accessors:
            member_make = op.attrgetter(accessor.name())(self)
            if isinstance(member_make, Z3P4Class):
                sub_const = accessor(parent_const)
                members.append(member_make._make(sub_const))
            else:
                # member_make = accessor(parent_const)
                members.append(member_make)
        return self.constructor(*members)

    def set_member(self, accessor_name, val):
        member = op.attrgetter(accessor_name)(self)
        if isinstance(member, Z3P4Class):
            member.propagate_type(val)
        else:
            setattr(self, accessor_name, val)

    def propagate_type(self, parent_const=None):
        members = []
        for accessor in self.accessors:
            self.set_member(accessor.name(), accessor(parent_const))
            members.append(accessor(parent_const))
        self.const = self.constructor(*members)


class P4State(Z3P4Class):

    def __init__(self, z3_reg, z3_id=0):
        super(P4State, self).__init__(z3_reg, z3_id)

        # These are special for state
        self.propagate_type(self.const)

    def get_var(self, var_string):
        if var_string.endswith("()"):
            # we are trying to access a base function
            # just remove the brackets and try to call the result
            var_string = var_string[:-2]
            return op.attrgetter(var_string)(self)()
            # return op.methodcaller(var_string)(self)
        else:
            return op.attrgetter(var_string)(self)

    def del_var(self, var_string):
        delattr(self, var_string)

    def _update(self):
        # index = len(self.revisions)
        # self.const = z3.Const(f"{self.name}_{index}", self.z3_type)
        self.const = z3.Const(f"{self.name}_1", self.z3_type)
        # self.revisions.append(self.const)

    def set_or_add_var(self, lstring, rvalue):
        # update the internal representation of the attribute
        if '.' in lstring:
            prefix, suffix = lstring.rsplit(".", 1)
            target_class = op.attrgetter(prefix)(self)
            setattr(target_class, suffix, rvalue)
            # update the SSA version
        else:
            setattr(self, lstring, rvalue)
        # generate a new version of the z3 datatype
        const_copy = self._make(self.const)
        self._update()
        # return the update expression
        return self.const == const_copy

    def set_list(self, lstring, rvals):
        if '.' in lstring:
            prefix, suffix = lstring.rsplit(".", 1)
            target_class = op.attrgetter(prefix)(self)
        else:
            target_class = op.attrgetter(lstring)(self)
        if not isinstance(target_class, Z3P4Class):
            raise RuntimeError(
                "Trying to assign values to a non-complex type!")
        for index, rval in enumerate(rvals):
            accessor = target_class.accessors[index]
            setattr(target_class, accessor.name(), rval)
        # generate a new version of the z3 datatype
        const_copy = self._make(self.const)
        self._update()
        # return the update expression
        return self.const == const_copy

    def add_externs(self, externs):
        for extern_name, extern_method in externs.items():
            self.set_or_add_var(extern_name, extern_method)


class Header(Z3P4Class):

    def __init__(self, z3_reg, z3_id=0):
        super(Header, self).__init__(z3_reg, z3_id)

        # These are special for headers
        self.valid = z3.Const("%s_valid" % self.name, z3.BoolSort())

    def isValid(self, *args):
        return self.valid

    def setValid(self, *args):
        self.valid = True

    def setInvalid(self, *args):
        self.valid = False


class Struct(Z3P4Class):

    def __init__(self, z3_reg, z3_id=0):
        super(Struct, self).__init__(z3_reg, z3_id)


class TypeDef():

    def __init__(self, z3_reg, z3_id=0):
        pass


def handle_type_stack(z3_args):
    fixed_args = []
    for z3_arg in z3_args:
        z3_name = z3_arg[0]
        z3_type = z3_arg[1]
        if isinstance(z3_type, list):
            for index, val in enumerate(z3_type):
                z3_tuple = (z3_name + "_%d" % index, val)
                fixed_args.append(z3_tuple)
        else:
            fixed_args.append(z3_arg)
    return fixed_args


class Z3Reg():
    _types = {}
    _externs = {}
    _classes = {}
    _ref_count = {}

    def register_structlike(self, name, p4_class, z3_args):
        self._types[name] = z3.Datatype(name)
        fixed_args = handle_type_stack(z3_args)
        self._types[name].declare(f"mk_{name}", *fixed_args)
        self._types[name] = self._types[name].create()
        self._classes[name] = type(name, (p4_class,), {})
        self._ref_count[name] = 0

    def register_typedef(self, name, target):
        self._types[name] = target
        self._classes[name] = target
        self._ref_count[name] = 0

    def register_extern(self, name, method):
        self._externs[name] = method

    def reset(self):
        self._types.clear()
        self._classes.clear()
        self._ref_count.clear()

    def type(self, type_name):
        return self._types[type_name]

    def extern(self, extern_name):
        return self._externs[extern_name]

    def instance(self, type_name):
        z3_cls = self._classes[type_name]
        self._ref_count[type_name] += 1
        if isinstance(z3_cls, z3.AstRef):
            return z3.Const(f"{type_name}{self._ref_count[type_name]}", z3_cls)
        else:
            return z3_cls(self, self._ref_count[type_name])
