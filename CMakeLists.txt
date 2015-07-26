cmake_minimum_required(VERSION 2.8)

# project config
project(libaroma)
set(CMAKE_BUILD_TYPE Release)

if(NOT CMAKE_LINK_TYPE)
	set(CMAKE_LINK_TYPE STATIC)
endif()

# force static compilation
if("${CMAKE_LINK_TYPE}" STREQUAL "STATIC")
	set(CMAKE_SKIP_RPATH YES)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -static")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static")
else()
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
endif()

# release&debug flags
set(CMAKE_C_FLAGS_RELEASE "-O3 -ftree-vectorize -fprefetch-loop-arrays -funsafe-math-optimizations")
set(CMAKE_C_FLAGS_DEBUG "-ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}")

# get architecture
execute_process( COMMAND ${CMAKE_C_COMPILER} -dumpmachine COMMAND cut -d- -f1 COMMAND tr -d '\n' OUTPUT_VARIABLE ARCHITECTURE )

# TMP
set(LIBAROMA_CONFIG_DEBUG "3")
set(LIBAROMA_CONFIG_DEBUG_FILE "0")
set(LIBAROMA_CONFIG_DEBUG_MEMORY "0")
set(LIBAROMA_CONFIG_COMPILER_MESSAGE "1")
set(LIBAROMA_CONFIG_SHMEMFB "0")
set(LIBAROMA_CONFIG_SHMEM_PREFIX "/libaromashm-")
set(AROMA_PLATFORM_NAME "linux")

# common cflags
set(AROMA_CFLAGS "${AROMA_CFLAGS} -save-temps")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -fdata-sections -ffunction-sections -Wl,--gc-sections")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -fPIC -DPIC -Wl,-s -Wall -Wextra -Wshadow -Wno-unused-parameter")
#set(AROMA_CFLAGS "${AROMA_CFLAGS} -Werror")

# forced aroma cflags
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_TRACE=0")

# openmp cflags
#set(AROMA_CFLAGS "${AROMA_CFLAGS} -fopenmp -DLIBAROMA_CONFIG_OPENMP=1")

# AROMA cflags
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG=${LIBAROMA_CONFIG_DEBUG}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_FILE=${LIBAROMA_CONFIG_DEBUG_FILE}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_DEBUG_MEMORY=${LIBAROMA_CONFIG_DEBUG_MEMORY}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_COMPILER_MESSAGE=${LIBAROMA_CONFIG_COMPILER_MESSAGE}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_SHMEMFB=${LIBAROMA_CONFIG_SHMEMFB}")
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DLIBAROMA_CONFIG_SHMEM_PREFIX=\\\"${LIBAROMA_CONFIG_SHMEM_PREFIX}\\\"")

# android cflags
set(AROMA_CFLAGS "${AROMA_CFLAGS} -DANDROID=1 -D__ANDROID__")

# ARM cflags
if("${ARCHITECTURE}" STREQUAL "arm")
	# NEON
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mvectorize-with-neon-quad -mfloat-abi=softfp -mfpu=neon -D__ARM_HAVE_NEON")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mvectorize-with-neon-quad -mfloat-abi=softfp -mfpu=neon -D__ARM_HAVE_NEON")
endif()

# sources
file(GLOB AROMA_SRCS
	${PROJECT_SOURCE_DIR}/src/contrib/platform/${AROMA_PLATFORM_NAME}/*.c
	src/aroma/aroma.c
	src/aroma/version.c

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
	${PROJECT_SOURCE_DIR}/src/contrib/platform/${AROMA_PLATFORM_NAME}/include
	${PROJECT_SOURCE_DIR}/libs/zlib
	${CMAKE_BINARY_DIR}/libs/zlib
	${PROJECT_SOURCE_DIR}/libs/freetype/builds
	${PROJECT_SOURCE_DIR}/libs/freetype/include
	${PROJECT_SOURCE_DIR}/libs/minzip
	${PROJECT_SOURCE_DIR}/libs/png
	${PROJECT_SOURCE_DIR}/libs/jpeg
	${PROJECT_SOURCE_DIR}/libs/harfbuzz-ng/src
	${PROJECT_SOURCE_DIR}/libs/harfbuzz-ng/src/hb-ucdn
	${PROJECT_SOURCE_DIR}/libs/squirrel/include
	${PROJECT_SOURCE_DIR}/libs/squirrel/squirrel
	${PROJECT_SOURCE_DIR}/libs/squirrel/sqstdlib
)

# aroma
add_library(aroma ${CMAKE_LINK_TYPE} ${AROMA_SRCS})
set_target_properties(aroma PROPERTIES COMPILE_FLAGS ${AROMA_CFLAGS})
add_dependencies(aroma z freetype harfbuzz hbucdn minzip png jpeg squirrel)
target_link_libraries(aroma z freetype harfbuzz hbucdn minzip png jpeg squirrel)
if (NOT ANDROID)
	target_link_libraries(aroma pthread)
endif()

# subdirs
add_subdirectory(libs/zlib)
add_subdirectory(libs/freetype)
add_subdirectory(libs/harfbuzz-ng)
add_subdirectory(libs/harfbuzz-ng/src/hb-ucdn)
add_subdirectory(libs/minzip)
add_subdirectory(libs/png)
add_subdirectory(libs/jpeg)
add_subdirectory(libs/squirrel)

# example
file(GLOB RECOVERY_SRCS examples/recovery/*.c)
add_executable(recovery ${RECOVERY_SRCS})
include_directories(
	${PROJECT_SOURCE_DIR}/examples/recovery
)
target_link_libraries(recovery aroma)
