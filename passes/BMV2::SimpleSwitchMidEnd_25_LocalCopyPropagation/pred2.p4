*** dumps/p4_16_samples/pred2.p4/pruned/pred2-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 16:59:56.936250600 +0200
--- dumps/p4_16_samples/pred2.p4/pruned/pred2-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 16:59:56.940256100 +0200
*************** package top(empty e);
*** 5,11 ****
  control Ing() {
      bool tmp_0;
      @name("Ing.cond") action cond() {
-         tmp_0 = tmp_0;
      }
      @name("Ing.tbl_cond") table tbl_cond {
          actions = {
--- 5,10 ----
