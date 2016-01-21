# project config
cmake_minimum_required(VERSION 2.8)
project(harfbuzz)

# harfbuzz
add_library(harfbuzz STATIC 
	src/hb-blob.cc
	src/hb-buffer-serialize.cc
	src/hb-buffer.cc
	src/hb-common.cc
	src/hb-face.cc
	src/hb-fallback-shape.cc
	src/hb-font.cc
	src/hb-ot-tag.cc
	src/hb-set.cc
	src/hb-shape.cc
	src/hb-shape-plan.cc
	src/hb-shaper.cc
	src/hb-ot-font.cc
	src/hb-unicode.cc
	src/hb-warning.cc
	src/hb-ot-layout.cc
	src/hb-ot-map.cc
	src/hb-ot-shape.cc
	src/hb-ot-shape-complex-arabic.cc
	src/hb-ot-shape-complex-default.cc
	src/hb-ot-shape-complex-hangul.cc
	src/hb-ot-shape-complex-hebrew.cc
	src/hb-ot-shape-complex-indic.cc
	src/hb-ot-shape-complex-indic-table.cc
	src/hb-ot-shape-complex-myanmar.cc
	src/hb-ot-shape-complex-sea.cc
	src/hb-ot-shape-complex-thai.cc
	src/hb-ot-shape-complex-tibetan.cc
	src/hb-ot-shape-normalize.cc
	src/hb-ot-shape-fallback.cc
	src/hb-ft.cc
	src/hb-ucdn.cc
)

# cflags
set_target_properties(harfbuzz PROPERTIES COMPILE_FLAGS "-DHB_NO_MT -DHAVE_OT -DHAVE_UCDN -DHAVE_FREETYPE -save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")

# dependencies
add_dependencies(harfbuzz freetype)
target_link_libraries(harfbuzz freetype)

if(NOT DEFINED ANDROID_NDK)
	# non ndk add stdc++
	target_link_libraries(harfbuzz stdc++)
endif()

