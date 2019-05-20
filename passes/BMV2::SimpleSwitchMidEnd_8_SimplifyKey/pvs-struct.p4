*** dumps/p4_16_samples/pvs-struct.p4/pruned/pvs-struct-BMV2::SimpleSwitchMidEnd_7_TypeChecking.p4	2019-05-20 17:00:18.516495800 +0200
--- dumps/p4_16_samples/pvs-struct.p4/pruned/pvs-struct-BMV2::SimpleSwitchMidEnd_8_SimplifyKey.p4	2019-05-20 17:00:18.520885100 +0200
*************** control MyIngress(inout my_packet p, ino
*** 35,52 ****
      }
      @name("MyIngress.set_data") action set_data_0() {
      }
      @name("MyIngress.t") table t {
          actions = {
              set_data_0();
              @defaultonly NoAction_0();
          }
          key = {
!             meta.data[0].da: exact @name("meta.data[0].da") ;
          }
          default_action = NoAction_0();
      }
      apply {
!         t.apply();
      }
  }
  control MyEgress(inout my_packet p, inout my_metadata m, inout standard_metadata_t s) {
--- 35,56 ----
      }
      @name("MyIngress.set_data") action set_data_0() {
      }
+     bit<32> key_0;
      @name("MyIngress.t") table t {
          actions = {
              set_data_0();
              @defaultonly NoAction_0();
          }
          key = {
!             key_0: exact @name("meta.data[0].da") ;
          }
          default_action = NoAction_0();
      }
      apply {
!         {
!             key_0 = meta.data[0].da;
!             t.apply();
!         }
      }
  }
  control MyEgress(inout my_packet p, inout my_metadata m, inout standard_metadata_t s) {
