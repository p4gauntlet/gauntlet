*** dumps/p4_16_samples/issue1566.p4/pruned/issue1566-BMV2::SimpleSwitchMidEnd_24_ConstantFolding.p4	2019-05-20 16:58:49.871246000 +0200
--- dumps/p4_16_samples/issue1566.p4/pruned/issue1566-BMV2::SimpleSwitchMidEnd_25_LocalCopyPropagation.p4	2019-05-20 16:58:49.874013800 +0200
*************** parser parserI(packet_in pkt, out Parsed
*** 20,39 ****
      }
  }
  control cIngress(inout Parsed_packet hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
-     bit<16> x;
      @name("cIngress.E.c1.stats") counter(32w65536, CounterType.packets) E_c1_stats_1;
      @name("cIngress.E.c1.stats") counter(32w65536, CounterType.packets) E_c1_stats_2;
      apply {
          hdr.ethernet.etherType = hdr.ethernet.etherType << 1;
!         x = hdr.ethernet.etherType;
!         x = x + 16w1;
!         E_c1_stats_1.count((bit<32>)x);
!         hdr.ethernet.etherType = x;
          hdr.ethernet.etherType = hdr.ethernet.etherType << 3;
!         x = hdr.ethernet.etherType;
!         x = x + 16w1;
!         E_c1_stats_1.count((bit<32>)x);
!         hdr.ethernet.etherType = x;
      }
  }
  control cEgress(inout Parsed_packet hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
--- 20,34 ----
      }
  }
  control cIngress(inout Parsed_packet hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
      @name("cIngress.E.c1.stats") counter(32w65536, CounterType.packets) E_c1_stats_1;
      @name("cIngress.E.c1.stats") counter(32w65536, CounterType.packets) E_c1_stats_2;
      apply {
          hdr.ethernet.etherType = hdr.ethernet.etherType << 1;
!         E_c1_stats_1.count((bit<32>)(hdr.ethernet.etherType + 16w1));
!         hdr.ethernet.etherType = hdr.ethernet.etherType + 16w1;
          hdr.ethernet.etherType = hdr.ethernet.etherType << 3;
!         E_c1_stats_1.count((bit<32>)(hdr.ethernet.etherType + 16w1));
!         hdr.ethernet.etherType = hdr.ethernet.etherType + 16w1;
      }
  }
  control cEgress(inout Parsed_packet hdr, inout metadata_t meta, inout standard_metadata_t stdmeta) {
