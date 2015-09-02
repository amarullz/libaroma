# project config
cmake_minimum_required(VERSION 2.8)
project(png C ASM)

# sources
set(PNG_SRCS
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
)

# cflags
set(PNG_CFLAGS "-save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")

# ARM
if("${ARCHITECTURE}" STREQUAL "arm")
set(PNG_SRCS ${PNG_SRCS}
	arm/arm_init.c
	arm/filter_neon.S
	arm/filter_neon_intrinsics.c
)

set(PNG_CFLAGS "${PNG_CFLAGS} -DPNG_ARM_NEON_OPT=2")
endif()

# png
add_library(png ${CMAKE_LINK_TYPE} ${PNG_SRCS})

# cflags
set_target_properties(png PROPERTIES COMPILE_FLAGS "${PNG_CFLAGS}")

# dependencies
add_dependencies(png z)
target_link_libraries(png z m)
