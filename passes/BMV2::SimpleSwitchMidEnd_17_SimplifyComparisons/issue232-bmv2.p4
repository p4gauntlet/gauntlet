*** dumps/p4_16_samples/issue232-bmv2.p4/pruned/issue232-bmv2-BMV2::SimpleSwitchMidEnd_16_EliminateTuples.p4	2019-05-20 16:59:02.243138300 +0200
--- dumps/p4_16_samples/issue232-bmv2.p4/pruned/issue232-bmv2-BMV2::SimpleSwitchMidEnd_17_SimplifyComparisons.p4	2019-05-20 16:59:02.246214200 +0200
*************** control Eg(inout Headers hdrs, inout Met
*** 30,36 ****
      @name("Eg.test") action test_0() {
          inKey = { 32w1 };
          defaultKey = { 32w0 };
!         same = inKey == defaultKey;
          val_1 = { 32w0 };
          done = false;
          ok = !done && same;
--- 30,36 ----
      @name("Eg.test") action test_0() {
          inKey = { 32w1 };
          defaultKey = { 32w0 };
!         same = true && inKey.field1 == defaultKey.field1;
          val_1 = { 32w0 };
          done = false;
          ok = !done && same;
