#!/bin/sh
cd ../obj

$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
  \
    $LIBAROMA_PATH/libs/minzip/Hash.c \
    $LIBAROMA_PATH/libs/minzip/SysUtil.c \
    $LIBAROMA_PATH/libs/minzip/DirUtil.c \
    $LIBAROMA_PATH/libs/minzip/Inlines.c \
    $LIBAROMA_PATH/libs/minzip/Zip.c

cd ../libs
