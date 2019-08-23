#include <core.p4>
parser adder_0(in bit<32> y, out bit<32> x) {
    state start {
        x = y + 32w6;
        transition accept;
    }
}
parser par(out bool b) {
    bit<32> x_0;
    @name("p") adder_0() p_0;
    state start {
        p_0.apply(x = x_0, y = 32w0);
        b = x_0 == 32w0;
        transition accept;
    }
}
control comp_0(inout bit<16> x, out bool b) {
    apply {
        b = x == 16w0;
    }
}
control comp_1(inout bit<16> x, out bool b) {
    apply {
        b = x == 16w1;
    }
}
control c(out bool b) {
    bit<16> xv_0;
    @name("c0") comp_0() c0_0;
    @name("c1") comp_1() c1_0;
    @name("a") action a_0(in bit<16> bi_0, out bit<16> mb_0) {
        mb_0 = -bi_0;
    }
    apply {
        a_0(bi_0 = 16w3, mb_0 = xv_0);
        a_0(mb_0 = xv_0, bi_0 = 16w0);
        c0_0.apply(b = b, x = xv_0);
        c1_0.apply(xv_0, b);
        xv_0 = 16w1;
        c0_0.apply(x = xv_0, b = b);
        c1_0.apply(b = b, x = xv_0);
    }
}
control ce(out bool b);
parser pe(out bool b);
package top(pe _p, ce _e, @optional ce _e1);
top(_e = c(), _p = par()) main;
