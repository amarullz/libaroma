@ECHO OFF
mkdir libaroma_rt
cd libaroma_rt
del /F /Q *

echo Compiling Libaroma Runtime
%LIBAROMA_GCC% -c ^
  -save-temps ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Wall -Wextra -Wshadow -Werror -Wno-unused-parameter ^
 ^
  %LIBAROMA_CFLAGS% ^
 ^
  ../../../src/aromart/*.c ^
 ^
  -I../../../include ^
  -I../../../src ^
  -I../../../libs/zlib ^
  -I../../../libs/freetype/builds ^
  -I../../../libs/freetype/include ^
  -I../../../libs/minzip ^
  -I../../../libs/png ^
  -I../../../libs/jpeg ^
  -I../../../libs/harfbuzz-ng/src ^
  -I../../../libs/harfbuzz-ng/src/hb-ucdn %LIBAROMA_CINCLUDES%

cd ..

if "%1"=="-f" GOTO DONE
pause
:DONE