#!/bin/sh
cd ../obj

$LIBAROMA_GCC -ggdb -c -save-temps -Wno-implicit-function-declaration -DSQLITE_OMIT_LOAD_EXTENSION=1 \
  ../../src/sqlite/sqlite3.c \
  -I../../src/sqlite

cd ..
