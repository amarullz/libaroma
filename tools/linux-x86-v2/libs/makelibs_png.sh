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
    $LIBAROMA_PATH/libs/png/png.c \
  	$LIBAROMA_PATH/libs/png/pngerror.c \
  	$LIBAROMA_PATH/libs/png/pngget.c \
  	$LIBAROMA_PATH/libs/png/pngmem.c \
  	$LIBAROMA_PATH/libs/png/pngpread.c \
  	$LIBAROMA_PATH/libs/png/pngread.c \
  	$LIBAROMA_PATH/libs/png/pngrio.c \
  	$LIBAROMA_PATH/libs/png/pngrtran.c \
  	$LIBAROMA_PATH/libs/png/pngrutil.c \
  	$LIBAROMA_PATH/libs/png/pngset.c \
  	$LIBAROMA_PATH/libs/png/pngtrans.c \
  	$LIBAROMA_PATH/libs/png/pngwio.c \
  	$LIBAROMA_PATH/libs/png/pngwrite.c \
  	$LIBAROMA_PATH/libs/png/pngwtran.c \
  	$LIBAROMA_PATH/libs/png/pngwutil.c \
  \
  -I$LIBAROMA_PATH/libs/png 

cd ../libs
