--- before_pass
+++ after_pass
@@ -31,11 +31,11 @@ control MyVerifyChecksum(inout my_packet
     }
 }
 control MyIngress(inout my_packet p, inout my_metadata meta, inout standard_metadata_t s) {
+    bit<32> key_0;
     @name(".NoAction") action NoAction_0() {
     }
     @name("MyIngress.set_data") action set_data_0() {
     }
-    bit<32> key_0;
     @name("MyIngress.t") table t {
         actions = {
             set_data_0();
