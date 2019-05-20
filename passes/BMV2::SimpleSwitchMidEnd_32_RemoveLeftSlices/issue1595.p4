*** dumps/p4_16_samples/issue1595.p4/pruned/issue1595-BMV2::SimpleSwitchMidEnd_31_TableHit.p4	2019-05-20 16:58:50.686469500 +0200
--- dumps/p4_16_samples/issue1595.p4/pruned/issue1595-BMV2::SimpleSwitchMidEnd_32_RemoveLeftSlices.p4	2019-05-20 16:58:50.689871400 +0200
*************** control cIngress(inout Parsed_packet hdr
*** 31,43 ****
          hdr.ethernet.srcAddr = 48w1;
      }
      @name("cIngress.a2") action a2_0() {
!         hdr.ethernet.srcAddr[47:40] = 8w2;
      }
      @name("cIngress.a3") action a3_0() {
!         hdr.ethernet.srcAddr[47:40] = 8w3;
      }
      @name("cIngress.a4") action a4_0() {
!         hdr.ethernet.srcAddr[47:40] = 8w4;
      }
      @name("cIngress.t1") table t1 {
          key = {
--- 31,43 ----
          hdr.ethernet.srcAddr = 48w1;
      }
      @name("cIngress.a2") action a2_0() {
!         hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff0000000000 | (bit<48>)8w2 << 40 & 48w0xff0000000000;
      }
      @name("cIngress.a3") action a3_0() {
!         hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff0000000000 | (bit<48>)8w3 << 40 & 48w0xff0000000000;
      }
      @name("cIngress.a4") action a4_0() {
!         hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff0000000000 | (bit<48>)8w4 << 40 & 48w0xff0000000000;
      }
      @name("cIngress.t1") table t1 {
          key = {
*************** control cIngress(inout Parsed_packet hdr
*** 57,72 ****
              a1_0: {
              }
              a2_0: {
!                 hdr.ethernet.srcAddr[39:32] = 8w2;
              }
              a3_0: {
!                 hdr.ethernet.srcAddr[39:32] = 8w3;
              }
              a4_0: {
!                 hdr.ethernet.srcAddr[39:32] = 8w4;
              }
              NoAction_0: {
!                 hdr.ethernet.srcAddr[39:32] = 8w5;
              }
          }
      }
--- 57,72 ----
              a1_0: {
              }
              a2_0: {
!                 hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff00000000 | (bit<48>)8w2 << 32 & 48w0xff00000000;
              }
              a3_0: {
!                 hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff00000000 | (bit<48>)8w3 << 32 & 48w0xff00000000;
              }
              a4_0: {
!                 hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff00000000 | (bit<48>)8w4 << 32 & 48w0xff00000000;
              }
              NoAction_0: {
!                 hdr.ethernet.srcAddr = hdr.ethernet.srcAddr & ~48w0xff00000000 | (bit<48>)8w5 << 32 & 48w0xff00000000;
              }
          }
      }
