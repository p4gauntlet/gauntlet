--- before_pass
+++ after_pass
@@ -10,10 +10,7 @@ control ctrl(out bit<32> c) {
     }
     apply {
         c = 32w2;
-        if (32w0 == 32w0) 
-            t.apply();
-        else 
-            t.apply();
+        t.apply();
         c = 32w5;
     }
 }
