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
    ../../../libs/zlib/adler32.c \
  	../../../libs/zlib/compress.c \
  	../../../libs/zlib/crc32.c \
  	../../../libs/zlib/deflate.c \
  	../../../libs/zlib/gzclose.c \
  	../../../libs/zlib/gzlib.c \
  	../../../libs/zlib/gzread.c \
  	../../../libs/zlib/gzwrite.c \
  	../../../libs/zlib/infback.c \
  	../../../libs/zlib/inflate.c \
  	../../../libs/zlib/inftrees.c \
  	../../../libs/zlib/inffast.c \
  	../../../libs/zlib/trees.c \
  	../../../libs/zlib/uncompr.c \
  	../../../libs/zlib/zutil.c \
  -I../../../libs/zlib

cd ../libs
