*** dumps/p4_16_samples/issue420.p4/pruned/issue420-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 16:59:11.670736100 +0200
--- dumps/p4_16_samples/issue420.p4/pruned/issue420-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 16:59:11.673058000 +0200
*************** parser parserI(packet_in pkt, out Parsed
*** 25,55 ****
      }
  }
  control cIngress(inout Parsed_packet hdr, inout mystruct1 meta, inout standard_metadata_t stdmeta) {
-     bool hasReturned_1;
-     bool hasReturned_2;
-     bool cond;
-     bool pred;
-     bool cond_0;
-     bool pred_0;
      @name(".NoAction") action NoAction_0() {
      }
      @name("cIngress.foo") action foo_0(bit<16> bar) {
-         hasReturned_1 = false;
          {
              {
-                 cond = bar == 16w0xf00d;
-                 pred = cond;
                  {
!                     hdr.ethernet.srcAddr = (pred ? 48w0xdeadbeeff00d : hdr.ethernet.srcAddr);
!                     hasReturned_1 = (pred ? true : hasReturned_1);
                  }
              }
          }
          {
              {
!                 cond_0 = !hasReturned_1;
!                 pred_0 = cond_0;
!                 hdr.ethernet.srcAddr = (pred_0 ? 48w0x215241100ff2 : hdr.ethernet.srcAddr);
              }
          }
      }
--- 25,43 ----
      }
  }
  control cIngress(inout Parsed_packet hdr, inout mystruct1 meta, inout standard_metadata_t stdmeta) {
      @name(".NoAction") action NoAction_0() {
      }
      @name("cIngress.foo") action foo_0(bit<16> bar) {
          {
              {
                  {
!                     hdr.ethernet.srcAddr = (bar == 16w0xf00d ? 48w0xdeadbeeff00d : hdr.ethernet.srcAddr);
                  }
              }
          }
          {
              {
!                 hdr.ethernet.srcAddr = (!(bar == 16w0xf00d ? true : false) ? 48w0x215241100ff2 : hdr.ethernet.srcAddr);
              }
          }
      }
*************** control cIngress(inout Parsed_packet hdr
*** 63,71 ****
          default_action = NoAction_0();
      }
      apply {
-         hasReturned_2 = false;
          tbl1.apply();
-         hasReturned_2 = true;
      }
  }
  control cEgress(inout Parsed_packet hdr, inout mystruct1 meta, inout standard_metadata_t stdmeta) {
--- 51,57 ----
