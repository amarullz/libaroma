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
    $LIBAROMA_PATH/libs/jpeg/jcapimin.c \
    $LIBAROMA_PATH/libs/jpeg/jcapistd.c \
    $LIBAROMA_PATH/libs/jpeg/jccoefct.c \
    $LIBAROMA_PATH/libs/jpeg/jccolor.c \
    $LIBAROMA_PATH/libs/jpeg/jcdctmgr.c \
    $LIBAROMA_PATH/libs/jpeg/jchuff.c \
    $LIBAROMA_PATH/libs/jpeg/jcinit.c \
    $LIBAROMA_PATH/libs/jpeg/jcmainct.c \
    $LIBAROMA_PATH/libs/jpeg/jcmarker.c \
    $LIBAROMA_PATH/libs/jpeg/jcmaster.c \
    $LIBAROMA_PATH/libs/jpeg/jcomapi.c \
    $LIBAROMA_PATH/libs/jpeg/jcparam.c \
    $LIBAROMA_PATH/libs/jpeg/jcphuff.c \
    $LIBAROMA_PATH/libs/jpeg/jcprepct.c \
    $LIBAROMA_PATH/libs/jpeg/jcsample.c \
    $LIBAROMA_PATH/libs/jpeg/jctrans.c \
    $LIBAROMA_PATH/libs/jpeg/jdapimin.c \
    $LIBAROMA_PATH/libs/jpeg/jdapistd.c \
    $LIBAROMA_PATH/libs/jpeg/jdatadst.c \
    $LIBAROMA_PATH/libs/jpeg/jdatasrc.c \
    $LIBAROMA_PATH/libs/jpeg/jdcoefct.c \
    $LIBAROMA_PATH/libs/jpeg/jdcolor.c \
    $LIBAROMA_PATH/libs/jpeg/jddctmgr.c \
    $LIBAROMA_PATH/libs/jpeg/jdhuff.c \
    $LIBAROMA_PATH/libs/jpeg/jdinput.c \
    $LIBAROMA_PATH/libs/jpeg/jdmainct.c \
    $LIBAROMA_PATH/libs/jpeg/jdmarker.c \
    $LIBAROMA_PATH/libs/jpeg/jdmaster.c \
    $LIBAROMA_PATH/libs/jpeg/jdmerge.c \
    $LIBAROMA_PATH/libs/jpeg/jdphuff.c \
    $LIBAROMA_PATH/libs/jpeg/jdpostct.c \
    $LIBAROMA_PATH/libs/jpeg/jdsample.c \
    $LIBAROMA_PATH/libs/jpeg/jdtrans.c \
    $LIBAROMA_PATH/libs/jpeg/jerror.c \
    $LIBAROMA_PATH/libs/jpeg/jfdctflt.c \
    $LIBAROMA_PATH/libs/jpeg/jfdctfst.c \
    $LIBAROMA_PATH/libs/jpeg/jfdctint.c \
    $LIBAROMA_PATH/libs/jpeg/jidctflt.c \
    $LIBAROMA_PATH/libs/jpeg/jidctfst.c \
    $LIBAROMA_PATH/libs/jpeg/jidctint.c \
    $LIBAROMA_PATH/libs/jpeg/jidctred.c \
    $LIBAROMA_PATH/libs/jpeg/jquant1.c \
    $LIBAROMA_PATH/libs/jpeg/jquant2.c \
    $LIBAROMA_PATH/libs/jpeg/jutils.c \
    $LIBAROMA_PATH/libs/jpeg/jmemmgr.c \
    \
    $LIBAROMA_PATH/libs/jpeg/jmemansi.c \
  \
  \
  -I$LIBAROMA_PATH/libs/jpeg

cd ../libs
