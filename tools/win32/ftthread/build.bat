@ECHO OFF
echo ftthread
%LIBAROMA_GCC% -static -ggdb ^
    ../obj/*.o ^
    *.c ^
  ^
  -I../../../libs/freetype/builds ^
  -I../../../libs/freetype/include ^
  -o ./ftthread ^
  ^
  -lm -lpthread -lstdc++ -lrt

if "%1"=="-f" GOTO DONE
pause
:DONE