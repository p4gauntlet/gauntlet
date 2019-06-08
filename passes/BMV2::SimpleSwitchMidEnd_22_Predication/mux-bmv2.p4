--- before_pass
+++ after_pass
@@ -23,10 +23,18 @@ control Eg(inout Headers hdrs, inout Met
         p_1 = true;
         val = res;
         _sub = val[31:0];
-        if (p_1) 
-            tmp_0 = _sub;
-        else 
-            tmp_0 = 32w1;
+        {
+            bool cond;
+            {
+                bool pred;
+                cond = p_1;
+                pred = cond;
+                tmp_0 = (pred ? _sub : tmp_0);
+                cond = !cond;
+                pred = cond;
+                tmp_0 = (pred ? 32w1 : tmp_0);
+            }
+        }
         _sub = tmp_0;
         val[31:0] = _sub;
         res = val;
