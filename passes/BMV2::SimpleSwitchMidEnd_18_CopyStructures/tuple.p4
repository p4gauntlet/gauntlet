--- before_pass
+++ after_pass
@@ -11,7 +11,10 @@ struct tuple_0 {
 control c() {
     tuple_0 x;
     apply {
-        x = { 32w10, false };
+        {
+            x.field = 32w10;
+            x.field_0 = false;
+        }
     }
 }
 top(c()) main;
