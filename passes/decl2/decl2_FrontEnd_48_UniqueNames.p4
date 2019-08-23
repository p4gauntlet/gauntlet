control p() {
    bit<1> z;
    bit<1> x;
    bit<1> x_1;
    bit<1> y;
    @name("b") action b(in bit<1> x_0, out bit<1> y_0) {
        x = x_0;
        z = x_0 & x;
        y_0 = z;
    }
    apply {
        x_1 = 1w0;
        b(x_1, y);
    }
}
control simple();
package m(simple pipe);
.m(.p()) main;
