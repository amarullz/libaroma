#!/bin/sh
cd ../obj

$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
  \
    ../../../libs/minzip/Hash.c \
    ../../../libs/minzip/SysUtil.c \
    ../../../libs/minzip/DirUtil.c \
    ../../../libs/minzip/Inlines.c \
    ../../../libs/minzip/Zip.c \
  \
    -I../../../libs/zlib

cd ../libs
