*** dumps/p4_16_samples/pipe.p4/pruned/pipe-BMV2::SimpleSwitchMidEnd_17_SimplifyComparisons.p4	2019-05-20 17:00:38.881800000 +0200
--- dumps/p4_16_samples/pipe.p4/pruned/pipe-BMV2::SimpleSwitchMidEnd_18_CopyStructures.p4	2019-05-20 17:00:38.886902100 +0200
*************** control Q_pipe(inout TArg1 qArg1, inout
*** 64,77 ****
          const default_action = NoAction_0();
      }
      apply {
!         p1_tArg1_0 = qArg1;
!         p1_aArg2_0 = qArg2;
          p1_thost_T_0.apply();
!         qArg1 = p1_tArg1_0;
!         p1_tArg1_0 = qArg1;
!         p1_aArg2_0 = qArg2;
          p1_thost_T_0.apply();
!         qArg1 = p1_tArg1_0;
          p1_Tinner_0.apply();
      }
  }
--- 64,93 ----
          const default_action = NoAction_0();
      }
      apply {
!         {
!             p1_tArg1_0.field1 = qArg1.field1;
!             p1_tArg1_0.drop = qArg1.drop;
!         }
!         {
!             p1_aArg2_0.field2 = qArg2.field2;
!         }
          p1_thost_T_0.apply();
!         {
!             qArg1.field1 = p1_tArg1_0.field1;
!             qArg1.drop = p1_tArg1_0.drop;
!         }
!         {
!             p1_tArg1_0.field1 = qArg1.field1;
!             p1_tArg1_0.drop = qArg1.drop;
!         }
!         {
!             p1_aArg2_0.field2 = qArg2.field2;
!         }
          p1_thost_T_0.apply();
!         {
!             qArg1.field1 = p1_tArg1_0.field1;
!             qArg1.drop = p1_tArg1_0.drop;
!         }
          p1_Tinner_0.apply();
      }
  }
