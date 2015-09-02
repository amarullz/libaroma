# project config
cmake_minimum_required(VERSION 2.8)
project(zlib)

# zlib
add_library(z ${CMAKE_LINK_TYPE} 
	src/adler32.c
	src/compress.c
	src/crc32.c
	src/deflate.c
	src/gzclose.c
	src/gzlib.c
	src/gzread.c
	src/gzwrite.c
	src/infback.c
	src/inflate.c
	src/inftrees.c
	src/inffast.c
	src/trees.c
	src/uncompr.c
	src/zutil.c
)

# cflags
set_target_properties(z PROPERTIES COMPILE_FLAGS "-save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")
