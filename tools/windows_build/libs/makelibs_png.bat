@ECHO OFF
cd ..\obj

echo Compiling PNG
%LIBAROMA_GCC% -c ^
  -save-temps -O2 ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror ^
 ^
  -mfloat-abi=hard -mfpu=neon ^
  -D__ARM_HAVE_NEON ^
 ^
    ../../../libs/png/png.c ^
  	../../../libs/png/pngerror.c ^
  	../../../libs/png/pngget.c ^
  	../../../libs/png/pngmem.c ^
  	../../../libs/png/pngpread.c ^
  	../../../libs/png/pngread.c ^
  	../../../libs/png/pngrio.c ^
  	../../../libs/png/pngrtran.c ^
  	../../../libs/png/pngrutil.c ^
  	../../../libs/png/pngset.c ^
  	../../../libs/png/pngtrans.c ^
  	../../../libs/png/pngwio.c ^
  	../../../libs/png/pngwrite.c ^
  	../../../libs/png/pngwtran.c ^
  	../../../libs/png/pngwutil.c ^
  ^
  	../../../libs/png/arm/arm_init.c ^
		../../../libs/png/arm/filter_neon.S ^
		../../../libs/png/arm/filter_neon_intrinsics.c ^
  ^
  -I../../../libs/png ^
  -I../../../libs/zlib

cd ..\libs

if "%1"=="-f" GOTO DONE
pause
:DONE