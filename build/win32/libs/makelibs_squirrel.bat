@ECHO OFF
cd ..\obj.squirrel

echo Compiling Squirrel
%LIBAROMA_GPP% -c ^
  -save-temps ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror ^
 ^
  ../../../libs/squirrel/squirrel/*.cpp ^
  ../../../libs/squirrel/sqstdlib/*.cpp ^
 ^
  -I../../../libs/squirrel/include ^
  -I../../../libs/squirrel/squirrel ^
  -I../../../libs/squirrel/sqstdlib

cd ..\libs

if "%1"=="-f" GOTO DONE
pause
:DONE