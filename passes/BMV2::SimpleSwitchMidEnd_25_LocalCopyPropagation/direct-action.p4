*** dumps/p4_16_samples/direct-action.p4/pruned/direct-action-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 16:58:12.635417200 +0200
--- dumps/p4_16_samples/direct-action.p4/pruned/direct-action-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 16:58:12.641084500 +0200
***************
*** 1,9 ****
  control c(inout bit<16> y) {
      bit<32> x;
-     bit<32> arg;
      @name("c.a") action a_0() {
!         arg = x;
!         y = (bit<16>)arg;
      }
      apply {
          x = 32w2;
--- 1,7 ----
  control c(inout bit<16> y) {
      bit<32> x;
      @name("c.a") action a_0() {
!         y = (bit<16>)x;
      }
      apply {
          x = 32w2;
