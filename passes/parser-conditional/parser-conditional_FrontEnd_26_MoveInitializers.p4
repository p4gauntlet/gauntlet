#include <core.p4>
parser p(out bit<32> b) {
    bit<32> a_0;
    state start {
        a_0 = 32w1;
        b = (a_0 == 32w0 ? 32w2 : 32w3);
        b = b + 32w1;
        b = (a_0 > 32w0 ? (a_0 > 32w1 ? b + 32w1 : b + 32w2) : b + 32w3);
        transition accept;
    }
}
parser proto(out bit<32> b);
package top(proto _p);
top(p()) main;