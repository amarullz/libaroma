# project config
cmake_minimum_required(VERSION 2.8)
project(freetype)

# freetype
add_library(freetype STATIC 
	src/base/ftbbox.c
	src/base/ftbitmap.c
	src/base/ftfstype.c
	src/base/ftglyph.c
	src/base/ftlcdfil.c
	src/base/ftstroke.c
	src/base/fttype1.c
	src/base/ftbase.c
	src/base/ftsystem.c
	src/base/ftinit.c
	src/base/ftgasp.c
	src/raster/raster.c
	src/sfnt/sfnt.c
	src/smooth/smooth.c
	src/autofit/autofit.c
	src/truetype/truetype.c
	src/cff/cff.c
	src/cid/type1cid.c
	src/bdf/bdf.c
	src/type1/type1.c
	src/type42/type42.c
	src/winfonts/winfnt.c
	src/pcf/pcf.c
	src/pfr/pfr.c
	src/psaux/psaux.c
	src/psnames/psnames.c
	src/pshinter/pshinter.c
	src/gzip/ftgzip.c
	src/lzw/ftlzw.c
)

# cflags
if (NOT DEFINED NOHARFBUZZNG)
set_target_properties(freetype PROPERTIES COMPILE_FLAGS "-DFT2_BUILD_LIBRARY -DDARWIN_NO_CARBON -save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")
else()
set_target_properties(freetype PROPERTIES COMPILE_FLAGS "-DFT2_NO_HARFBUZZ -DFT2_BUILD_LIBRARY -DDARWIN_NO_CARBON -save-temps -fdata-sections -ffunction-sections -Wl,--gc-sections -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG -fPIC -DPIC -Wl,-s -Werror")
endif()

# dependencies
add_dependencies(freetype z)
target_link_libraries(freetype z harfbuzz)
