--- before_pass
+++ after_pass
@@ -29,12 +29,27 @@ control cIngress(inout Parsed_packet hdr
     @name("cIngress.foo") action foo_0() {
         hasReturned_0 = false;
         meta.b = meta.b + 4w5;
-        if (meta.b > 4w10) {
-            meta.b = meta.b ^ 4w5;
-            hasReturned_0 = true;
+        {
+            bool cond;
+            {
+                bool pred;
+                cond = meta.b > 4w10;
+                pred = cond;
+                {
+                    meta.b = (pred ? meta.b ^ 4w5 : meta.b);
+                    hasReturned_0 = (pred ? true : hasReturned_0);
+                }
+            }
+        }
+        {
+            bool cond_0;
+            {
+                bool pred_0;
+                cond_0 = !hasReturned_0;
+                pred_0 = cond_0;
+                meta.b = (pred_0 ? meta.b + 4w5 : meta.b);
+            }
         }
-        if (!hasReturned_0) 
-            meta.b = meta.b + 4w5;
     }
     @name("cIngress.guh") table guh {
         key = {
