@ECHO OFF
mkdir ..\obj.squirrel
cd ..\obj.squirrel

echo Compiling Squirrel
%LIBAROMA_GPP% -c ^
  -save-temps ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror ^
 ^
  ../../../libs/squirrel/squirrel/sqapi.cpp ^
  ../../../libs/squirrel/squirrel/sqbaselib.cpp ^
  ../../../libs/squirrel/squirrel/sqclass.cpp ^
  ../../../libs/squirrel/squirrel/sqcompiler.cpp ^
  ../../../libs/squirrel/squirrel/sqdebug.cpp ^
  ../../../libs/squirrel/squirrel/sqfuncstate.cpp ^
  ../../../libs/squirrel/squirrel/sqlexer.cpp ^
  ../../../libs/squirrel/squirrel/sqmem.cpp ^
  ../../../libs/squirrel/squirrel/sqobject.cpp ^
  ../../../libs/squirrel/squirrel/sqstate.cpp ^
  ../../../libs/squirrel/squirrel/sqtable.cpp ^
  ../../../libs/squirrel/squirrel/sqvm.cpp ^
 ^
  ../../../libs/squirrel/sqstdlib/sqstdaux.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdblob.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdio.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdmath.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdrex.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdstream.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdstring.cpp ^
  ../../../libs/squirrel/sqstdlib/sqstdsystem.cpp ^
 ^
  -I../../../libs/squirrel/include ^
  -I../../../libs/squirrel/squirrel ^
  -I../../../libs/squirrel/sqstdlib %LIBAROMA_CINCLUDES%

cd ..\libs

if "%1"=="-f" GOTO DONE
pause
:DONE