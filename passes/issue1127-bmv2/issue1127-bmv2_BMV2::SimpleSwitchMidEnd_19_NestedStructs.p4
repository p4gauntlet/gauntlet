#include <core.p4>
#include <v1model.p4>
header h1_t {
    bit<8> op1;
    bit<8> op2;
    bit<8> out1;
}
struct headers {
    h1_t h1;
}
struct metadata {
}
parser parserI(packet_in pkt, out headers hdr, inout metadata meta, inout standard_metadata_t stdmeta) {
    state start {
        pkt.extract<h1_t>(hdr.h1);
        transition accept;
    }
}
control cIngress(inout headers hdr, inout metadata meta, inout standard_metadata_t stdmeta) {
    h1_t tmp_h1;
    bit<8> tmp_0;
    h1_t tmp_1_h1;
    bit<8> tmp_2;
    h1_t hdr_0_h1;
    bit<8> op_0;
    apply {
        {
            tmp_h1 = hdr.h1;
        }
        tmp_0 = hdr.h1.op1;
        {
            hdr_0_h1 = tmp_h1;
        }
        op_0 = tmp_0;
        if (op_0 == 8w0x0) {
            ;
        } else if (op_0[7:4] == 4w1) {
            hdr_0_h1.out1 = 8w4;
        }
        {
            tmp_h1 = hdr_0_h1;
        }
        {
            hdr.h1 = tmp_h1;
        }
        {
            tmp_1_h1 = hdr.h1;
        }
        tmp_2 = hdr.h1.op2;
        {
            hdr_0_h1 = tmp_1_h1;
        }
        op_0 = tmp_2;
        if (op_0 == 8w0x0) {
            ;
        } else if (op_0[7:4] == 4w1) {
            hdr_0_h1.out1 = 8w4;
        }
        {
            tmp_1_h1 = hdr_0_h1;
        }
        {
            hdr.h1 = tmp_1_h1;
        }
    }
}
control cEgress(inout headers hdr, inout metadata meta, inout standard_metadata_t stdmeta) {
    apply {
    }
}
control vc(inout headers hdr, inout metadata meta) {
    apply {
    }
}
control uc(inout headers hdr, inout metadata meta) {
    apply {
    }
}
control DeparserI(packet_out packet, in headers hdr) {
    apply {
        packet.emit<h1_t>(hdr.h1);
    }
}
V1Switch<headers, metadata>(parserI(), vc(), cIngress(), cEgress(), uc(), DeparserI()) main;
