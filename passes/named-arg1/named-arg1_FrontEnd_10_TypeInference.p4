#include <core.p4>
parser adder(in bit<32> y, out bit<32> x)(bit<32> add, bool ignore) {
    state start {
        x = y + add;
        transition accept;
    }
}
parser par(out bool b) {
    adder(ignore = false, add = 32w6) p;
    state start {
        bit<32> x;
        p.apply(x = x, y = 32w0);
        b = x == 32w0;
        transition accept;
    }
}
control comp(inout bit<16> x, out bool b)(bit<16> compare, bit<2> ignore) {
    apply {
        b = x == compare;
    }
}
control c(out bool b) {
    comp(ignore = 2w1, compare = 16w0) c0;
    comp(ignore = 2w2, compare = 16w1) c1;
    action a(in bit<16> bi, out bit<16> mb) {
        mb = -bi;
    }
    apply {
        bit<16> xv = (bit<16>)16w0;
        a(bi = 16w3, mb = xv);
        a(mb = xv, bi = 16w0);
        c0.apply(b = b, x = xv);
        c1.apply(xv, b);
        xv = (bit<16>)16w1;
        c0.apply(x = xv, b = b);
        c1.apply(b = b, x = xv);
    }
}
control ce(out bool b);
parser pe(out bool b);
package top(pe _p, ce _e, @optional ce _e1);
top(_e = c(), _p = par()) main;
