*** dumps/p4_16_samples/inline.p4/pruned/inline-BMV2::SimpleSwitchMidEnd_28_ValidateTableProperties.p4	2019-05-20 16:58:35.329275300 +0200
--- dumps/p4_16_samples/inline.p4/pruned/inline-BMV2::SimpleSwitchMidEnd_29_SimplifyControlFlow.p4	2019-05-20 16:58:35.382072200 +0200
***************
*** 1,10 ****
  control p(out bit<1> y) {
      bit<1> x_3;
      @name("p.b") action b_0() {
-         {
-         }
-         {
-         }
          y = x_3 & x_3 & (x_3 & x_3) & (x_3 & x_3 & (x_3 & x_3));
      }
      apply {
--- 1,6 ----
