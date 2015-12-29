@ECHO OFF
%LIBAROMA_ADB% shell su -c mount -o rw,remount /
%LIBAROMA_ADB% shell su -c mkdir /tmp
%LIBAROMA_ADB% push libaroma_test /sdcard/
%LIBAROMA_ADB% shell su -c cp /sdcard/libaroma_test /tmp/
%LIBAROMA_ADB% shell su -c chmod 755 /tmp/libaroma_test
%LIBAROMA_ADB% shell su -c killall -19 system_server
%LIBAROMA_ADB% shell su -c killall -19 surfaceflinger
%LIBAROMA_ADB% shell su -c sleep 1
%LIBAROMA_ADB% shell su -c /tmp/libaroma_test
%LIBAROMA_ADB% shell su -c sleep 1
%LIBAROMA_ADB% shell su -c killall -18 surfaceflinger
%LIBAROMA_ADB% shell su -c killall -18 system_server
pause
