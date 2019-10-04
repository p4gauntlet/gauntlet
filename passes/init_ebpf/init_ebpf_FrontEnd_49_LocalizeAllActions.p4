#include <core.p4>
#include <ebpf_model.p4>
header Ethernet {
    bit<48> destination;
    bit<48> source;
    bit<16> protocol;
}
struct Headers_t {
    Ethernet ethernet;
}
parser prs(packet_in p, out Headers_t headers) {
    state start {
        p.extract<Ethernet>(headers.ethernet);
        transition accept;
    }
}
control pipe(inout Headers_t headers, out bool pass) {
    @name(".NoAction") action NoAction_1() {
    }
    @name("match") action match_0(bool act) {
        pass = act;
    }
    @name("tbl") table tbl {
        key = {
            headers.ethernet.protocol: exact @name("headers.ethernet.protocol") ;
        }
        actions = {
            match_0();
            NoAction_1();
        }
        const entries = {
                        16w0x800 : match_0(true);
                        16w0xd000 : match_0(false);
        }
        implementation = hash_table(32w64);
        default_action = NoAction_1();
    }
    apply {
        pass = true;
        tbl.apply();
    }
}
ebpfFilter<Headers_t>(prs(), pipe()) main;