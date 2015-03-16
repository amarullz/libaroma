@ECHO OFF
cd obj
del /F /Q aroma.*
del /F /Q fb_driver.*
del /F /Q hid_driver.*

echo Compiling Libaroma
%LIBAROMA_GCC% -c ^
  -save-temps ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Wall -Wextra -Wshadow -Werror -Wno-unused-parameter ^
 ^
  %LIBAROMA_CFLAGS% ^
 ^
  -DLIBAROMA_CONFIG_DEBUG=%LIBAROMA_CONFIG_DEBUG% ^
  -DLIBAROMA_CONFIG_DEBUG_FILE=%LIBAROMA_CONFIG_DEBUG_FILE% ^
  -DLIBAROMA_CONFIG_DEBUG_MEMORY=%LIBAROMA_CONFIG_DEBUG_MEMORY% ^
  -DLIBAROMA_CONFIG_COMPILER_MESSAGE=%LIBAROMA_CONFIG_COMPILER_MESSAGE% ^
  -DLIBAROMA_CONFIG_SHMEMFB=%LIBAROMA_CONFIG_SHMEMFB% ^
  -DANDROID=1 -D__ANDROID__ ^
 ^
  ../../../src/contribs/devices/linux/fb_driver.c ^
  ../../../src/contribs/devices/linux/hid_driver.c ^
 ^
  ../../../src/aroma.c ^
 ^
  -I../../../include ^
  -I../../../libs/zlib ^
  -I../../../libs/freetype/builds ^
  -I../../../libs/freetype/include ^
  -I../../../libs/minzip ^
  -I../../../libs/png ^
  -I../../../libs/jpeg ^
  -I../../../libs/harfbuzz-ng/src ^
  -I../../../libs/harfbuzz-ng/src/hb-ucdn

cd ..

if "%1"=="-f" GOTO DONE
pause
:DONE