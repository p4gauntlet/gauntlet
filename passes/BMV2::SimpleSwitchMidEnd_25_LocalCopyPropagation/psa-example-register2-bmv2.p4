--- before_pass
+++ after_pass
@@ -49,12 +49,10 @@ control ingress(inout headers hdr, inout
     PacketByteCountState_t tmp_1;
     bit<80> tmp_2;
     PacketByteCountState_t s;
-    bit<16> ip_length_bytes;
     @name(".update_pkt_ip_byte_count") action update_pkt_ip_byte_count() {
         s = tmp_1;
-        ip_length_bytes = hdr.ipv4.totalLen;
-        s[79:48] = s[79:48] + 32w1;
-        s[47:0] = s[47:0] + (bit<48>)ip_length_bytes;
+        s[79:48] = tmp_1[79:48] + 32w1;
+        s[47:0] = s[47:0] + (bit<48>)hdr.ipv4.totalLen;
         tmp_1 = s;
     }
     @name("ingress.port_pkt_ip_bytes_in") Register<PacketByteCountState_t, PortId_t>(32w512) port_pkt_ip_bytes_in;
