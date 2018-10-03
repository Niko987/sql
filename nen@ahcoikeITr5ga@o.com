[1mdiff --git a/.idea/vcs.xml b/.idea/vcs.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..94a25f7[m
[1m--- /dev/null[m
[1m+++ b/.idea/vcs.xml[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="VcsDirectoryMappings">[m
[32m+[m[32m    <mapping directory="$PROJECT_DIR$" vcs="Git" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/workspace.xml b/.idea/workspace.xml[m
[1mindex 789a0ee..832a08e 100644[m
[1m--- a/.idea/workspace.xml[m
[1m+++ b/.idea/workspace.xml[m
[36m@@ -1,7 +1,11 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <project version="4">[m
   <component name="ChangeListManager">[m
[31m-    <list default="true" id="8541e95b-c089-43c6-aaf3-2ec404940836" name="Default" comment="" />[m
[32m+[m[32m    <list default="true" id="8541e95b-c089-43c6-aaf3-2ec404940836" name="Default" comment="">[m
[32m+[m[32m      <change afterPath="$PROJECT_DIR$/.idea/vcs.xml" afterDir="false" />[m
[32m+[m[32m      <change beforePath="$PROJECT_DIR$/.idea/workspace.xml" beforeDir="false" afterPath="$PROJECT_DIR$/.idea/workspace.xml" afterDir="false" />[m
[32m+[m[32m      <change beforePath="$PROJECT_DIR$/src/main/scala/sqlformat.scala" beforeDir="false" afterPath="$PROJECT_DIR$/src/main/scala/sqlformat.scala" afterDir="false" />[m
[32m+[m[32m    </list>[m
     <ignored path="$PROJECT_DIR$/out/" />[m
     <ignored path="$PROJECT_DIR$/target/" />[m
     <ignored path="$PROJECT_DIR$/project/project/target/" />[m
[36m@@ -41,8 +45,8 @@[m
       <file leaf-file-name="sqlparse.scala" pinned="false" current-in-tab="false">[m
         <entry file="file://$PROJECT_DIR$/src/main/scala/sqlparse.scala">[m
           <provider selected="true" editor-type-id="text-editor">[m
[31m-            <state relative-caret-position="560">[m
[31m-              <caret line="28" selection-start-line="28" selection-end-line="30" selection-end-column="80" />[m
[32m+[m[32m            <state relative-caret-position="320">[m
[32m+[m[32m              <caret line="16" column="28" selection-start-line="16" selection-start-column="28" selection-end-line="16" selection-end-column="28" />[m
             </state>[m
           </provider>[m
         </entry>[m
[36m@@ -50,14 +54,17 @@[m
       <file leaf-file-name="sqlformat.scala" pinned="false" current-in-tab="true">[m
         <entry file="file://$PROJECT_DIR$/src/main/scala/sqlformat.scala">[m
           <provider selected="true" editor-type-id="text-editor">[m
[31m-            <state relative-caret-position="300">[m
[31m-              <caret line="15" column="54" lean-forward="true" selection-start-line="15" selection-start-column="54" selection-end-line="15" selection-end-column="54" />[m
[32m+[m[32m            <state relative-caret-position="420">[m
[32m+[m[32m              <caret line="21" column="2" lean-forward="true" selection-start-line="21" selection-start-column="2" selection-end-line="21" selection-end-column="2" />[m
             </state>[m
           </provider>[m
         </entry>[m
       </file>[m
     </leaf>[m
   </component>[m
[32m+[m[32m  <component name="Git.Settings">[m
[32m+[m[32m    <option name="RECENT_GIT_ROOT_PATH" value="$PROJECT_DIR$" />[m
[32m+[m[32m  </component>[m
   <component name="GradleLocalSettings">[m
     <option name="projectSyncType">[m
       <map>[m
[36m@@ -80,6 +87,7 @@[m
     <option name="width" value="1404" />[m
     <option name="height" value="1620" />[m
   </component>[m
[32m+[m[32m  <component name="ProjectLevelVcsManager" settingsEditedManually="true" />[m
   <component name="ProjectView">[m
     <navigator proportions="" version="1">[m
       <foldersAlwaysOnTop value="true" />[m
[36m@@ -265,6 +273,7 @@[m
   </component>[m
   <component name="ToolWindowManager">[m
     <frame x="-4" y="-4" width="2817" height="1628" extended-state="6" />[m
[32m+[m[32m    <editor active="true" />[m
     <layout>[m
       <window_info anchor="right" id="Palette" />[m
       <window_info anchor="bottom" id="TODO" order="6" />[m
[36m@@ -276,7 +285,7 @@[m
       <window_info anchor="bottom" id="Event Log" side_tool="true" />[m
       <window_info anchor="right" id="Maven Projects" />[m
       <window_info anchor="bottom" id="Run" order="2" weight="0.32971507" />[m
[31m-      <window_info anchor="bottom" id="Version Control" show_stripe_button="false" />[m
[32m+[m[32m      <window_info anchor="bottom" id="Version Control" />[m
       <window_info active="true" anchor="bottom" id="Terminal" visible="true" weight="0.32971507" />[m
       <window_info id="Capture Tool" />[m
       <window_info id="Designer" />[m
[36m@@ -304,10 +313,38 @@[m
     <option name="myLimit" value="2678400000" />[m
   </component>[m
   <component name="editorHistoryManager">[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/mysql1.sql">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="320">[m
[32m+[m[32m          <caret line="16" column="14" lean-forward="true" selection-start-line="16" selection-start-column="14" selection-end-line="16" selection-end-column="14" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/mysql2.sql">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="180">[m
[32m+[m[32m          <caret line="9" column="19" selection-start-line="9" selection-start-column="19" selection-end-line="9" selection-end-column="19" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/src/main/scala/sqlformat.scala">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="47">[m
[32m+[m[32m          <caret line="13" column="31" lean-forward="true" selection-start-line="13" selection-start-column="31" selection-end-line="13" selection-end-column="31" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
     <entry file="file://$PROJECT_DIR$/src/main/scala/sqlparse.scala">[m
       <provider selected="true" editor-type-id="text-editor">[m
[31m-        <state relative-caret-position="560">[m
[31m-          <caret line="28" selection-start-line="28" selection-end-line="30" selection-end-column="80" />[m
[32m+[m[32m        <state relative-caret-position="380">[m
[32m+[m[32m          <caret line="19" column="59" lean-forward="true" selection-start-line="19" selection-start-column="59" selection-end-line="19" selection-end-column="59" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/src/main/scala/sqlparse.scala">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="320">[m
[32m+[m[32m          <caret line="16" column="28" selection-start-line="16" selection-start-column="28" selection-end-line="16" selection-end-column="28" />[m
         </state>[m
       </provider>[m
     </entry>[m
[36m@@ -327,8 +364,8 @@[m
     </entry>[m
     <entry file="file://$PROJECT_DIR$/src/main/scala/sqlformat.scala">[m
       <provider selected="true" editor-type-id="text-editor">[m
[31m-        <state relative-caret-position="300">[m
[31m-          <caret line="15" column="54" lean-forward="true" selection-start-line="15" selection-start-column="54" selection-end-line="15" selection-end-column="54" />[m
[32m+[m[32m        <state relative-caret-position="420">[m
[32m+[m[32m          <caret line="21" column="2" lean-forward="true" selection-start-line="21" selection-start-column="2" selection-end-line="21" selection-end-column="2" />[m
         </state>[m
       </provider>[m
     </entry>[m
[1mdiff --git a/src/main/scala/sqlformat.scala b/src/main/scala/sqlformat.scala[m
[1mindex 383f925..4f54b70 100644[m
[1m--- a/src/main/scala/sqlformat.scala[m
[1m+++ b/src/main/scala/sqlformat.scala[m
[36m@@ -13,6 +13,13 @@[m [mobject sqlformat extends App{[m
 [m
     var attributes: String = ""[m
     val filename = "mysql2.sql"[m
[32m+[m[32m  val inStr = "select a,b,sum(c) sumx from tableA where viewdate = '2018-10-01' group by a,b order by sumx desc "[m
[32m+[m[32m  val cleanedup = inStr.replace("select","select\n")[m
[32m+[m[32m    .replace("from", "\nfrom\n")[m
[32m+[m[32m    .replace("where","\nwhere\n")[m
[32m+[m[32m    .replace("group by","\ngroup by\n")[m
[32m+[m[32m    .replace("order by","\norder by\n")[m
[32m+[m
     for (line <- Source.fromFile(filename).getLines) {[m
       var lowercaseLine = line.toLowerCase[m
       lowercaseLine match {[m
