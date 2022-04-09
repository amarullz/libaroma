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
# Filename    : build-config.ini
# Description : Builder caller
#
# + This is part of libaroma, an embedded ui toolkit.
#

##
## Load default arch selection
##
eval "`cat ./build-config.ini`"

##
## Or add argument
##
if [ "$1" == "armv7" ]; then
    BUILD_ARCH=armv7
elif [ "$1" == "aarch64" ]; then
    BUILD_ARCH=aarch64
elif [ "$1" == "x86_64" ]; then
    BUILD_ARCH=x86_64
fi

echo "================================"
echo "   BUILD ARCH: ${BUILD_ARCH}"
echo "================================"

##
## Initializing Environment Variables
##
export LIBAROMA_PATH=`realpath $LIBAROMA_ROOT_PATH`
export SRC_PATH=`realpath ./src`
export LIBS_PATH=`realpath ./libs`
export BUILD_ARCH
export LIBAROMA_BUILD_FLAGS

##
## Init arch build
##
cd build
mkdir -p ${BUILD_ARCH}

##
## Running build script
##
if [ "$1" == "clean" ] || [ "$2" == "clean" ]; then
    echo "Cleaning build"
    rm -rf ${BUILD_ARCH}/*
else
    bash ./build-${BUILD_ARCH}.sh
fi
