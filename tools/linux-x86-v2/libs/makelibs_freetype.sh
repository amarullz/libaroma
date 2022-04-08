#!/bin/sh
cd ../obj

$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
 \
  -DFT2_BUILD_LIBRARY \
  -DDARWIN_NO_CARBON \
 \
  $LIBAROMA_PATH/libs/freetype/src/base/ftbbox.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftbitmap.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftfstype.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftglyph.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftlcdfil.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftstroke.c \
  $LIBAROMA_PATH/libs/freetype/src/base/fttype1.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftbase.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftsystem.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftinit.c \
  $LIBAROMA_PATH/libs/freetype/src/base/ftgasp.c \
  $LIBAROMA_PATH/libs/freetype/src/raster/raster.c \
  $LIBAROMA_PATH/libs/freetype/src/sfnt/sfnt.c \
  $LIBAROMA_PATH/libs/freetype/src/smooth/smooth.c \
  $LIBAROMA_PATH/libs/freetype/src/autofit/autofit.c \
  $LIBAROMA_PATH/libs/freetype/src/truetype/truetype.c \
  $LIBAROMA_PATH/libs/freetype/src/cff/cff.c \
  $LIBAROMA_PATH/libs/freetype/src/cid/type1cid.c \
  $LIBAROMA_PATH/libs/freetype/src/bdf/bdf.c \
  $LIBAROMA_PATH/libs/freetype/src/type1/type1.c \
  $LIBAROMA_PATH/libs/freetype/src/type42/type42.c \
  $LIBAROMA_PATH/libs/freetype/src/winfonts/winfnt.c \
  $LIBAROMA_PATH/libs/freetype/src/pcf/pcf.c \
  $LIBAROMA_PATH/libs/freetype/src/pfr/pfr.c \
  $LIBAROMA_PATH/libs/freetype/src/psaux/psaux.c \
  $LIBAROMA_PATH/libs/freetype/src/psnames/psnames.c \
  $LIBAROMA_PATH/libs/freetype/src/pshinter/pshinter.c \
  $LIBAROMA_PATH/libs/freetype/src/gzip/ftgzip.c \
  $LIBAROMA_PATH/libs/freetype/src/lzw/ftlzw.c \
 \
  -I$LIBAROMA_PATH/libs/freetype/builds \
  -I$LIBAROMA_PATH/libs/harfbuzz-ng/src \
  -I$LIBAROMA_PATH/libs/freetype/include

cd ../libs
