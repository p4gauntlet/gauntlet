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
    action do_action(ethernet_t ctrl_hdr) {
        h.eth_hdr.dst_addr = ctrl_hdr.dst_addr;
    }
    table simple_table {
        key = {
            h.eth_hdr.eth_type: exact @name("key") ;
        }
        actions = {
            do_action();
        }
    }
    apply {
        simple_table.apply();
    }
}

parser Parser(packet_in b, out Headers hdr);
control Ingress(inout Headers hdr);
package top(Parser p, Ingress ig);
top(p(), ingress()) main;

