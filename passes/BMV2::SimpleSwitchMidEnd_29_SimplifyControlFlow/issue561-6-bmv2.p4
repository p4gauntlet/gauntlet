*** dumps/p4_16_samples/issue561-6-bmv2.p4/pruned/issue561-6-bmv2-BMV2::SimpleSwitchMidEnd_28_ValidateTableProperties.p4	2019-05-20 16:59:20.836856000 +0200
--- dumps/p4_16_samples/issue561-6-bmv2.p4/pruned/issue561-6-bmv2-BMV2::SimpleSwitchMidEnd_29_SimplifyControlFlow.p4	2019-05-20 16:59:20.897787300 +0200
*************** control egress(inout headers hdr, inout
*** 85,95 ****
  }
  control DeparserImpl(packet_out packet, in headers hdr) {
      apply {
!         {
!             packet.emit<S>(hdr.base);
!             packet.emit<U>(hdr.u[0]);
!             packet.emit<U>(hdr.u[1]);
!         }
      }
  }
  control verifyChecksum(inout headers hdr, inout metadata meta) {
--- 85,93 ----
  }
  control DeparserImpl(packet_out packet, in headers hdr) {
      apply {
!         packet.emit<S>(hdr.base);
!         packet.emit<U>(hdr.u[0]);
!         packet.emit<U>(hdr.u[1]);
      }
  }
  control verifyChecksum(inout headers hdr, inout metadata meta) {
