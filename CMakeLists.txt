cmake_minimum_required(VERSION 2.8)

# Project Config
project(libaroma C ASM)
set(CMAKE_BUILD_TYPE Release)

execute_process( COMMAND ${CMAKE_C_COMPILER} -dumpmachine OUTPUT_VARIABLE DUMP_MACHINE OUTPUT_STRIP_TRAILING_WHITESPACE)
message("Dump Machine       : ${DUMP_MACHINE}")

# Check Architecture
if(NOT DEFINED ARCHITECTURE)
  string(FIND ${DUMP_MACHINE} "-" DUMP_MACHINE_STRIP)
  string(SUBSTRING ${DUMP_MACHINE} 0 ${DUMP_MACHINE_STRIP} ARCHITECTURE)
endif()
message("Architecture       : ${ARCHITECTURE}")

# Check Platform
if(NOT DEFINED LIBAROMA_PLATFORM_NAME)  
	set(LIBAROMA_PLATFORM_NAME "linux")
endif()

# Platform list
set( LIBAROMA_PLATFORM_NAME "${LIBAROMA_PLATFORM_NAME}" CACHE STRING "Libaroma target platform" FORCE )
set_property( CACHE LIBAROMA_PLATFORM_NAME PROPERTY STRINGS "linux;qnx;sdl;rpi" )
message("Platform           : ${LIBAROMA_PLATFORM_NAME}")


# NO HARFBUZZ List
if(NOT DEFINED LIBAROMA_CONFIG_TEXT_NOHARFBUZZ)  
	set(LIBAROMA_CONFIG_TEXT_NOHARFBUZZ "DISABLE")
endif()
set( LIBAROMA_CONFIG_TEXT_NOHARFBUZZ "${LIBAROMA_CONFIG_TEXT_NOHARFBUZZ}" CACHE STRING "Compile Without Harfbuzz-ng" FORCE )
set_property( CACHE LIBAROMA_CONFIG_TEXT_NOHARFBUZZ PROPERTY STRINGS "DISABLE;ENABLE" )

# WITH LIBAROMART
if(NOT DEFINED LIBAROMA_WITH_RT)  
	set(LIBAROMA_WITH_RT "DISABLE")
endif()
set( LIBAROMA_WITH_RT "${LIBAROMA_WITH_RT}" CACHE STRING "Compile With Libaroma RT" FORCE )
set_property( CACHE LIBAROMA_WITH_RT PROPERTY STRINGS "DISABLE;ENABLE" )

# OpenMP List
if(NOT DEFINED LIBAROMA_WITH_OPENMP)  
	set(LIBAROMA_WITH_OPENMP "DISABLE")
endif()
set( LIBAROMA_WITH_OPENMP "${LIBAROMA_WITH_OPENMP}" CACHE STRING "Force Compile Libaroma with OpenMP" FORCE )
set_property( CACHE LIBAROMA_WITH_OPENMP PROPERTY STRINGS "DISABLE;ENABLE" )

# Libaroma Debug
if(NOT DEFINED LIBAROMA_CONFIG_DEBUG)  
	set(LIBAROMA_CONFIG_DEBUG "3")
endif()
set( LIBAROMA_CONFIG_DEBUG "${LIBAROMA_CONFIG_DEBUG}" CACHE STRING "Libaroma Debugging Level" FORCE )
set_property( CACHE LIBAROMA_CONFIG_DEBUG PROPERTY STRINGS "1;2;3;4;5" )

# Libaroma Debug File
if(NOT DEFINED LIBAROMA_CONFIG_DEBUG_FILE)  
	set(LIBAROMA_CONFIG_DEBUG_FILE "0")
endif()
set( LIBAROMA_CONFIG_DEBUG_FILE "${LIBAROMA_CONFIG_DEBUG_FILE}" CACHE STRING "Libaroma Debug with filename for warning/error (1=with filename, 2=with line number)" FORCE )
set_property( CACHE LIBAROMA_CONFIG_DEBUG_FILE PROPERTY STRINGS "0;1;2" )

# Libaroma Debug Memory
if(NOT DEFINED LIBAROMA_CONFIG_DEBUG_MEMORY)
	set(LIBAROMA_CONFIG_DEBUG_MEMORY "0")
endif()
set( LIBAROMA_CONFIG_DEBUG_MEMORY "${LIBAROMA_CONFIG_DEBUG_MEMORY}" CACHE STRING "Track memory leaks for libaroma" FORCE )
set_property( CACHE LIBAROMA_CONFIG_DEBUG_MEMORY PROPERTY STRINGS "0;1" )

# Libaroma SHMEMFB
if(NOT DEFINED LIBAROMA_CONFIG_SHMEMFB)
	set(LIBAROMA_CONFIG_SHMEMFB "0")
endif()
set( LIBAROMA_CONFIG_SHMEMFB "${LIBAROMA_CONFIG_SHMEMFB}" CACHE STRING "Main canvas in shmem" FORCE )
set_property( CACHE LIBAROMA_CONFIG_SHMEMFB PROPERTY STRINGS "0;1" )

# Libaroma COMPILER MESSAGE
if(NOT DEFINED LIBAROMA_CONFIG_COMPILER_MESSAGE)
	set(LIBAROMA_CONFIG_COMPILER_MESSAGE "1")
endif()
set( LIBAROMA_CONFIG_COMPILER_MESSAGE "${LIBAROMA_CONFIG_COMPILER_MESSAGE}" CACHE STRING "Show compiler message" FORCE )
set_property( CACHE LIBAROMA_CONFIG_COMPILER_MESSAGE PROPERTY STRINGS "0;1" )

# Freetype rendering
if(NOT DEFINED LIBAROMA_FONT_RENDERING)
	set(LIBAROMA_FONT_RENDERING "ANTIALIAS")
endif()
set( LIBAROMA_FONT_RENDERING "${LIBAROMA_FONT_RENDERING}" CACHE STRING "Set freetype font rendering" FORCE )
set_property( CACHE LIBAROMA_FONT_RENDERING PROPERTY STRINGS "SUBPIXEL ANTIALIAS;ANTIALIAS" )

# SHMEM Default prefix
set(LIBAROMA_CONFIG_SHMEM_PREFIX "/libaromashm-")

# Default link values
if(NOT DEFINED CMAKE_LINK_TYPE)
	set(CMAKE_LINK_TYPE STATIC)
endif()

set( CMAKE_LINK_TYPE "${CMAKE_LINK_TYPE}" CACHE STRING "Link Type" FORCE )
set_property( CACHE CMAKE_LINK_TYPE PROPERTY STRINGS "STATIC;SHARED" )

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

# linkage
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

# release&debug flags
set(CMAKE_C_FLAGS_RELEASE "-O3 -ftree-vectorize -fprefetch-loop-arrays -funsafe-math-optimizations")
set(CMAKE_C_FLAGS_DEBUG "-ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}")

# detect NDK
if(ANDROID_NDK)
  message("Toolchain          : ${ANDROID_NDK}")
else()
  message("Toolchain          : ${CMAKE_C_COMPILER}")
endif()

# common cflags
set(AROMA_CFLAGS "${AROMA_CFLAGS} -save-temps")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -fdata-sections -ffunction-sections -Wl,--gc-sections")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -fPIC -DPIC -Wl,-s -Wall -Wextra -Wshadow -Wno-unused-parameter")
#set(AROMA_CFLAGS "${AROMA_CFLAGS} -Werror")

# forced aroma cflags
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_TRACE=0")

# openmp cflags
# TODO: use custom NDK with (static) openmp support
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

if (LIBAROMA_CONFIG_TEXT_NOHARFBUZZ STREQUAL ENABLE)
  SET(NOHARFBUZZNG true)
  message("Using Harfbuzz-ng  : NO")
  set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_TEXT_NOHARFBUZZ=1")
else()
  message("Using Harfbuzz-ng  : YES")
endif()

if (LIBAROMA_WITH_RT STREQUAL ENABLE)
  SET(WITHAROMART true)
  message("With AROMA RUNTIME : YES")
else()
  message("With AROMA RUNTIME : NO")
endif()


# AROMA config
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG=${LIBAROMA_CONFIG_DEBUG}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_FILE=${LIBAROMA_CONFIG_DEBUG_FILE}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_MEMORY=${LIBAROMA_CONFIG_DEBUG_MEMORY}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_COMPILER_MESSAGE=${LIBAROMA_CONFIG_COMPILER_MESSAGE}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_SHMEMFB=${LIBAROMA_CONFIG_SHMEMFB}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_SHMEM_PREFIX=\\\"${LIBAROMA_CONFIG_SHMEM_PREFIX}\\\"")

if(LIBAROMA_FONT_RENDERING STREQUAL "ANTIALIAS")
  set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_NOFONT_SUBPIXEL=1")
endif()

# android
if(DEFINED ANDROID)
	message("Android Target     : ENABLED")
	# if we don't use the NDK these flags are not defined by default
	set(AROMA_CFLAGS "${AROMA_CFLAGS} -DANDROID=1 -D__ANDROID__")
else()
  message("Android Target     : DISABLED")
endif()

# ARM cflags
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
	${PROJECT_SOURCE_DIR}/src/contrib/platform/${LIBAROMA_PLATFORM_NAME}/*.c
	src/aroma/arch/${ARCHITECTURE}/*.c
	src/aroma/arch/${ARCHITECTURE}/*.S
	src/aroma/aroma.c
	src/aroma/version.c
	src/aroma/utils/*.c
	src/aroma/debug/*.c
	src/aroma/graph/*.c
	src/aroma/graph/draw/*.c
	src/aroma/graph/engine/*.c
	src/aroma/hid/*.c
	src/aroma/ui/*.c
	src/aroma/controls/*.c
	src/aroma/controls/listitem/*.c
)

# includes
include_directories(
	${PROJECT_SOURCE_DIR}/include
	${PROJECT_SOURCE_DIR}/src
	${PROJECT_SOURCE_DIR}/src/contrib/platform/${LIBAROMA_PLATFORM_NAME}/include
	${PROJECT_SOURCE_DIR}/libs/zlib/src
	${PROJECT_SOURCE_DIR}/libs/freetype/builds
	${PROJECT_SOURCE_DIR}/libs/freetype/include
	${PROJECT_SOURCE_DIR}/libs/minzip
	${PROJECT_SOURCE_DIR}/libs/png
	${PROJECT_SOURCE_DIR}/libs/jpeg
	${PROJECT_SOURCE_DIR}/libs/harfbuzz-ng/src/hb-ucdn
	${PROJECT_SOURCE_DIR}/libs/harfbuzz-ng/src
	${PROJECT_SOURCE_DIR}/libs/squirrel/include
	${PROJECT_SOURCE_DIR}/libs/squirrel/squirrel
	${PROJECT_SOURCE_DIR}/libs/squirrel/sqstdlib
)


# aroma
add_library(aroma ${CMAKE_LINK_TYPE} ${AROMA_SRCS})
set_target_properties(aroma PROPERTIES COMPILE_FLAGS ${AROMA_CFLAGS})
add_dependencies(aroma z freetype hbucdn minzip png jpeg)
target_link_libraries(aroma z freetype hbucdn minzip png jpeg)

if (NOT DEFINED NOHARFBUZZNG)
  add_dependencies(aroma harfbuzz)
  target_link_libraries(aroma harfbuzz)
endif()

# SDL
# TODO: move to platform module
if("${LIBAROMA_PLATFORM_NAME}" STREQUAL "sdl")
	find_package(SDL REQUIRED)
	include_directories(${SDL_INCLUDE_DIR})
	target_link_libraries(aroma ${SDL_LIBRARY})
endif()

if(AROMA_OPENMP)
  target_link_libraries(aroma gomp)
endif()

if(NOT DEFINED ANDROID_NDK)
	# NDK uses a integrated pthreads API
	target_link_libraries(aroma pthread)
	target_link_libraries(aroma rt)
endif()

# subdirs
add_subdirectory(libs/zlib)
add_subdirectory(libs/freetype)
add_subdirectory(libs/harfbuzz-ng)
add_subdirectory(libs/harfbuzz-ng/src/hb-ucdn)
add_subdirectory(libs/minzip)
add_subdirectory(libs/png)
add_subdirectory(libs/jpeg)


if (DEFINED WITHAROMART)
  add_subdirectory(libs/squirrel)
  # aromart
  file(GLOB AROMART_SRCS src/aromart/*.c)
  add_library(aromart ${CMAKE_LINK_TYPE} ${AROMART_SRCS})
  add_dependencies(aromart aroma squirrel)
  target_link_libraries(aromart aroma squirrel)
  
  # aromart_test
  file(GLOB AROMART_TEST_SRCS examples/rt_test/*.c)
  add_executable(aromart_test ${AROMART_TEST_SRCS})
  target_link_libraries(aromart_test aromart)
endif()

# libaroma_test
file(GLOB LIBAROMA_TEST_SRCS examples/recovery/*.c)
include_directories(
  ${PROJECT_SOURCE_DIR}/examples/recovery
)
add_executable(libaroma_test ${LIBAROMA_TEST_SRCS})
target_link_libraries(libaroma_test aroma)

message("CFLAGS             : ${CMAKE_C_FLAGS}")
message("CXXFLAGS           : ${CMAKE_CXX_FLAGS}")
