#include <core.p4>
#include <v1model.p4>
header hdr {
    bit<32> a;
    bit<32> b;
}
control compute(inout hdr h) {
    action add(bit<32> data) {
        h.b = h.a + data;
    }
    table t {
        actions = {
            add();
        }
        const default_action = add(32w10);
    }
    apply {
        t.apply();
    }
}
struct Headers {
    hdr h;
}
struct Meta {
}
parser p(packet_in b, out Headers h, inout Meta m, inout standard_metadata_t sm) {
    state start {
        b.extract(h.h);
        transition accept;
    }
}
control vrfy(inout Headers h, inout Meta m) {
    apply {
    }
}
control update(inout Headers h, inout Meta m) {
    apply {
    }
}
control egress(inout Headers h, inout Meta m, inout standard_metadata_t sm) {
    apply {
    }
}
control deparser(packet_out b, in Headers h) {
    apply {
        b.emit(h.h);
    }
}
control ingress(inout Headers h, inout Meta m, inout standard_metadata_t sm) {
    compute() c;
    apply {
        c.apply(h.h);
        sm.egress_spec = (bit<9>)9w0;
    }
}
V1Switch(p(), vrfy(), ingress(), egress(), update(), deparser()) main;