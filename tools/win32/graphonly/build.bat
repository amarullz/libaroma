@ECHO OFF

echo Compiling TEST GRAPH ONLY

%LIBAROMA_GCC% -static ^
  -Os ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror ^
  -ftree-vectorize -mvectorize-with-neon-quad ^
  -funsafe-math-optimizations ^
  -fopenmp -mfloat-abi=hard -mfpu=neon ^
 ^
  -D__ARM_HAVE_NEON ^
  -DLIBAROMA_CONFIG_TEXT_NOHARFBUZZ=1 ^
  -DLIBAROMA_CONFIG_NOMINZIP=1 ^
  -DLIBAROMA_CONFIG_NOJPEG=1 ^
  -DLIBAROMA_CONFIG_NOPNGWRITE=1 ^
  -DLIBAROMA_CONFIG_OPENMP=1 ^
  -DLIBAROMA_CONFIG_DEBUG_TRACE=0 ^
  -DLIBAROMA_CONFIG_DEBUG=3 ^
  -DLIBAROMA_CONFIG_DEBUG_FILE=0 ^
  -DLIBAROMA_CONFIG_DEBUG_MEMORY=0 ^
  -DLIBAROMA_CONFIG_COMPILER_MESSAGE=1 ^
  -DLIBAROMA_CONFIG_SHMEMFB=0 ^
  -DLIBAROMA_PFLINUX_DUMMY_PTHREAD=1 ^
  -DANDROID=1 ^
  -D__ANDROID__ ^
 ^
  -DZ_SOLO ^
  -DUSE_MMAP ^
  -DFT2_NO_HARFBUZZ=1 ^
  -DFT2_BUILD_LIBRARY ^
  -DDARWIN_NO_CARBON ^
 ^
  ../../../libs/zlib/src/adler32.c ^
	../../../libs/zlib/src/crc32.c ^
	../../../libs/zlib/src/infback.c ^
	../../../libs/zlib/src/inflate.c ^
	../../../libs/zlib/src/inftrees.c ^
	../../../libs/zlib/src/inffast.c ^
	../../../libs/zlib/src/trees.c ^
	../../../libs/zlib/src/zutil.c ^
 ^
  ../../../libs/png/png.c ^
  ../../../libs/png/pngerror.c ^
  ../../../libs/png/pngget.c ^
  ../../../libs/png/pngmem.c ^
  ../../../libs/png/pngpread.c ^
  ../../../libs/png/pngread.c ^
  ../../../libs/png/pngrio.c ^
  ../../../libs/png/pngrtran.c ^
  ../../../libs/png/pngrutil.c ^
  ../../../libs/png/pngset.c ^
  ../../../libs/png/pngtrans.c ^
 ^
  ../../../libs/png/arm/arm_init.c ^
  ../../../libs/png/arm/filter_neon.S ^
  ../../../libs/png/arm/filter_neon_intrinsics.c ^
 ^
  ../../../libs/freetype/src/base/ftbbox.c ^
  ../../../libs/freetype/src/base/ftbitmap.c ^
  ../../../libs/freetype/src/base/ftfstype.c ^
  ../../../libs/freetype/src/base/ftglyph.c ^
  ../../../libs/freetype/src/base/ftlcdfil.c ^
  ../../../libs/freetype/src/base/ftstroke.c ^
  ../../../libs/freetype/src/base/fttype1.c ^
  ../../../libs/freetype/src/base/ftbase.c ^
  ../../../libs/freetype/src/base/ftsystem.c ^
  ../../../libs/freetype/src/base/ftinit.c ^
  ../../../libs/freetype/src/base/ftgasp.c ^
  ../../../libs/freetype/src/raster/raster.c ^
  ../../../libs/freetype/src/sfnt/sfnt.c ^
  ../../../libs/freetype/src/smooth/smooth.c ^
  ../../../libs/freetype/src/autofit/autofit.c ^
  ../../../libs/freetype/src/truetype/truetype.c ^
  ../../../libs/freetype/src/cff/cff.c ^
  ../../../libs/freetype/src/cid/type1cid.c ^
  ../../../libs/freetype/src/bdf/bdf.c ^
  ../../../libs/freetype/src/type1/type1.c ^
  ../../../libs/freetype/src/type42/type42.c ^
  ../../../libs/freetype/src/winfonts/winfnt.c ^
  ../../../libs/freetype/src/pcf/pcf.c ^
  ../../../libs/freetype/src/pfr/pfr.c ^
  ../../../libs/freetype/src/psaux/psaux.c ^
  ../../../libs/freetype/src/psnames/psnames.c ^
  ../../../libs/freetype/src/pshinter/pshinter.c ^
  ../../../libs/freetype/src/gzip/ftgzip.c ^
  ../../../libs/freetype/src/lzw/ftlzw.c ^
 ^
  ../../../libs/harfbuzz-ng/src/hb-ucdn/ucdn.c ^
 ^
  ../../../src/contrib/platform/linux/fb_driver.c ^
  ../../../src/contrib/platform/linux/platform.c ^
 ^
  ../../../src/aroma/aroma.c ^
  ../../../src/aroma/version.c ^
 ^
  ../../../src/aroma/utils/array.c ^
  ../../../src/aroma/utils/minutf8.c ^
  ../../../src/aroma/utils/stream.c ^
  ../../../src/aroma/utils/strings.c ^
  ../../../src/aroma/utils/system.c ^
  ../../../src/aroma/utils/time.c ^
 ^
  ../../../src/aroma/graph/canvas.c ^
  ../../../src/aroma/graph/fb.c ^
  ../../../src/aroma/graph/image.c ^
  ../../../src/aroma/graph/png.c ^
  ../../../src/aroma/graph/text.c ^
 ^
  ../../../src/aroma/graph/draw/blur.c ^
  ../../../src/aroma/graph/draw/commondraw.c ^
  ../../../src/aroma/graph/draw/filters.c ^
  ../../../src/aroma/graph/draw/gradient.c ^
  ../../../src/aroma/graph/draw/path.c ^
  ../../../src/aroma/graph/draw/scale.c ^
 ^
  ../../../src/aroma/graph/engine/alignblt.c ^
  ../../../src/aroma/graph/engine/alpha.c ^
  ../../../src/aroma/graph/engine/blt.c ^
  ../../../src/aroma/graph/engine/color.c ^
  ../../../src/aroma/graph/engine/dither.c ^
 ^
  ../../../examples/libaroma_test_graphonly.c ^
 ^
  -I../../../include ^
  -I../../../src/contrib/platform/linux/include ^
  -I../../../src ^
  -I../../../libs/zlib/src ^
  -I../../../libs/freetype/builds ^
  -I../../../libs/freetype/include ^
  -I../../../libs/png ^
  -I../../../libs/harfbuzz-ng/src/hb-ucdn ^
 ^
  -o libaroma_test -lm -lrt

if "%1"=="-f" GOTO DONE
pause
:DONE