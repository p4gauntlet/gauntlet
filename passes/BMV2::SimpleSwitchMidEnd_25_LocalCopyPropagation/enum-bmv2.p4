--- before_pass
+++ after_pass
@@ -34,10 +34,8 @@ control deparser(packet_out b, in Header
     }
 }
 control ingress(inout Headers h, inout Meta m, inout standard_metadata_t sm) {
-    bit<32> c_c_0;
     apply {
-        c_c_0 = 32w0;
-        if (c_c_0 == 32w1) 
+        if (32w0 == 32w1) 
             h.h.c = h.h.a;
         else 
             h.h.c = h.h.b;
