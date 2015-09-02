# project config
cmake_minimum_required(VERSION 2.8)
project(minzip)

# minzip
add_library(minzip STATIC 
	Hash.c
	SysUtil.c
	DirUtil.c
	Inlines.c
	Zip.c
)

# cflags
set_target_properties(minzip PROPERTIES COMPILE_FLAGS "-save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")

# dependencies
add_dependencies(minzip z)
target_link_libraries(minzip z)
