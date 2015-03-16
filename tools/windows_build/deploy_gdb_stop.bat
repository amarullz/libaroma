@ECHO OFF
cd bin
%LIBAROMA_ADB% shell su -c killall gdbserver
