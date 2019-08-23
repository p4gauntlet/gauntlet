#include <core.p4>
parser p(out bit<32> b) {
    bit<32> a_0;
    bit<32> tmp;
    bit<32> tmp_0;
    bit<32> tmp_1;
    state start {
        a_0 = 32w1;
        if (a_0 == 32w0) {
            tmp = 32w2;
        } else {
            tmp = 32w3;
        }
        b = tmp;
        b = b + 32w1;
        if (a_0 > 32w0) {
            if (a_0 > 32w1) {
                tmp_1 = b + 32w1;
            } else {
                tmp_1 = b + 32w2;
            }
            tmp_0 = tmp_1;
        } else {
            tmp_0 = b + 32w3;
        }
        b = tmp_0;
        transition accept;
    }
}
parser proto(out bit<32> b);
package top(proto _p);
top(p()) main;
