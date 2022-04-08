#!/bin/sh
cd ../obj

$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror -DUSE_MMAP \
 \
  $LIBAROMA_CFLAGS \
 \
    $LIBAROMA_PATH/libs/zlib/src/adler32.c \
  	$LIBAROMA_PATH/libs/zlib/src/compress.c \
  	$LIBAROMA_PATH/libs/zlib/src/crc32.c \
  	$LIBAROMA_PATH/libs/zlib/src/deflate.c \
  	$LIBAROMA_PATH/libs/zlib/src/gzclose.c \
  	$LIBAROMA_PATH/libs/zlib/src/gzlib.c \
  	$LIBAROMA_PATH/libs/zlib/src/gzread.c \
  	$LIBAROMA_PATH/libs/zlib/src/gzwrite.c \
  	$LIBAROMA_PATH/libs/zlib/src/infback.c \
  	$LIBAROMA_PATH/libs/zlib/src/inflate.c \
  	$LIBAROMA_PATH/libs/zlib/src/inftrees.c \
  	$LIBAROMA_PATH/libs/zlib/src/inffast.c \
  	$LIBAROMA_PATH/libs/zlib/src/trees.c \
  	$LIBAROMA_PATH/libs/zlib/src/uncompr.c \
  	$LIBAROMA_PATH/libs/zlib/src/zutil.c \
  -I$LIBAROMA_PATH/libs/zlib

cd ../libs
