#!/bin/sh
cd ..
mkdir obj
cd obj
rm -rf *
cd ../libs
# ./makelibs_zlib.sh
echo FT
./makelibs_freetype.sh

# echo HB
# ./makelibs_hb.sh

echo HBUCDN
./makelibs_hbucdn.sh
echo MINZIP
./makelibs_minzip.sh
echo PNG
./makelibs_png.sh
echo JPEG
./makelibs_jpeg.sh
echo SQLITE
./build_sqlite.sh
echo AROMA
./build_libaroma.sh