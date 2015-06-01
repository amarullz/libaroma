#!/bin/sh
cd ..
mkdir obj
cd obj
rm -rf *
cd ../libs
./makelibs_zlib.sh
./makelibs_freetype.sh
./makelibs_hb.sh
./makelibs_hbucdn.sh
./makelibs_minzip.sh
./makelibs_png.sh
./makelibs_jpeg.sh
