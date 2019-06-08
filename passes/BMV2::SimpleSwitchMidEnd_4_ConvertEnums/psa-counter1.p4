--- before_pass
+++ after_pass
@@ -24,7 +24,7 @@ parser MyEP(packet_in buffer, out EMPTY
 control MyIC(inout ethernet_t a, inout EMPTY b, in psa_ingress_input_metadata_t c, inout psa_ingress_output_metadata_t d) {
     @name(".NoAction") action NoAction_0() {
     }
-    @name("MyIC.counter") Counter<bit<10>, bit<12>>(32w1024, PSA_CounterType_t.PACKETS) counter;
+    @name("MyIC.counter") Counter<bit<10>, bit<12>>(32w1024, 32w0) counter;
     @name("MyIC.execute") action execute_0() {
         counter.count(12w1024);
     }
