*** dumps/p4_16_samples/decl2.p4/pruned/decl2-BMV2::SimpleSwitchMidEnd_2_EliminateSerEnums.p4	2019-05-20 16:58:10.702258100 +0200
--- dumps/p4_16_samples/decl2.p4/pruned/decl2-BMV2::SimpleSwitchMidEnd_3_RemoveActionParameters.p4	2019-05-20 16:58:10.723645600 +0200
*************** control p() {
*** 3,16 ****
      bit<1> x;
      bit<1> x_1;
      bit<1> y;
!     @name("p.b") action b_0(in bit<1> x_2, out bit<1> y_1) {
          x = x_2;
          z = x_2 & x;
          y_1 = z;
      }
      apply {
          x_1 = 1w0;
!         b_0(x_1, y);
      }
  }
  control simple();
--- 3,20 ----
      bit<1> x;
      bit<1> x_1;
      bit<1> y;
!     bit<1> x_2;
!     bit<1> y_1;
!     @name("p.b") action b_0() {
!         x_2 = x_1;
          x = x_2;
          z = x_2 & x;
          y_1 = z;
+         y = y_1;
      }
      apply {
          x_1 = 1w0;
!         b_0();
      }
  }
  control simple();
