--- before_pass
+++ after_pass
@@ -1,7 +1,7 @@
 #include <core.p4>
 typedef bit<9> PortIdUInt_t;
-type bit<9> PortId_t;
-type bit<32> PortIdInHeader_t;
+typedef bit<9> PortId_t;
+typedef bit<32> PortIdInHeader_t;
 match_kind {
     range,
     selector
@@ -174,22 +174,22 @@ control FabricIngress(inout parsed_heade
     }
     apply {
         if (hdr.packet_out.isValid()) {
-            standard_metadata.egress_spec = (PortId_t)(PortIdUInt_t)(bit<32>)hdr.packet_out.egress_port;
+            standard_metadata.egress_spec = (PortIdUInt_t)(bit<32>)hdr.packet_out.egress_port;
             hdr.packet_out.setInvalid();
             exit;
         }
         filtering_t_0.apply();
         forwarding_t_0.apply();
-        standard_metadata.egress_spec = (PortId_t)((PortIdUInt_t)standard_metadata.egress_spec + 9w1);
-        forwarding_mask_0 = (PortId_t)9w0xf;
-        standard_metadata.egress_spec = (PortId_t)((PortIdUInt_t)standard_metadata.egress_spec & (PortIdUInt_t)forwarding_mask_0);
+        standard_metadata.egress_spec = (PortIdUInt_t)standard_metadata.egress_spec + 9w1;
+        forwarding_mask_0 = 9w0xf;
+        standard_metadata.egress_spec = (PortIdUInt_t)standard_metadata.egress_spec & (PortIdUInt_t)forwarding_mask_0;
     }
 }
 control FabricEgress(inout parsed_headers_t hdr, inout fabric_metadata_t fabric_metadata, inout standard_metadata_t standard_metadata) {
     apply {
-        if (standard_metadata.egress_port == (PortId_t)9w192) {
+        if (standard_metadata.egress_port == 9w192) {
             hdr.packet_in.setValid();
-            hdr.packet_in.ingress_port = (PortIdInHeader_t)(bit<32>)(PortIdUInt_t)standard_metadata.ingress_port;
+            hdr.packet_in.ingress_port = (bit<32>)(PortIdUInt_t)standard_metadata.ingress_port;
         }
     }
 }
