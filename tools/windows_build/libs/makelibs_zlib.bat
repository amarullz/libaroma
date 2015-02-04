@ECHO OFF
cd ..\obj

echo Compiling ZLIB
%LIBAROMA_GCC% -c ^
  -save-temps -O2 ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror ^
 ^
  -mfloat-abi=hard -mfpu=neon ^
  -D__ARM_HAVE_NEON ^
 ^
    ../../../libs/zlib/adler32.c ^
    ../../../libs/zlib/crc32.c ^
    ../../../libs/zlib/infback.c ^
    ../../../libs/zlib/inffast.c ^
    ../../../libs/zlib/inflate.c ^
    ../../../libs/zlib/inftrees.c ^
    ../../../libs/zlib/zutil.c ^
    ../../../libs/zlib/inflate_fast_copy_neon.s ^
  -I../../../libs/zlib

cd ..\libs

if "%1"=="-f" GOTO DONE
pause
:DONE