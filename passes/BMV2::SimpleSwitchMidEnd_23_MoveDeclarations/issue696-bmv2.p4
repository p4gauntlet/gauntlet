--- before_pass
+++ after_pass
@@ -55,15 +55,17 @@ control Eg(inout Headers hdrs, inout Met
     bit<32> inc;
     bit<32> tmp_1;
     bit<32> tmp_2;
+    bool cond;
+    bool pred;
+    bool cond_0;
+    bool pred_0;
     @name("Eg.test") action test_0() {
         {
             val.field1 = 32w0;
         }
         _pred = val.field1 != 32w0;
         {
-            bool cond;
             {
-                bool pred;
                 cond = _pred;
                 pred = cond;
                 tmp_1 = (pred ? 32w1 : tmp_1);
@@ -74,9 +76,7 @@ control Eg(inout Headers hdrs, inout Met
         }
         inc = tmp_1;
         {
-            bool cond_0;
             {
-                bool pred_0;
                 cond_0 = _pred;
                 pred_0 = cond_0;
                 tmp_2 = (pred_0 ? 32w1 : tmp_2);
