@ECHO OFF
"C:\Program Files (x86)\Bitvise SSH Client\sftpc.exe" root@192.168.154.143 -pw="rahasia" -cmd="put -o bin\libaroma_test /root/libaroma_test;quit"
pause