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
# Filename    : builder.sh
# Description : GCC Builder script for all arch
#
# + This is part of libaroma, an embedded ui toolkit.
#

if [ -z ${IS_ON_BUILD_ARCH} ]; then
    echo "Cannot run builder directly"
    exit
fi

##
## Build libexternals (zlib, freetype, hb-ucdn, minzip, png, jpeg)
##
if [ ! -f "libexternals.a" ]; then
    echo "[*] Building libexternals.a"
    mkdir -p obj
    cd obj
    echo "    - Compiling libraries source"
    ${CC} -c \
        ${CFLAGS} \
        \
        -DAVOID_TABLES \
        -DJPEG_LIB_VERSION__XXX=62 \
        -DNO_GETENV \
        -DWITH_SIMD=1 \
        -DMEM_SRCDST_SUPPORTED \
        \
        -DNV_ARM_NEON \
        -DANDROID_TILE_BASED_DECODE \
        -DFT2_BUILD_LIBRARY \
        -DFT2_NO_HARFBUZZ \
        -DDARWIN_NO_CARBON \
        \
        ${LIBS_PATH}/zlib/src/adler32.c \
        ${LIBS_PATH}/zlib/src/compress.c \
        ${LIBS_PATH}/zlib/src/crc32.c \
        ${LIBS_PATH}/zlib/src/deflate.c \
        ${LIBS_PATH}/zlib/src/gzclose.c \
        ${LIBS_PATH}/zlib/src/gzlib.c \
        ${LIBS_PATH}/zlib/src/gzread.c \
        ${LIBS_PATH}/zlib/src/gzwrite.c \
        ${LIBS_PATH}/zlib/src/infback.c \
        ${LIBS_PATH}/zlib/src/inflate.c \
        ${LIBS_PATH}/zlib/src/inftrees.c \
        ${LIBS_PATH}/zlib/src/inffast.c \
        ${LIBS_PATH}/zlib/src/trees.c \
        ${LIBS_PATH}/zlib/src/uncompr.c \
        ${LIBS_PATH}/zlib/src/zutil.c \
        -I${LIBS_PATH}/zlib/src \
        \
        ${LIBS_PATH}/freetype/src/base/ftbbox.c \
        ${LIBS_PATH}/freetype/src/base/ftbitmap.c \
        ${LIBS_PATH}/freetype/src/base/ftfstype.c \
        ${LIBS_PATH}/freetype/src/base/ftglyph.c \
        ${LIBS_PATH}/freetype/src/base/ftlcdfil.c \
        ${LIBS_PATH}/freetype/src/base/ftstroke.c \
        ${LIBS_PATH}/freetype/src/base/fttype1.c \
        ${LIBS_PATH}/freetype/src/base/ftbase.c \
        ${LIBS_PATH}/freetype/src/base/ftsystem.c \
        ${LIBS_PATH}/freetype/src/base/ftinit.c \
        ${LIBS_PATH}/freetype/src/base/ftgasp.c \
        ${LIBS_PATH}/freetype/src/raster/raster.c \
        ${LIBS_PATH}/freetype/src/sfnt/sfnt.c \
        ${LIBS_PATH}/freetype/src/smooth/smooth.c \
        ${LIBS_PATH}/freetype/src/autofit/autofit.c \
        ${LIBS_PATH}/freetype/src/truetype/truetype.c \
        ${LIBS_PATH}/freetype/src/cff/cff.c \
        ${LIBS_PATH}/freetype/src/cid/type1cid.c \
        ${LIBS_PATH}/freetype/src/bdf/bdf.c \
        ${LIBS_PATH}/freetype/src/type1/type1.c \
        ${LIBS_PATH}/freetype/src/type42/type42.c \
        ${LIBS_PATH}/freetype/src/winfonts/winfnt.c \
        ${LIBS_PATH}/freetype/src/pcf/pcf.c \
        ${LIBS_PATH}/freetype/src/pfr/pfr.c \
        ${LIBS_PATH}/freetype/src/psaux/psaux.c \
        ${LIBS_PATH}/freetype/src/psnames/psnames.c \
        ${LIBS_PATH}/freetype/src/pshinter/pshinter.c \
        ${LIBS_PATH}/freetype/src/gzip/ftgzip.c \
        ${LIBS_PATH}/freetype/src/lzw/ftlzw.c \
        -I${LIBS_PATH}/freetype/builds \
        -I${LIBS_PATH}/freetype/include \
        \
        ${LIBS_PATH}/harfbuzz-ng/src/hb-ucdn/ucdn.c \
        -I${LIBS_PATH}/harfbuzz-ng/src/hb-ucdn \
        \
        ${LIBS_PATH}/minzip/Hash.c \
        ${LIBS_PATH}/minzip/SysUtil.c \
        ${LIBS_PATH}/minzip/DirUtil.c \
        ${LIBS_PATH}/minzip/Inlines.c \
        ${LIBS_PATH}/minzip/Zip.c \
        \
        ${LIBS_PATH}/png/png.c \
        ${LIBS_PATH}/png/pngerror.c \
        ${LIBS_PATH}/png/pngget.c \
        ${LIBS_PATH}/png/pngmem.c \
        ${LIBS_PATH}/png/pngpread.c \
        ${LIBS_PATH}/png/pngread.c \
        ${LIBS_PATH}/png/pngrio.c \
        ${LIBS_PATH}/png/pngrtran.c \
        ${LIBS_PATH}/png/pngrutil.c \
        ${LIBS_PATH}/png/pngset.c \
        ${LIBS_PATH}/png/pngtrans.c \
        ${LIBS_PATH}/png/pngwio.c \
        ${LIBS_PATH}/png/pngwrite.c \
        ${LIBS_PATH}/png/pngwtran.c \
        ${LIBS_PATH}/png/pngwutil.c \
        -I${LIBS_PATH}/png \
        \
        ${LIBS_PATH}/jpeg-turbo/jcarith.c \
        ${LIBS_PATH}/jpeg-turbo/jaricom.c \
        ${LIBS_PATH}/jpeg-turbo/jdarith.c \
        ${LIBS_PATH}/jpeg-turbo/jcapimin.c \
        ${LIBS_PATH}/jpeg-turbo/jcapistd.c \
        ${LIBS_PATH}/jpeg-turbo/jccoefct.c \
        ${LIBS_PATH}/jpeg-turbo/jccolor.c \
        ${LIBS_PATH}/jpeg-turbo/jcdctmgr.c \
        ${LIBS_PATH}/jpeg-turbo/jchuff.c \
        ${LIBS_PATH}/jpeg-turbo/jcinit.c \
        ${LIBS_PATH}/jpeg-turbo/jcmainct.c \
        ${LIBS_PATH}/jpeg-turbo/jcmarker.c \
        ${LIBS_PATH}/jpeg-turbo/jcmaster.c \
        ${LIBS_PATH}/jpeg-turbo/jcomapi.c \
        ${LIBS_PATH}/jpeg-turbo/jcparam.c \
        ${LIBS_PATH}/jpeg-turbo/jcphuff.c \
        ${LIBS_PATH}/jpeg-turbo/jcprepct.c \
        ${LIBS_PATH}/jpeg-turbo/jcsample.c \
        ${LIBS_PATH}/jpeg-turbo/jctrans.c \
        ${LIBS_PATH}/jpeg-turbo/jdapimin.c \
        ${LIBS_PATH}/jpeg-turbo/jdapistd.c \
        ${LIBS_PATH}/jpeg-turbo/jdatadst.c \
        ${LIBS_PATH}/jpeg-turbo/jdatasrc.c \
        ${LIBS_PATH}/jpeg-turbo/jdcoefct.c \
        ${LIBS_PATH}/jpeg-turbo/jdcolor.c \
        ${LIBS_PATH}/jpeg-turbo/jddctmgr.c \
        ${LIBS_PATH}/jpeg-turbo/jdhuff.c \
        ${LIBS_PATH}/jpeg-turbo/jdinput.c \
        ${LIBS_PATH}/jpeg-turbo/jdmainct.c \
        ${LIBS_PATH}/jpeg-turbo/jdmarker.c \
        ${LIBS_PATH}/jpeg-turbo/jdmaster.c \
        ${LIBS_PATH}/jpeg-turbo/jdmerge.c \
        ${LIBS_PATH}/jpeg-turbo/jdphuff.c \
        ${LIBS_PATH}/jpeg-turbo/jdpostct.c \
        ${LIBS_PATH}/jpeg-turbo/jdsample.c \
        ${LIBS_PATH}/jpeg-turbo/jdtrans.c \
        ${LIBS_PATH}/jpeg-turbo/jerror.c \
        ${LIBS_PATH}/jpeg-turbo/jfdctflt.c \
        ${LIBS_PATH}/jpeg-turbo/jfdctfst.c \
        ${LIBS_PATH}/jpeg-turbo/jfdctint.c \
        ${LIBS_PATH}/jpeg-turbo/jidctflt.c \
        ${LIBS_PATH}/jpeg-turbo/jidctfst.c \
        ${LIBS_PATH}/jpeg-turbo/jidctint.c \
        ${LIBS_PATH}/jpeg-turbo/jidctred.c \
        ${LIBS_PATH}/jpeg-turbo/jquant1.c \
        ${LIBS_PATH}/jpeg-turbo/jquant2.c \
        ${LIBS_PATH}/jpeg-turbo/jutils.c \
        ${LIBS_PATH}/jpeg-turbo/jmemmgr.c \
        ${LIBS_PATH}/jpeg-turbo/jdatadst.c \
        ${LIBS_PATH}/jpeg-turbo/jmemnobs.c \
        -I${LIBS_PATH}/jpeg-turbo \
        -I${LIBS_PATH}/jpeg-turbo/prebuilt/include \
        \
        ${LIBEXTERNALS_ADD_SRC}

    echo "    - Packing libexternals.a"
    ${AR} rcs ../libexternals.a *.o
    echo "    - Cleanup"
    rm *.o
    cd ..
else
    echo "[*] libexternals.a compiled"
fi

##
## Build libaroma
##
echo "[*] Building libaroma.a"
mkdir -p obj
cd obj
echo "    - Compiling libaroma source"
echo " "
echo "      -------------------------"
echo " "
${CC} -c -Wno-format-truncation \
    ${CFLAGS} \
    ${LIBAROMA_ARCH_FLAGS} \
    ${LIBAROMA_BUILD_FLAGS} \
    -DLIBAROMA_CONFIG_SHMEM_PREFIX="\"/libaromashm-\"" \
    ${LIBAROMA_PLATFORM_SRC} \
    \
    ${LIBAROMA_PATH}/src/aroma/aroma.c \
    ${LIBAROMA_PATH}/src/aroma/version.c \
    ${LIBAROMA_PATH}/src/aroma/utils/*.c \
    ${LIBAROMA_PATH}/src/aroma/debug/*.c \
    ${LIBAROMA_PATH}/src/aroma/graph/*.c \
    ${LIBAROMA_PATH}/src/aroma/graph/draw/*.c \
    ${LIBAROMA_PATH}/src/aroma/graph/engine/*.c \
    ${LIBAROMA_PATH}/src/aroma/hid/*.c \
    ${LIBAROMA_PATH}/src/aroma/ui/*.c \
    ${LIBAROMA_PATH}/src/aroma/controls/*.c \
    ${LIBAROMA_PATH}/src/aroma/controls/listitem/*.c \
    \
    -I${LIBAROMA_PATH}/include \
    -I${LIBAROMA_PLATFORM_INCLUDE} \
    -I${LIBAROMA_PATH}/src \
    -I${LIBAROMA_PATH}/libs/zlib/src \
    -I${LIBAROMA_PATH}/libs/freetype/builds \
    -I${LIBAROMA_PATH}/libs/freetype/include \
    -I${LIBAROMA_PATH}/libs/minzip \
    -I${LIBAROMA_PATH}/libs/png \
    -I${LIBAROMA_PATH}/libs/jpeg-turbo \
    -I${LIBAROMA_PATH}/libs/harfbuzz-ng/src/hb-ucdn
echo " "
echo "      -------------------------"
echo " "
echo "    - Packing libaroma.a"
${AR} rcs ../libaroma.a *.o
echo "    - Cleanup"
rm *.o
cd ..
