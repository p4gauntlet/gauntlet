#include <core.p4>
header H {
    bit<32> field;
}
parser P(packet_in p, out H[2] h) {
    bit<32> x;
    H tmp;
    state start {
        p.extract(tmp);
        transition select(tmp.field) {
            32w0: n1;
            default: n2;
        }
    }
    state n1 {
        x = (bit<32>)32w1;
        transition n3;
    }
    state n2 {
        x = (bit<32>)32w2;
        transition n3;
    }
    state n3 {
        x = x - 32w1;
        transition n4;
    }
    state n4 {
        p.extract(h[x]);
        transition accept;
    }
}
parser Simple<T>(packet_in p, out T t);
package top<T>(Simple<T> prs);
top(P()) main;
