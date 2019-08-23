#include <core.p4>
header h1_t {
    bit<8> f1;
    bit<8> f2;
}
parser parserImpl(out h1_t hdr) {
    bit<8> tmp;
    bit<8> tmp_0;
    state start {
        tmp_0 = hdr.f1;
        tmp = tmp_0 >> 2;
        hdr.f1 = tmp;
        hdr.f2 = 8w1;
        transition accept;
    }
}
parser p<T>(out T h);
package top<T>(p<T> p);
top<h1_t>(parserImpl()) main;
