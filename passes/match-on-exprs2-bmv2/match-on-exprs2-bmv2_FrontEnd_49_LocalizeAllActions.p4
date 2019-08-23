#include <core.p4>
#include <v1model.p4>
typedef bit<48> EthernetAddress;
header ethernet_t {
    EthernetAddress dstAddr;
    EthernetAddress srcAddr;
    bit<16>         etherType;
}
struct headers_t {
    ethernet_t ethernet;
}
struct metadata_t {
}
parser parserImpl(packet_in packet, out headers_t hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
    state start {
        packet.extract<ethernet_t>(hdr.ethernet);
        transition accept;
    }
}
control verifyChecksum(inout headers_t hdr, inout metadata_t meta) {
    apply {
    }
}
control ingressImpl(inout headers_t hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
    @name(".NoAction") action NoAction_1() {
    }
    @name("my_drop") action my_drop_0() {
        mark_to_drop(stdmeta);
    }
    @name("foo") action foo_0(bit<9> out_port) {
        hdr.ethernet.dstAddr[22:18] = hdr.ethernet.srcAddr[5:1];
        stdmeta.egress_spec = out_port;
    }
    @name("t1") table t1 {
        key = {
            hdr.ethernet.srcAddr[22:18]            : exact @name("hdr.ethernet.srcAddr[22:18]") ;
            hdr.ethernet.dstAddr & 48w0x10101010101: exact @name("hdr.ethernet.dstAddr & 0x10101010101") ;
            hdr.ethernet.etherType + 16w65526      : exact @name("etherType_less_10") ;
        }
        actions = {
            foo_0();
            my_drop_0();
            NoAction_1();
        }
        const default_action = NoAction_1();
    }
    apply {
        t1.apply();
    }
}
control egressImpl(inout headers_t hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
    apply {
    }
}
control updateChecksum(inout headers_t hdr, inout metadata_t meta) {
    apply {
    }
}
control deparserImpl(packet_out packet, in headers_t hdr) {
    apply {
        packet.emit<ethernet_t>(hdr.ethernet);
    }
}
V1Switch<headers_t, metadata_t>(parserImpl(), verifyChecksum(), ingressImpl(), egressImpl(), updateChecksum(), deparserImpl()) main;
