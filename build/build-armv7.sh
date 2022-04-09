#!/bin/bash
#
# Copyright 2011-2022 Ahmad Amarullah (http://amarullz.com/)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#______________________________________________________________________________
#
# Filename    : build-armv7.sh
# Description : Build script for ARM-32bit
#
# + This is part of libaroma, an embedded ui toolkit.
#

##
## Init Compiler Macros
##
export CROSS_COMPILER=arm-linux-gnueabihf-
export CC=${CROSS_COMPILER}gcc
export AR=${CROSS_COMPILER}ar
export CPP=${CROSS_COMPILER}g++
export CFLAGS="
    -fdata-sections -ffunction-sections -Wl,--gc-sections
    -fPIC -DPIC -Wl,-s -Werror -ftree-vectorize -mvectorize-with-neon-quad
    -fprefetch-loop-arrays -funsafe-math-optimizations
    -fopenmp -mfloat-abi=hard -mfpu=neon -D__ARM_HAVE_NEON
"
export LIBS_PATH=${LIBAROMA_PATH}/libs

##
## ARCH dependent sources
##
export LIBEXTERNALS_ADD_SRC="
    ${LIBS_PATH}/png/arm/arm_init.c
    ${LIBS_PATH}/png/arm/filter_neon.S
    ${LIBS_PATH}/png/arm/filter_neon_intrinsics.c
    ${LIBS_PATH}/jpeg-turbo/simd/jsimd_arm.c
    ${LIBS_PATH}/jpeg-turbo/simd/jsimd_arm_neon.S
"

export LIBAROMA_ARCH_FLAGS=""

export LIBAROMA_PLATFORM_SRC="
    ${LIBAROMA_PATH}/src/aroma/arch/arm/memset32.S
    ${LIBAROMA_PATH}/src/contrib/platform/linux/fb_driver.c
    ${LIBAROMA_PATH}/src/contrib/platform/linux/hid_driver.c
    ${LIBAROMA_PATH}/src/contrib/platform/linux/platform.c
"

export LIBAROMA_PLATFORM_INCLUDE="
    ${LIBAROMA_PATH}/src/contrib/platform/linux/include
"


##
## builder.sh flag
##
export IS_ON_BUILD_ARCH="y"

##
## Change build directory
##
cd ${BUILD_ARCH}
bash ../builder.sh
