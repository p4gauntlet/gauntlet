--- before_pass
+++ after_pass
@@ -10,9 +10,7 @@ struct Metadata {
 }
 control DeparserI(packet_out packet, in Parsed_packet hdr) {
     apply {
-        {
-            packet.emit<H>(hdr.h);
-        }
+        packet.emit<H>(hdr.h);
     }
 }
 parser parserI(packet_in pkt, out Parsed_packet hdr, inout Metadata meta, inout standard_metadata_t stdmeta) {
