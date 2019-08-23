control c(inout bit<16> y) {
    bit<32> x_0;
    @name("a") action a(bit<32> arg) {
        y = (bit<16>)arg;
    }
    apply {
        x_0 = 32w10;
        a(x_0);
    }
}
control proto(inout bit<16> y);
package top(proto _p);
top(c()) main;
