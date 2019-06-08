--- before_pass
+++ after_pass
@@ -12,25 +12,28 @@ struct S {
 }
 extern void f<D>(in D data);
 control c(inout bit<1> r) {
-    S s_0;
+    T s_0_f1_field;
+    T s_0_f1_field_0;
+    T s_0_f2;
+    bit<1> s_0_z;
     bit<1> tmp;
     apply {
         {
             {
                 {
-                    s_0.f1.field.f = 1w0;
+                    s_0_f1_field.f = 1w0;
                 }
                 {
-                    s_0.f1.field_0.f = 1w1;
+                    s_0_f1_field_0.f = 1w1;
                 }
             }
             {
-                s_0.f2.f = 1w0;
+                s_0_f2.f = 1w0;
             }
-            s_0.z = 1w1;
+            s_0_z = 1w1;
         }
-        f<tuple_0>(s_0.f1);
-        tmp = s_0.f2.f & s_0.z;
+        f<tuple_0>({ s_0_f1_field, s_0_f1_field_0 });
+        tmp = s_0_f2.f & s_0_z;
         r = tmp;
     }
 }
