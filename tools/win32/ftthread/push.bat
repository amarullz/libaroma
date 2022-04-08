@ECHO OFF
%LIBAROMA_ADB% shell su -c mount -o rw,remount /
%LIBAROMA_ADB% shell su -c mkdir /tmp
%LIBAROMA_ADB% push ftthread /sdcard/
%LIBAROMA_ADB% shell su -c cp /sdcard/ftthread /tmp/
%LIBAROMA_ADB% shell su -c chmod 755 /tmp/ftthread
%LIBAROMA_ADB% shell su -c sh
pause
