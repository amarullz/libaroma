#!/bin/sh
cd ../obj

$LIBAROMA_GPP -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
 \
  -DHB_NO_MT -DHAVE_OT -DHAVE_UCDN -DHAVE_FREETYPE \
  ../../../libs/harfbuzz-ng/src/hb-blob.cc \
  ../../../libs/harfbuzz-ng/src/hb-buffer-serialize.cc \
  ../../../libs/harfbuzz-ng/src/hb-buffer.cc \
  ../../../libs/harfbuzz-ng/src/hb-common.cc \
  ../../../libs/harfbuzz-ng/src/hb-face.cc \
  ../../../libs/harfbuzz-ng/src/hb-fallback-shape.cc \
  ../../../libs/harfbuzz-ng/src/hb-font.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-tag.cc \
  ../../../libs/harfbuzz-ng/src/hb-set.cc \
  ../../../libs/harfbuzz-ng/src/hb-shape.cc \
  ../../../libs/harfbuzz-ng/src/hb-shape-plan.cc \
  ../../../libs/harfbuzz-ng/src/hb-shaper.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-font.cc \
  ../../../libs/harfbuzz-ng/src/hb-unicode.cc \
  ../../../libs/harfbuzz-ng/src/hb-warning.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-layout.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-map.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-arabic.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-default.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-hangul.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-hebrew.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-indic.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-indic-table.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-myanmar.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-sea.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-thai.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-tibetan.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-normalize.cc \
  ../../../libs/harfbuzz-ng/src/hb-ot-shape-fallback.cc \
  ../../../libs/harfbuzz-ng/src/hb-ft.cc \
  ../../../libs/harfbuzz-ng/src/hb-ucdn.cc \
  -I../../../libs/freetype/builds \
  -I../../../libs/freetype/include \
  -I../../../libs/harfbuzz-ng/src \
  -I../../../libs/harfbuzz-ng/src/hb-ucdn

cd ../libs
