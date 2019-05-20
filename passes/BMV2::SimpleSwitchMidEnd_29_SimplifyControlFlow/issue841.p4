*** dumps/p4_16_samples/issue841.p4/pruned/issue841-BMV2::SimpleSwitchMidEnd_28_ValidateTableProperties.p4	2019-05-20 16:59:29.934402800 +0200
--- dumps/p4_16_samples/issue841.p4/pruned/issue841-BMV2::SimpleSwitchMidEnd_29_SimplifyControlFlow.p4	2019-05-20 16:59:29.996821200 +0200
*************** control MyComputeChecksum(inout headers
*** 38,48 ****
      @name("MyComputeChecksum.checksum") Checksum16() checksum;
      apply {
          h_1.setValid();
!         {
!             h_1.src = hdr.h.src;
!             h_1.dst = hdr.h.dst;
!             h_1.csum = 16w0;
!         }
          tmp_0 = checksum.get<h_t>(h_1);
          hdr.h.csum = tmp_0;
      }
--- 38,46 ----
      @name("MyComputeChecksum.checksum") Checksum16() checksum;
      apply {
          h_1.setValid();
!         h_1.src = hdr.h.src;
!         h_1.dst = hdr.h.dst;
!         h_1.csum = 16w0;
          tmp_0 = checksum.get<h_t>(h_1);
          hdr.h.csum = tmp_0;
      }
