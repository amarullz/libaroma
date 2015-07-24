# project config
cmake_minimum_required(VERSION 2.8)
project(png)

# png
add_library(png STATIC 
	png.c
	pngerror.c
	pngget.c
	pngmem.c
	pngpread.c
	pngread.c
	pngrio.c
	pngrtran.c
	pngrutil.c
	pngset.c
	pngtrans.c
	pngwio.c
	pngwrite.c
	pngwtran.c
	pngwutil.c

	arm/arm_init.c
	arm/filter_neon.S
	arm/filter_neon_intrinsics.c
)

# cflags
set_target_properties(png PROPERTIES COMPILE_FLAGS "\
	-save-temps \
	-fdata-sections -ffunction-sections -Wl,--gc-sections \
	-D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
	-fPIC -DPIC -Wl,-s -Werror \
")

# dependencies
add_dependencies(png zlib)
target_link_libraries(png zlib)
