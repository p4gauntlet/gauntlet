--- before_pass
+++ after_pass
@@ -25,8 +25,6 @@ control egress(inout Headers h, inout Me
 }
 control deparser(packet_out b, in Headers h) {
     apply {
-        {
-        }
     }
 }
 extern ExternCounter {
