--- before_pass
+++ after_pass
@@ -50,10 +50,8 @@ control ingress(inout Headers h, inout M
         default_action = NoAction_0();
     }
     apply {
-        {
-            key_0 = h.h.a + 32w1;
-            c_t_0.apply();
-        }
+        key_0 = h.h.a + 32w1;
+        c_t_0.apply();
         sm.egress_spec = 9w0;
     }
 }
