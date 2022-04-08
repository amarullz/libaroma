#!/bin/sh
cd ../obj

$LIBAROMA_GPP -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
 \
  -DHB_NO_MT -DHAVE_OT -DHAVE_UCDN -DHAVE_FREETYPE \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-blob.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-buffer-serialize.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-buffer.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-common.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-face.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-fallback-shape.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-font.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-tag.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-set.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-shape.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-shape-plan.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-shaper.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-font.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-unicode.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-warning.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-layout.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-map.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-arabic.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-default.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-hangul.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-hebrew.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-indic.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-indic-table.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-myanmar.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-sea.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-thai.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-complex-tibetan.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-normalize.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ot-shape-fallback.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ft.cc \
  $LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ucdn.cc \
  -I$LIBAROMA_PATH/libs/freetype/builds \
  -I$LIBAROMA_PATH/libs/freetype/include \
  -I$LIBAROMA_PATH/libs/harfbuzz-ng/src \
  -I$LIBAROMA_PATH/libs/harfbuzz-ng/src/hb-ucdn

cd ../libs
