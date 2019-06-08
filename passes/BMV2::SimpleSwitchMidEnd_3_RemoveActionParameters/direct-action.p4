--- before_pass
+++ after_pass
@@ -1,11 +1,13 @@
 control c(inout bit<16> y) {
     bit<32> x;
-    @name("c.a") action a_0(in bit<32> arg) {
+    bit<32> arg;
+    @name("c.a") action a_0() {
+        arg = x;
         y = (bit<16>)arg;
     }
     apply {
         x = 32w2;
-        a_0(x);
+        a_0();
     }
 }
 control proto(inout bit<16> y);
