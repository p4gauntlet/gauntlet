*** dumps/p4_16_samples/issue1560-bmv2.p4/pruned/issue1560-bmv2-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 16:58:48.934263800 +0200
--- dumps/p4_16_samples/issue1560-bmv2.p4/pruned/issue1560-bmv2-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 16:58:48.937170300 +0200
*************** control cIngress(inout headers hdr, inou
*** 152,159 ****
              @defaultonly NoAction_5();
          }
          key = {
!             hdr.tcp.srcPort: exact @name("hdr.tcp.srcPort") ;
!             meta.hash1     : selector @name("meta.hash1") ;
          }
          size = 16;
          default_action = NoAction_5();
--- 152,159 ----
              @defaultonly NoAction_5();
          }
          key = {
!             hdr.tcp.srcPort       : exact @name("hdr.tcp.srcPort") ;
!             hdr.ipv4.dstAddr[15:0]: selector @name("meta.hash1") ;
          }
          size = 16;
          default_action = NoAction_5();
