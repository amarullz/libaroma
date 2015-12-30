cmake_minimum_required(VERSION 2.8)

##
## Project Config
##
project(minlibaroma)
set(CMAKE_BUILD_TYPE Release)
execute_process( COMMAND ${CMAKE_C_COMPILER} -dumpmachine OUTPUT_VARIABLE DUMP_MACHINE OUTPUT_STRIP_TRAILING_WHITESPACE)
message("Dump Machine       : ${DUMP_MACHINE}")

##
## Check Architecture
##
if(NOT DEFINED ARCHITECTURE)
  string(FIND ${DUMP_MACHINE} "-" DUMP_MACHINE_STRIP)
  string(SUBSTRING ${DUMP_MACHINE} 0 ${DUMP_MACHINE_STRIP} ARCHITECTURE)
endif()
message("Architecture       : ${ARCHITECTURE}")

##
## Platform
##
if(NOT DEFINED LIBAROMA_PLATFORM_NAME)  
	set(LIBAROMA_PLATFORM_NAME "linux")
endif()
set( LIBAROMA_PLATFORM_NAME "${LIBAROMA_PLATFORM_NAME}" CACHE STRING "Libaroma target platform" FORCE )
set_property( CACHE LIBAROMA_PLATFORM_NAME PROPERTY STRINGS "linux;qnx;sdl;rpi" )
message("Platform           : ${LIBAROMA_PLATFORM_NAME}")

##
## OpenMP
##
if(NOT DEFINED LIBAROMA_WITH_OPENMP)  
	set(LIBAROMA_WITH_OPENMP "DISABLE")
endif()
set( LIBAROMA_WITH_OPENMP "${LIBAROMA_WITH_OPENMP}" CACHE STRING "Force Compile Libaroma with OpenMP" FORCE )
set_property( CACHE LIBAROMA_WITH_OPENMP PROPERTY STRINGS "DISABLE;ENABLE" )

##
## LINK TYPE
##
if(NOT DEFINED CMAKE_LINK_TYPE)
	set(CMAKE_LINK_TYPE STATIC)
endif()
if("${CMAKE_LINK_TYPE}" STREQUAL "STATIC")
  message("Linkage            : STATIC")
	set(CMAKE_SKIP_RPATH YES)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -static")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static")
else()
	message("Linkage            : SHARED")
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
endif()

##
## ARCH
##
if("${ARCHITECTURE}" STREQUAL "arm")
	if(NOT DEFINED NEON)
		set(NEON true)
	endif()
	if(NOT DEFINED VFPV3)
		set(VFPV3 true)
	endif()
  message("NEON               : ${NEON}")
  message("VFPV3              : ${VFPV3}")
endif()

##
## Release & Debug flags
##
set(CMAKE_C_FLAGS_RELEASE "-Os -ftree-vectorize -funsafe-math-optimizations")
set(CMAKE_C_FLAGS_DEBUG "-ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}")

##
## Detect NDK
##
if(ANDROID_NDK)
  message("Toolchain          : ${ANDROID_NDK}")
else()
  message("Toolchain          : ${CMAKE_C_COMPILER}")
endif()

##
## Common cflags
##
set(AROMA_CFLAGS "${AROMA_CFLAGS} -save-temps")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -fPIC -DPIC -Wl,-s -Werror")
# set(AROMA_CFLAGS "${AROMA_CFLAGS} -Werror")


##
## OPENMP
## TODO: use custom NDK with (static) openmp support
##
if (((NOT DEFINED ANDROID_NDK) AND ("${CMAKE_LINK_TYPE}" STREQUAL SHARED)) OR (LIBAROMA_WITH_OPENMP STREQUAL ENABLE))
	message("OpenMP Support     : ENABLED")
	set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_OPENMP=1")
	if("${ARCHITECTURE}" STREQUAL "arm")
		set(AROMA_CFLAGS "${AROMA_CFLAGS} -fopenmp")
	elseif("${ARCHITECTURE}" STREQUAL "x86_64")
		set(AROMA_CFLAGS "${AROMA_CFLAGS} -openmp")
	endif()
	set(AROMA_OPENMP true)
else()
	message("OpenMP Support     : DISABLED")
	set(AROMA_OPENMP false)
endif()

## 
## CFLAGS
##
set(AROMA_CFLAGS "${AROMA_CFLAGS} -D__ARM_HAVE_NEON")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_TEXT_NOHARFBUZZ=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_NOMINZIP=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_NOJPEG=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_NOPNGWRITE=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_TRACE=0")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG=3")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_FILE=0")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_MEMORY=0")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_COMPILER_MESSAGE=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_SHMEMFB=0")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_NOSTARTFN")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_PFLINUX_DUMMY_PTHREAD=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DZ_SOLO")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DUSE_MMAP")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DFT2_NO_HARFBUZZ=1")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DFT2_BUILD_LIBRARY")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DDARWIN_NO_CARBON")

##
## Android
##
if(DEFINED ANDROID)
	message("Android Target     : ENABLED")
	set(AROMA_CFLAGS "${AROMA_CFLAGS} -DANDROID=1 -D__ANDROID__")
else()
  message("Android Target     : DISABLED")
endif()

##
## ARM cflags
##
if("${ARCHITECTURE}" STREQUAL "arm")
	if(NEON OR VFPV3)
		set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mvectorize-with-neon-quad")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mvectorize-with-neon-quad")
	endif()
	# NDK has set these flags already
	if(NOT DEFINED ANDROID_NDK)
		# TODO: check if Toolchain ABI is hard or soft
		if(NEON)
			set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mfloat-abi=hard -mfpu=neon")
			set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mfloat-abi=hard -mfpu=neon")
		elseif(VFPV3)
			set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mfloat-abi=hard -mfpu=vfpv3")
			set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mfloat-abi=hard -mfpu=vfpv3")
		endif()
	endif()
endif()

# sources
file(GLOB AROMA_SRCS
	../../../libs/zlib/src/adler32.c 
  ../../../libs/zlib/src/crc32.c 
  ../../../libs/zlib/src/infback.c 
  ../../../libs/zlib/src/inflate.c 
  ../../../libs/zlib/src/inftrees.c 
  ../../../libs/zlib/src/inffast.c 
  ../../../libs/zlib/src/trees.c 
  ../../../libs/zlib/src/zutil.c 
  ../../../libs/png/pngerror.c 
  ../../../libs/png/pngget.c 
  ../../../libs/png/pngmem.c 
  ../../../libs/png/pngpread.c 
  ../../../libs/png/pngread.c 
  ../../../libs/png/pngrio.c 
  ../../../libs/png/pngrtran.c 
  ../../../libs/png/pngrutil.c 
  ../../../libs/png/pngtrans.c 
  ../../../libs/png/arm/arm_init.c 
  ../../../libs/png/arm/filter_neon.S 
  ../../../libs/png/arm/filter_neon_intrinsics.c 
  ../../../libs/freetype/src/base/ftbbox.c 
  ../../../libs/freetype/src/base/ftbitmap.c 
  ../../../libs/freetype/src/base/ftfstype.c 
  ../../../libs/freetype/src/base/ftglyph.c 
  ../../../libs/freetype/src/base/ftlcdfil.c 
  ../../../libs/freetype/src/base/ftstroke.c 
  ../../../libs/freetype/src/base/fttype1.c 
  ../../../libs/freetype/src/base/ftbase.c 
  ../../../libs/freetype/src/base/ftsystem.c 
  ../../../libs/freetype/src/base/ftinit.c 
  ../../../libs/freetype/src/base/ftgasp.c 
  ../../../libs/freetype/src/raster/raster.c 
  ../../../libs/freetype/src/sfnt/sfnt.c 
  ../../../libs/freetype/src/smooth/smooth.c 
  ../../../libs/freetype/src/autofit/autofit.c 
  ../../../libs/freetype/src/truetype/truetype.c 
  ../../../libs/freetype/src/cff/cff.c 
  ../../../libs/freetype/src/cid/type1cid.c 
  ../../../libs/freetype/src/bdf/bdf.c 
  ../../../libs/freetype/src/type1/type1.c 
  ../../../libs/freetype/src/type42/type42.c 
  ../../../libs/freetype/src/winfonts/winfnt.c 
  ../../../libs/freetype/src/pcf/pcf.c 
  ../../../libs/freetype/src/pfr/pfr.c 
  ../../../libs/freetype/src/psaux/psaux.c 
  ../../../libs/freetype/src/psnames/psnames.c 
  ../../../libs/freetype/src/pshinter/pshinter.c 
  ../../../libs/freetype/src/gzip/ftgzip.c 
  ../../../libs/freetype/src/lzw/ftlzw.c 
  ../../../libs/harfbuzz-ng/src/hb-ucdn/ucdn.c 
  ../../../src/contrib/platform/linux/fb_driver.c 
  ../../../src/contrib/platform/linux/platform.c 
  ../../../src/aroma/version.c 
  ../../../src/aroma/utils/array.c 
  ../../../src/aroma/utils/minutf8.c 
  ../../../src/aroma/utils/stream.c 
  ../../../src/aroma/utils/strings.c 
  ../../../src/aroma/utils/system.c 
  ../../../src/aroma/utils/time.c 
  ../../../src/aroma/graph/canvas.c 
  ../../../src/aroma/graph/fb.c 
  ../../../src/aroma/graph/image.c 
  ../../../src/aroma/graph/png.c 
  ../../../src/aroma/graph/text.c 
  ../../../src/aroma/graph/draw/blur.c 
  ../../../src/aroma/graph/draw/commondraw.c 
  ../../../src/aroma/graph/draw/filters.c 
  ../../../src/aroma/graph/draw/gradient.c 
  ../../../src/aroma/graph/draw/path.c 
  ../../../src/aroma/graph/draw/scale.c 
  ../../../src/aroma/graph/engine/alignblt.c 
  ../../../src/aroma/graph/engine/alpha.c 
  ../../../src/aroma/graph/engine/blt.c 
  ../../../src/aroma/graph/engine/color.c 
  ../../../src/aroma/graph/engine/dither.c 
  
  ../../../src/aroma/aroma.c 
  ../../../libs/png/png.c 
  ../../../libs/png/pngset.c 
  ../../../examples/libaroma_test_graphonly.c
)

##
## Includes
##
include_directories(
	../../../include 
  ../../../src/contrib/platform/linux/include 
  ../../../src 
  ../../../libs/zlib/src 
  ../../../libs/freetype/builds 
  ../../../libs/freetype/include 
  ../../../libs/png 
  ../../../libs/harfbuzz-ng/src/hb-ucdn 
)


# AROMA Test Graph
add_executable(libaroma_test ${AROMA_SRCS})
set_target_properties(libaroma_test PROPERTIES COMPILE_FLAGS ${AROMA_CFLAGS})

if(AROMA_OPENMP)
  target_link_libraries(libaroma_test gomp)
endif()
if(NOT DEFINED ANDROID_NDK)
	target_link_libraries(libaroma_test pthread)
	target_link_libraries(libaroma_test rt)
endif()
target_link_libraries(libaroma_test m)
message("CFLAGS             : ${CMAKE_C_FLAGS}")
message("CXXFLAGS           : ${CMAKE_CXX_FLAGS}")
