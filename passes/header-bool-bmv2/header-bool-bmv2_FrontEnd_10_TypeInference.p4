#include <core.p4>
#include <v1model.p4>
header Hdr1 {
    bit<7> a;
    bool   x;
}
header Hdr2 {
    bit<16> b;
}
header_union U {
    Hdr1 h1;
    Hdr2 h2;
}
struct Headers {
    Hdr1 h1;
    U    u;
}
struct Meta {
}
parser p(packet_in b, out Headers h, inout Meta m, inout standard_metadata_t sm) {
    state start {
        b.extract(h.h1);
        transition select(h.h1.a) {
            7w0: getH1;
            default: getH2;
        }
    }
    state getH1 {
        b.extract(h.u.h1);
        transition accept;
    }
    state getH2 {
        b.extract(h.u.h2);
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
        h.u.h1.x = true;
    }
}
control deparser(packet_out b, in Headers h) {
    apply {
        b.emit(h.h1);
        b.emit(h.u);
    }
}
control ingress(inout Headers h, inout Meta m, inout standard_metadata_t sm) {
    apply {
        if (h.u.h2.isValid()) {
            h.u.h2.setInvalid();
        }
    }
}
V1Switch(p(), vrfy(), ingress(), egress(), update(), deparser()) main;
