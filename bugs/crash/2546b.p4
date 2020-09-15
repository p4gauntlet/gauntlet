/*Invoking preprocessor
cpp -C -undef -nostdinc -x assembler-with-cpp  -Ip4c/build/p4include bugs/validation/nested_tbl_apply_crash.p4.txt
FrontEnd_0_P4V1::getV1ModelVersion
ParseAnnotationBodies_0_ParseAnnotations
ParseAnnotationBodies_1_ClearTypeMap
FrontEnd_1_ParseAnnotationBodies
FrontEnd_2_PrettyPrint
FrontEnd_3_ValidateParsedProgram
FrontEnd_4_CreateBuiltins
FrontEnd_5_ResolveReferences
ConstantFolding_0_DoConstantFolding
FrontEnd_6_ConstantFolding
InstantiateDirectCalls_0_ResolveReferences
InstantiateDirectCalls_1_DoInstantiateCalls
FrontEnd_7_InstantiateDirectCalls
FrontEnd_8_ResolveReferences
Deprecated_0_ResolveReferences
Deprecated_1_CheckDeprecated
FrontEnd_9_Deprecated
FrontEnd_10_CheckNamedArgs
FrontEnd_11_TypeInference
FrontEnd_12_ValidateMatchAnnotations
BindTypeVariables_0_ClearTypeMap
BindTypeVariables_1_ResolveReferences
BindTypeVariables_2_TypeInference
BindTypeVariables_3_DoBindTypeVariables
FrontEnd_13_BindTypeVariables
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
DefaultArguments_0_TypeChecking
DefaultArguments_1_DoDefaultArguments
FrontEnd_14_DefaultArguments
FrontEnd_15_ResolveReferences
FrontEnd_16_TypeInference
RemoveParserControlFlow_0_DoRemoveParserControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_3_TypeInference
SimplifyControlFlow_2_TypeChecking
SimplifyControlFlow_3_DoSimplifyControlFlow
RemoveParserControlFlow_1_SimplifyControlFlow
RemoveParserControlFlow_2_DoRemoveParserControlFlow
P4::TypeChecking_4_ResolveReferences
P4::TypeChecking_5_TypeInference
SimplifyControlFlow_4_TypeChecking
SimplifyControlFlow_5_DoSimplifyControlFlow
RemoveParserControlFlow_3_SimplifyControlFlow
FrontEnd_17_RemoveParserControlFlow
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
StructInitializers_0_TypeChecking
StructInitializers_1_CreateStructInitializers
StructInitializers_2_ClearTypeMap
FrontEnd_18_StructInitializers
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SpecializeGenericFunctions_0_TypeChecking
SpecializeGenericFunctions_1_FindFunctionSpecializations
SpecializeGenericFunctions_2_SpecializeFunctions
FrontEnd_19_SpecializeGenericFunctions
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
TableKeyNames_0_TypeChecking
TableKeyNames_1_DoTableKeyNames
FrontEnd_20_TableKeyNames
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
ConstantFolding_0_TypeChecking
ConstantFolding_1_DoConstantFolding
ConstantFolding_2_ClearTypeMap
PassRepeated_0_ConstantFolding
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
P4::TypeChecking_2_ApplyTypesToExpressions
P4::TypeChecking_3_ResolveReferences
P4::StrengthReduction_0_TypeChecking
P4::StrengthReduction_1_StrengthReduction
PassRepeated_1_StrengthReduction
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
UselessCasts_0_TypeChecking
UselessCasts_1_RemoveUselessCasts
PassRepeated_2_UselessCasts
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_3_TypeInference
ConstantFolding_3_TypeChecking
ConstantFolding_4_DoConstantFolding
ConstantFolding_5_ClearTypeMap
PassRepeated_3_ConstantFolding
P4::TypeChecking_4_ResolveReferences
P4::TypeChecking_5_TypeInference
P4::TypeChecking_6_ApplyTypesToExpressions
P4::TypeChecking_7_ResolveReferences
P4::StrengthReduction_2_TypeChecking
P4::StrengthReduction_3_StrengthReduction
PassRepeated_4_StrengthReduction
P4::TypeChecking_2_ResolveReferences
P4::TypeChecking_3_TypeInference
UselessCasts_2_TypeChecking
UselessCasts_3_RemoveUselessCasts
PassRepeated_5_UselessCasts
FrontEnd_21_PassRepeated
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_22_SimplifyControlFlow
FrontEnd_23_SwitchAddDefault
FrontEnd_24_FrontEndDump
PassRepeated_0_ResolveReferences
PassRepeated_1_RemoveUnusedDeclarations
RemoveAllUnusedDeclarations_0_PassRepeated
FrontEnd_25_RemoveAllUnusedDeclarations
SimplifyParsers_0_ResolveReferences
SimplifyParsers_1_DoSimplifyParsers
FrontEnd_26_SimplifyParsers
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
ResetHeaders_0_TypeChecking
ResetHeaders_1_DoResetHeaders
FrontEnd_27_ResetHeaders
UniqueNames_0_ResolveReferences
UniqueNames_1_FindSymbols
UniqueNames_2_RenameSymbols
FrontEnd_28_UniqueNames
FrontEnd_29_MoveDeclarations
FrontEnd_30_MoveInitializers
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SideEffectOrdering_0_TypeChecking
SideEffectOrdering_1_DoSimplifyExpressions
FrontEnd_31_SideEffectOrdering
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyControlFlow_0_TypeChecking
SimplifyControlFlow_1_DoSimplifyControlFlow
FrontEnd_32_SimplifyControlFlow
FrontEnd_33_MoveDeclarations
P4::TypeChecking_0_ResolveReferences
P4::TypeChecking_1_TypeInference
SimplifyDefUse_0_TypeChecking
In file: p4c/frontends/p4/def_use.h:351
[31mCompiler Bug[0m: no definitions found for h.eth_hdr.eth_type
*/


#include <core.p4>
header ethernet_t {
    bit<48> dst_addr;
    bit<48> src_addr;
    bit<16> eth_type;
}

struct Headers {
    ethernet_t eth_hdr;
}

parser p(packet_in pkt, out Headers hdr) {
    state start {
        transition parse_hdrs;
    }
    state parse_hdrs {
        pkt.extract(hdr.eth_hdr);
        transition accept;
    }
}

control ingress(inout Headers h) {

    table simple_table_1 {
        key = {
            h.eth_hdr.eth_type: exact @name("KOXpQP") ;
        }
        actions = {
        }
    }
    table simple_table_2 {
        key = {
            (simple_table_1.apply().hit  ? 8w1 : 8w2): exact @name("key") ;
        }
        actions = {
        }
    }
    apply {
        if (simple_table_2.apply().hit) {
            h.eth_hdr.dst_addr = 1;
        }
    }
}

parser Parser(packet_in b, out Headers hdr);
control Ingress(inout Headers hdr);
package top(Parser p, Ingress ig);
top(p(), ingress()) main;

