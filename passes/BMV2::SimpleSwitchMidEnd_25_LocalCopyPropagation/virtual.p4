*** dumps/p4_16_samples/virtual.p4/pruned/virtual-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 17:01:00.034354200 +0200
--- dumps/p4_16_samples/virtual.p4/pruned/virtual-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 17:01:00.038418400 +0200
*************** control c(inout bit<16> p) {
*** 19,27 ****
                  ix_1.a = x.a;
                  ix_1.b = x.b;
              }
!             if (ix_1.a < ix_1.b) 
!                 x.a = ix_1.a + 16w1;
!             if (ix_1.a > ix_1.b) 
                  x.a = ix_1.a + 16w65535;
          }
      };
--- 19,27 ----
                  ix_1.a = x.a;
                  ix_1.b = x.b;
              }
!             if (x.a < x.b) 
!                 x.a = x.a + 16w1;
!             if (ix_1.a > x.b) 
                  x.a = ix_1.a + 16w65535;
          }
      };
