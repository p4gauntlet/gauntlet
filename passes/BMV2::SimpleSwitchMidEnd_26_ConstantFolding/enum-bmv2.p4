--- before_pass
+++ after_pass
@@ -35,10 +35,7 @@ control deparser(packet_out b, in Header
 }
 control ingress(inout Headers h, inout Meta m, inout standard_metadata_t sm) {
     apply {
-        if (32w0 == 32w1) 
-            h.h.c = h.h.a;
-        else 
-            h.h.c = h.h.b;
+        h.h.c = h.h.b;
         sm.egress_spec = 9w0;
     }
 }
