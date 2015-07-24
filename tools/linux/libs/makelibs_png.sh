#!/bin/sh
cd ../obj

$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
 \
  $LIBAROMA_CFLAGS \
 \
    ../../../libs/png/png.c \
  	../../../libs/png/pngerror.c \
  	../../../libs/png/pngget.c \
  	../../../libs/png/pngmem.c \
  	../../../libs/png/pngpread.c \
  	../../../libs/png/pngread.c \
  	../../../libs/png/pngrio.c \
  	../../../libs/png/pngrtran.c \
  	../../../libs/png/pngrutil.c \
  	../../../libs/png/pngset.c \
  	../../../libs/png/pngtrans.c \
  	../../../libs/png/pngwio.c \
  	../../../libs/png/pngwrite.c \
  	../../../libs/png/pngwtran.c \
  	../../../libs/png/pngwutil.c \
  \
  	../../../libs/png/arm/arm_init.c \
		../../../libs/png/arm/filter_neon.S \
		../../../libs/png/arm/filter_neon_intrinsics.c \
  \
  -I../../../libs/png \
  -I../../../libs/zlib

cd ../libs
