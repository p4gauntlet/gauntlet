control c(inout bit<32> x) {
    bit<32> tmp_2;
    apply {
        {
            bit<32> a_1 = x;
            bit<32> b_1 = x;
            bool hasReturned_0 = false;
            bit<32> retval_0;
            bit<32> tmp_0;
            bit<32> tmp_1;
            {
                bit<32> a_0 = a_1;
                bit<32> b_0 = b_1;
                bool hasReturned = false;
                bit<32> retval;
                bit<32> tmp;
                if (a_0 > b_0) {
                    tmp = b_0;
                } else {
                    tmp = a_0;
                }
                hasReturned = true;
                retval = tmp;
                tmp_0 = retval;
            }
            tmp_1 = a_1 + tmp_0;
            hasReturned_0 = true;
            retval_0 = tmp_1;
            tmp_2 = retval_0;
        }
        x = tmp_2;
    }
}
control ctr(inout bit<32> x);
package top(ctr _c);
top(c()) main;
