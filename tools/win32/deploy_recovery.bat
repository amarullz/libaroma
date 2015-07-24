@ECHO OFF
cd bin
%LIBAROMA_ADB% push libaroma_test /tmp
%LIBAROMA_ADB% shell chmod 755 /tmp/libaroma_test
%LIBAROMA_ADB% shell killall -19 recovery
%LIBAROMA_ADB% shell /tmp/libaroma_test
%LIBAROMA_ADB% shell killall -18 recovery
pause
