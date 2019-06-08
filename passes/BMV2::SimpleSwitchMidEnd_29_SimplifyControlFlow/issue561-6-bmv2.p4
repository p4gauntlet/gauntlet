--- before_pass
+++ after_pass
@@ -85,11 +85,9 @@ control egress(inout headers hdr, inout
 }
 control DeparserImpl(packet_out packet, in headers hdr) {
     apply {
-        {
-            packet.emit<S>(hdr.base);
-            packet.emit<U>(hdr.u[0]);
-            packet.emit<U>(hdr.u[1]);
-        }
+        packet.emit<S>(hdr.base);
+        packet.emit<U>(hdr.u[0]);
+        packet.emit<U>(hdr.u[1]);
     }
 }
 control verifyChecksum(inout headers hdr, inout metadata meta) {
