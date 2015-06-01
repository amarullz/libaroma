#!/bin/sh
cd libaroma
rm -rf *

$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Wall -Wextra -Wshadow -Werror -Wno-unused-parameter \
 \
  $LIBAROMA_CFLAGS \
 \
  -DLIBAROMA_CONFIG_DEBUG=$LIBAROMA_CONFIG_DEBUG \
  -DLIBAROMA_CONFIG_DEBUG_FILE=$LIBAROMA_CONFIG_DEBUG_FILE \
  -DLIBAROMA_CONFIG_DEBUG_MEMORY=$LIBAROMA_CONFIG_DEBUG_MEMORY \
  -DLIBAROMA_CONFIG_COMPILER_MESSAGE=$LIBAROMA_CONFIG_COMPILER_MESSAGE \
  -DLIBAROMA_CONFIG_SHMEMFB=$LIBAROMA_CONFIG_SHMEMFB \
 \
  ../../../src/contrib/linux/fb_driver.c \
  ../../../src/contrib/linux/hid_driver.c \
  ../../../src/contrib/linux/linux_syscall.c \
 \
  ../../../src/aroma/aroma.c \
  ../../../src/aroma/version.c \
  ../../../src/aroma/utils/*.c \
  ../../../src/aroma/debug/*.c \
  ../../../src/aroma/graph/*.c \
  ../../../src/aroma/graph/draw/*.c \
  ../../../src/aroma/graph/engine/*.c \
  ../../../src/aroma/hid/*.c \
  ../../../src/aroma/ui/*.c \
  ../../../src/aroma/controls/*.c \
  ../../../src/aroma/controls/listitem/*.c \
 \
  -I../../../include \
  -I../../../src \
  -I../../../libs/zlib \
  -I../../../libs/freetype/builds \
  -I../../../libs/freetype/include \
  -I../../../libs/minzip \
  -I../../../libs/png \
  -I../../../libs/jpeg \
  -I../../../libs/harfbuzz-ng/src \
  -I../../../libs/harfbuzz-ng/src/hb-ucdn

cd ..
