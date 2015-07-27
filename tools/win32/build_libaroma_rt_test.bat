@ECHO OFF
cd libaroma

echo Compiling Runtime Test
%LIBAROMA_GCC% ^
  -static ^
  ^
  %LIBAROMA_DEBUG_CFLAGS% ^
  ^
    ../obj/*.o ^
    ./*.o ^
    ../libaroma_rt/*.o ^
    ../obj.squirrel/*.o ^
  ^
    ../../../examples/rt_test/*.c ^
  ^
  -I../../../include ^
  -I../../../src ^
  -I../../../libs/squirrel/include ^
  -I../../../examples/rt_test %LIBAROMA_CINCLUDES% ^
  -o ../bin/libaroma_test ^
  ^
  -lm -lpthread -lstdc++ -lrt

cd ..
if "%1"=="-f" GOTO DONE
pause
:DONE