# project config
cmake_minimum_required(VERSION 2.8)
project(jpeg)

# jpeg
add_library(jpeg STATIC 
	jcapimin.c
	jcapistd.c
	jccoefct.c
	jccolor.c
	jcdctmgr.c
	jchuff.c
	jcinit.c
	jcmainct.c
	jcmarker.c
	jcmaster.c
	jcomapi.c
	jcparam.c
	jcphuff.c
	jcprepct.c
	jcsample.c
	jctrans.c
	jdapimin.c
	jdapistd.c
	jdatadst.c
	jdatasrc.c
	jdcoefct.c
	jdcolor.c
	jddctmgr.c
	jdhuff.c
	jdinput.c
	jdmainct.c
	jdmarker.c
	jdmaster.c
	jdmerge.c
	jdphuff.c
	jdpostct.c
	jdsample.c
	jdtrans.c
	jerror.c
	jfdctflt.c
	jfdctfst.c
	jfdctint.c
	jidctflt.c
	jidctfst.c
	jidctint.c
	jidctred.c
	jquant1.c
	jquant2.c
	jutils.c
	jmemmgr.c
	 
	 
	jsimd_arm_neon.S
	jsimd_neon.c
	jmem-android.c
)

# cflags
set_target_properties(jpeg PROPERTIES COMPILE_FLAGS "\
	-save-temps \
	-fdata-sections -ffunction-sections -Wl,--gc-sections \
	-D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG \
	-fPIC -DPIC -Wl,-s -Werror \
\
	-DAVOID_TABLES \
	-DNV_ARM_NEON \
	-DANDROID_TILE_BASED_DECODE \
")
