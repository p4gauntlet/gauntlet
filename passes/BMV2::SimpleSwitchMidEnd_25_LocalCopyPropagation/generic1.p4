--- before_pass
+++ after_pass
@@ -5,15 +5,12 @@ extern Generic<T> {
 }
 extern void f<T>(in T arg);
 control caller() {
-    bit<5> cinst_b_0;
-    bit<32> cinst_tmp_1;
     bit<5> cinst_tmp_2;
     @name("caller.cinst.x") Generic<bit<8>>(8w9) cinst_x_0;
     apply {
-        cinst_tmp_1 = cinst_x_0.get<bit<32>>();
+        cinst_x_0.get<bit<32>>();
         cinst_tmp_2 = cinst_x_0.get1<bit<5>, bit<10>>(10w0, 5w0);
-        cinst_b_0 = cinst_tmp_2;
-        f<bit<5>>(cinst_b_0);
+        f<bit<5>>(cinst_tmp_2);
     }
 }
 control s();
