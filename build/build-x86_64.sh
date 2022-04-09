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
# Filename    : build-x86_64.sh
# Description : Build script for Intel/AMD 64bit
#
# + This is part of libaroma, an embedded ui toolkit.
#

##
## Init Compiler Macros
##
export CC=gcc
export AR=ar
export CPP=g++
export CFLAGS="
    -march=core2
    -fdata-sections -ffunction-sections -Wl,--gc-sections
    -fPIC -DPIC -Wl,-s -Werror -ftree-vectorize
    -fprefetch-loop-arrays -funsafe-math-optimizations
    -fopenmp -Wno-int-to-pointer-cast -Wno-pointer-to-int-cast
"
export LIBS_PATH=${LIBAROMA_PATH}/libs

##
## ARCH dependent sources
##
export LIBEXTERNALS_ADD_SRC="
"

export LIBAROMA_ARCH_FLAGS="
    -DLIBAROMA_CONFIG_X86_SSE=1
    -DLIBAROMA_LINUX64
"

export LIBAROMA_PLATFORM_SRC="
    ${LIBAROMA_PATH}/src/aroma/arch/x86_64/android_memset16.S
    ${LIBAROMA_PATH}/src/aroma/arch/x86_64/android_memset32.S
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
