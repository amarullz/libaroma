@ECHO OFF
%LIBAROMA_ADB% forward tcp:5555 tcp:5555
%LIBAROMA_ADB% shell su -c mount -o rw,remount /
%LIBAROMA_ADB% shell su -c mkdir /tmp
%LIBAROMA_ADB% push libaroma_test /sdcard/
%LIBAROMA_ADB% shell su -c cp /sdcard/libaroma_test /tmp/
%LIBAROMA_ADB% shell su -c chmod 755 /tmp/libaroma_test
%LIBAROMA_ADB% shell su -c killall gdbserver
start %LIBAROMA_ADB% shell su -c "gdbserver :5555 /tmp/libaroma_test;sleep 2"
%LIBAROMA_ADB% shell su -c killall -19 system_server
%LIBAROMA_ADB% shell su -c killall -19 surfaceflinger
%LIBAROMA_ADB% shell su -c sleep 1
sleep 1
%LIBAROMA_GDB% -ex="target remote :5555" -ex="continue" -ex="quit" ./libaroma_test
%LIBAROMA_ADB% shell su -c sleep 1
%LIBAROMA_ADB% shell su -c killall -18 surfaceflinger
%LIBAROMA_ADB% shell su -c killall -18 system_server
pause
