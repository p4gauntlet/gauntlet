--- before_pass
+++ after_pass
@@ -71,9 +71,10 @@ parser TopParser(packet_in b, out Parsed
     }
 }
 control TopPipe(inout Parsed_packet headers, in error parseError, in InControl inCtrl, out OutControl outCtrl) {
+    IPv4Address nextHop;
+    bool hasReturned_0;
     @name(".NoAction") action NoAction_0() {
     }
-    IPv4Address nextHop;
     @name("TopPipe.Drop_action") action Drop_action_0() {
         outCtrl.outputPort = 4w0xf;
     }
@@ -144,7 +145,7 @@ control TopPipe(inout Parsed_packet head
         default_action = Drop_action_5();
     }
     apply {
-        bool hasReturned_0 = false;
+        hasReturned_0 = false;
         if (parseError != error.NoError) {
             Drop_action_6();
             hasReturned_0 = true;
