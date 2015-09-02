# project config
cmake_minimum_required(VERSION 2.8)
project(hbucdn)

# hbucdn
add_library(hbucdn STATIC 
	ucdn.c
)

# cflags
set_target_properties(harfbuzz PROPERTIES COMPILE_FLAGS "-DHB_NO_MT -DHAVE_OT -DHAVE_UCDN -DHAVE_FREETYPE -save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")
