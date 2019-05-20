*** dumps/p4_16_samples/psa-example-counters-bmv2.p4/pruned/psa-example-counters-bmv2-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 17:00:05.551791000 +0200
--- dumps/p4_16_samples/psa-example-counters-bmv2.p4/pruned/psa-example-counters-bmv2-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 17:00:05.555003800 +0200
*************** parser EgressParserImpl(packet_in buffer
*** 100,134 ****
      }
  }
  control ingress(inout headers hdr, inout metadata user_meta, in psa_ingress_input_metadata_t istd, inout psa_ingress_output_metadata_t ostd) {
-     psa_ingress_output_metadata_t meta_0;
-     PortId_t egress_port_0;
-     psa_ingress_output_metadata_t meta_1;
      @name("ingress.port_bytes_in") Counter<ByteCounter_t, PortId_t>(32w512, 32w1) port_bytes_in;
      @name("ingress.per_prefix_pkt_byte_count") DirectCounter<PacketByteCounter_t>(32w2) per_prefix_pkt_byte_count;
      @name("ingress.next_hop") action next_hop_0(PortId_t oport) {
          per_prefix_pkt_byte_count.count();
          {
              {
-                 meta_0.class_of_service = ostd.class_of_service;
-                 meta_0.clone = ostd.clone;
-                 meta_0.clone_session_id = ostd.clone_session_id;
-                 meta_0.drop = ostd.drop;
-                 meta_0.resubmit = ostd.resubmit;
-                 meta_0.multicast_group = ostd.multicast_group;
-                 meta_0.egress_port = ostd.egress_port;
              }
-             egress_port_0 = oport;
-             meta_0.drop = false;
-             meta_0.multicast_group = 10w0;
-             meta_0.egress_port = egress_port_0;
              {
!                 ostd.class_of_service = meta_0.class_of_service;
!                 ostd.clone = meta_0.clone;
!                 ostd.clone_session_id = meta_0.clone_session_id;
!                 ostd.drop = meta_0.drop;
!                 ostd.resubmit = meta_0.resubmit;
!                 ostd.multicast_group = meta_0.multicast_group;
!                 ostd.egress_port = meta_0.egress_port;
              }
          }
      }
--- 100,116 ----
      }
  }
  control ingress(inout headers hdr, inout metadata user_meta, in psa_ingress_input_metadata_t istd, inout psa_ingress_output_metadata_t ostd) {
      @name("ingress.port_bytes_in") Counter<ByteCounter_t, PortId_t>(32w512, 32w1) port_bytes_in;
      @name("ingress.per_prefix_pkt_byte_count") DirectCounter<PacketByteCounter_t>(32w2) per_prefix_pkt_byte_count;
      @name("ingress.next_hop") action next_hop_0(PortId_t oport) {
          per_prefix_pkt_byte_count.count();
          {
              {
              }
              {
!                 ostd.drop = false;
!                 ostd.multicast_group = 10w0;
!                 ostd.egress_port = oport;
              }
          }
      }
*************** control ingress(inout headers hdr, inout
*** 136,158 ****
          per_prefix_pkt_byte_count.count();
          {
              {
-                 meta_1.class_of_service = ostd.class_of_service;
-                 meta_1.clone = ostd.clone;
-                 meta_1.clone_session_id = ostd.clone_session_id;
-                 meta_1.drop = ostd.drop;
-                 meta_1.resubmit = ostd.resubmit;
-                 meta_1.multicast_group = ostd.multicast_group;
-                 meta_1.egress_port = ostd.egress_port;
              }
-             meta_1.drop = true;
              {
!                 ostd.class_of_service = meta_1.class_of_service;
!                 ostd.clone = meta_1.clone;
!                 ostd.clone_session_id = meta_1.clone_session_id;
!                 ostd.drop = meta_1.drop;
!                 ostd.resubmit = meta_1.resubmit;
!                 ostd.multicast_group = meta_1.multicast_group;
!                 ostd.egress_port = meta_1.egress_port;
              }
          }
      }
--- 118,126 ----
          per_prefix_pkt_byte_count.count();
          {
              {
              }
              {
!                 ostd.drop = true;
              }
          }
      }
