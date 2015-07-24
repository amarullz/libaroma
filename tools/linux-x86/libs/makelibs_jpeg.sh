#!/bin/sh
cd ../obj


$LIBAROMA_GCC -c \
  -save-temps \
  -fdata-sections -ffunction-sections -Wl,--gc-sections \
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
  -fPIC -DPIC -Wl,-s -Werror \
 \
  $LIBAROMA_CFLAGS \
 \
  -DAVOID_TABLES \
 \
  ../../../libs/jpeg/jcapimin.c \
  ../../../libs/jpeg/jcapistd.c \
  ../../../libs/jpeg/jccoefct.c \
  ../../../libs/jpeg/jccolor.c \
  ../../../libs/jpeg/jcdctmgr.c \
  ../../../libs/jpeg/jchuff.c \
  ../../../libs/jpeg/jcinit.c \
  ../../../libs/jpeg/jcmainct.c \
  ../../../libs/jpeg/jcmarker.c \
  ../../../libs/jpeg/jcmaster.c \
  ../../../libs/jpeg/jcomapi.c \
  ../../../libs/jpeg/jcparam.c \
  ../../../libs/jpeg/jcphuff.c \
  ../../../libs/jpeg/jcprepct.c \
  ../../../libs/jpeg/jcsample.c \
  ../../../libs/jpeg/jctrans.c \
  ../../../libs/jpeg/jdapimin.c \
  ../../../libs/jpeg/jdapistd.c \
  ../../../libs/jpeg/jdatadst.c \
  ../../../libs/jpeg/jdatasrc.c \
  ../../../libs/jpeg/jdcoefct.c \
  ../../../libs/jpeg/jdcolor.c \
  ../../../libs/jpeg/jddctmgr.c \
  ../../../libs/jpeg/jdhuff.c \
  ../../../libs/jpeg/jdinput.c \
  ../../../libs/jpeg/jdmainct.c \
  ../../../libs/jpeg/jdmarker.c \
  ../../../libs/jpeg/jdmaster.c \
  ../../../libs/jpeg/jdmerge.c \
  ../../../libs/jpeg/jdphuff.c \
  ../../../libs/jpeg/jdpostct.c \
  ../../../libs/jpeg/jdsample.c \
  ../../../libs/jpeg/jdtrans.c \
  ../../../libs/jpeg/jerror.c \
  ../../../libs/jpeg/jfdctflt.c \
  ../../../libs/jpeg/jfdctfst.c \
  ../../../libs/jpeg/jfdctint.c \
  ../../../libs/jpeg/jidctflt.c \
  ../../../libs/jpeg/jidctfst.c \
  ../../../libs/jpeg/jidctint.c \
  ../../../libs/jpeg/jidctred.c \
  ../../../libs/jpeg/jquant1.c \
  ../../../libs/jpeg/jquant2.c \
  ../../../libs/jpeg/jutils.c \
  ../../../libs/jpeg/jmemmgr.c \
  \
  \
  -I../../../libs/jpeg

cd ../libs
