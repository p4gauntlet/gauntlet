*** dumps/p4_16_samples/issue1814-bmv2.p4/pruned/issue1814-bmv2-BMV2::SimpleSwitchMidEnd_2_EliminateSerEnums.p4	2019-05-20 16:58:58.372580800 +0200
--- dumps/p4_16_samples/issue1814-bmv2.p4/pruned/issue1814-bmv2-BMV2::SimpleSwitchMidEnd_3_RemoveActionParameters.p4	2019-05-20 16:58:58.400339500 +0200
*************** parser ParserImpl(packet_in packet, out
*** 11,19 ****
      }
  }
  control IngressImpl(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
      @name(".NoAction") action NoAction_0() {
      }
-     bit<1> registerData;
      @name("IngressImpl.testRegister") register<bit<1>>(32w1) testRegister;
      @name("IngressImpl.debug_table") table debug_table {
          key = {
--- 11,19 ----
      }
  }
  control IngressImpl(inout headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata) {
+     bit<1> registerData;
      @name(".NoAction") action NoAction_0() {
      }
      @name("IngressImpl.testRegister") register<bit<1>>(32w1) testRegister;
      @name("IngressImpl.debug_table") table debug_table {
          key = {
