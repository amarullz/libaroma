#!/bin/sh
cd ../libaroma
rm -rf *

$LIBAROMA_GCC -c \
  -save-temps \
  -Wl,-s -Wall -Wextra -Wshadow -Werror -Wno-unused-parameter \
  -Wno-format-truncation -Wno-implicit-fallthrough -Wno-pragmas \
  -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast \
 \
  -DLIBAROMA_CONFIG_TEXT_NOHARFBUZZ=1 \
  -DAROMA_LINUX_SETRES=1 -DAROMA_LINUX_NOCHECKFBSZ=1 \
  -DAROMA_LINUX_SETDPI="160" \
  -DAROMA_LINUX_SETRES_X="1024" \
  -DAROMA_LINUX_SETRES_Y="768" \
  -DAROMA_LINUX_SETRES_DEPTH="16" \
  -DLIBAROMA_CONFIG_NOSHMEM \
  -DLIBAROMA_CONFIG_X86_SSE \
  -DLIBAROMA_CONFIG_NO_ANDROID_MEM \
  -DLIBAROMA_CONFIG_DEBUG=$LIBAROMA_CONFIG_DEBUG \
  -DLIBAROMA_CONFIG_DEBUG_FILE=$LIBAROMA_CONFIG_DEBUG_FILE \
  -DLIBAROMA_CONFIG_DEBUG_MEMORY=$LIBAROMA_CONFIG_DEBUG_MEMORY \
  -DLIBAROMA_CONFIG_COMPILER_MESSAGE=$LIBAROMA_CONFIG_COMPILER_MESSAGE \
  -DLIBAROMA_CONFIG_SHMEMFB=$LIBAROMA_CONFIG_SHMEMFB \
 \
  $LIBAROMA_PATH/src/contrib/platform/linux/fb_driver.c \
  $LIBAROMA_PATH/src/contrib/platform/linux/hid_driver.c \
  $LIBAROMA_PATH/src/contrib/platform/linux/platform.c \
 \
  $LIBAROMA_PATH/src/aroma/aroma.c \
  $LIBAROMA_PATH/src/aroma/version.c \
  $LIBAROMA_PATH/src/aroma/utils/*.c \
  $LIBAROMA_PATH/src/aroma/debug/*.c \
  $LIBAROMA_PATH/src/aroma/graph/*.c \
  $LIBAROMA_PATH/src/aroma/graph/draw/*.c \
  $LIBAROMA_PATH/src/aroma/graph/engine/*.c \
  $LIBAROMA_PATH/src/aroma/hid/*.c \
  $LIBAROMA_PATH/src/aroma/ui/*.c \
  $LIBAROMA_PATH/src/aroma/controls/*.c \
  $LIBAROMA_PATH/src/aroma/controls/listitem/*.c \
 \
  -I$LIBAROMA_PATH/include \
  -I$LIBAROMA_PATH/src/contrib/platform/linux/include \
  -I$LIBAROMA_PATH/src \
  -I$LIBAROMA_PATH/libs/freetype/builds \
  -I$LIBAROMA_PATH/libs/freetype/include \
  -I$LIBAROMA_PATH/libs/minzip \
  -I$LIBAROMA_PATH/libs/png \
  -I$LIBAROMA_PATH/libs/jpeg \
  -I$LIBAROMA_PATH/libs/harfbuzz-ng/src \
  -I$LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ucdn

cd ..
