control ctrl() {
    bit<32> a_0;
    bit<32> b_0;
    bit<32> c_0;
    apply {
        a_0 = 32w0;
        if (a_0 == 32w0) {
            exit;
        } else {
            exit;
        }
    }
}
control noop();
package p(noop _n);
p(ctrl()) main;