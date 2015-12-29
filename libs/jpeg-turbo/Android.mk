# Android (AOSP and NDK) makefile for jpeg-turbo library

LOCAL_PATH:= $(call my-dir)

ifeq ($(BUILD_DEBUG),)
ifeq ($(APP_OPTIM),debug)
BUILD_DEBUG:=true
endif
endif

ifeq ($(JPEGTURBO_BUILD_TEST),)
JPEGTURBO_BUILD_TEST:=true
endif

# If true, also build as a shared library
JPEGTURBO_SHARED=false

# Version of JPEG API to compile
JPEGTURBO_CFLAGS := -DJPEG_LIB_VERSION=62

# Don't allow runtime behavior change
JPEGTURBO_CFLAGS += -DNO_GETENV

# Those options are available only with API >= 70
JPEGTURBO_WITH_ARITH:=false
JPEGTURBO_WITH_ARITH_ENC:=false
JPEGTURBO_WITH_ARITH_DEC:=false

# ashmem support not exposed as NDK API
JPEGTURBO_WITH_ASHMEM:=0
ifeq ($(NDK_ROOT),)
ifneq ($(BUILD_HOST),true)
JPEGTURBO_WITH_ASHMEM:=true
endif
endif

# List of source files
JPEGTURBO_SRC_FILES := jcapimin.c jcapistd.c jccoefct.c jccolor.c
JPEGTURBO_SRC_FILES += jcdctmgr.c jchuff.c jcinit.c jcmainct.c jcmarker.c
JPEGTURBO_SRC_FILES += jcmaster.c jcomapi.c jcparam.c jcphuff.c jcprepct.c
JPEGTURBO_SRC_FILES += jcsample.c jctrans.c jdapimin.c jdapistd.c jdatadst.c
JPEGTURBO_SRC_FILES += jdatasrc.c jdcoefct.c jdcolor.c jddctmgr.c jdhuff.c
JPEGTURBO_SRC_FILES += jdinput.c jdmainct.c jdmarker.c jdmaster.c jdmerge.c
JPEGTURBO_SRC_FILES += jdphuff.c jdpostct.c jdsample.c jdtrans.c jerror.c
JPEGTURBO_SRC_FILES += jfdctflt.c jfdctfst.c jfdctint.c jidctflt.c jidctfst.c
JPEGTURBO_SRC_FILES += jidctint.c jidctred.c jquant1.c jquant2.c jutils.c
JPEGTURBO_SRC_FILES += jmemmgr.c

ifeq ($(JPEGTURBO_WITH_ARITH),true)
JPEGTURBO_SRC_FILES += jaricom.c
endif
ifeq ($(JPEGTURBO_WITH_ARITH_ENC),true)
JPEGTURBO_SRC_FILES += jcarith.c
endif
ifeq ($(JPEGTURBO_WITH_ARITH_DEC),true)
JPEGTURBO_SRC_FILES += jdarith.c
endif

JPEGTURBO_SRC_FILES += \
	turbojpeg.c \
	transupp.c \
	jdatadst-tj.c jdatasrc-tj.c

ifeq ($(TARGET_ARCH_ABI),)
TARGET_ARCH_ABI:=$(TARGET_ARCH)
endif

JPEGTURBO_CFLAGS += -I$(LOCAL_PATH)/prebuilt/include/

# Determine which platform-specific optimization to enable
JPEGTURBO_ARCH_OPTIM:=none
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
ifneq ($(BUILD_IOS),true)
# TODO: clang assembler from recent Xcode fails to compile GNU as jsimd_arm_neon.S
JPEGTURBO_ARCH_OPTIM:=neon
endif
endif
ifeq ($(TARGET_ARCH_ABI),x86_64)
# iOS target doesn't have a valid nasm compiler
ifneq ($(BUILD_IOS),true)
JPEGTURBO_ARCH_OPTIM:=x86_64
endif
endif

ifeq ($(JPEGTURBO_ARCH_OPTIM),neon)
# If defining __ARM_NEON__ at build time, NEON support will always
# be enabled, without further check at runtime. Such build will
# throw an illegal instruction signal if executed on a armv7a
# device without NEON support (e.g. Tegra 2)
# JPEGTURBO_CFLAGS += -D__ARM_NEON__

# Runtime detection in jpeg-turbo is done parsing /proc/cpuinfo. On
# Android, NDK provides cpufeatures library that will run this detection
# in a more efficient way.
# JPEGTURBO_CFLAGS += -DJPEG_USE_ANDROID_CPUFEATURES=1

JPEGTURBO_SRC_FILES += \
	simd/jsimd_arm_neon.S \
	simd/jsimd_arm.c

JPEGTURBO_CFLAGS += -DWITH_SIMD=1
endif
ifeq ($(JPEGTURBO_ARCH_OPTIM),x86_64)
JPEGTURBO_SRC_FILES += simd/jsimd_x86_64.c

JPEGTURBO_SRC_FILES += simd/jfsseflt-64.asm
JPEGTURBO_SRC_FILES += simd/jcgrass2-64.asm
JPEGTURBO_SRC_FILES += simd/jccolss2-64.asm
JPEGTURBO_SRC_FILES += simd/jdcolss2-64.asm
JPEGTURBO_SRC_FILES += simd/jcsamss2-64.asm
JPEGTURBO_SRC_FILES += simd/jdsamss2-64.asm
JPEGTURBO_SRC_FILES += simd/jdmerss2-64.asm
JPEGTURBO_SRC_FILES += simd/jcqnts2i-64.asm
JPEGTURBO_SRC_FILES += simd/jfss2fst-64.asm
JPEGTURBO_SRC_FILES += simd/jfss2int-64.asm
JPEGTURBO_SRC_FILES += simd/jiss2red-64.asm
JPEGTURBO_SRC_FILES += simd/jiss2int-64.asm
JPEGTURBO_SRC_FILES += simd/jiss2fst-64.asm
JPEGTURBO_SRC_FILES += simd/jcqnts2f-64.asm
JPEGTURBO_SRC_FILES += simd/jiss2flt-64.asm

JPEGTURBO_CFLAGS += -DWITH_SIMD=1
endif
ifeq ($(JPEGTURBO_ARCH_OPTIM),x86)
JPEGTURBO_SRC_FILES += simd/jsimd_i386.c
endif
ifeq ($(JPEGTURBO_ARCH_OPTIM),none)
# On unsupported platforms, fallback to pure C implementation
JPEGTURBO_SRC_FILES += jsimd_none.c
endif

ifeq ($(JPEG_WITH_ASHMEM),true)
# Use ashmem as backing store in decoder
JPEGTURBO_CFLAGS += -DUSE_ANDROID_ASHMEM
JPEGTURBO_SRC_FILES += \
	jmem-ashmem.c
else
# Use standard (libc) memory allocator
JPEGTURBO_SRC_FILES += \
	jmemnobs.c
endif

# the original android memory manager.
# use sdcard as libjpeg decoder's backing store
#JPEGTURBO_SRC_FILES += \
#	jmem-android.c

JPEGTURBO_CFLAGS += -DAVOID_TABLES=1
ifeq ($(BUILD_DEBUG),true)
# Debug build, turn off all optimization
JPEGTURBO_CFLAGS += -DDEBUG -UNDEBUG -O0 -g
else
# Performance for this specific library requires pushing further
# optimization level, and favor performance over code size
JPEGTURBO_CFLAGS += -O3
JPEGTURBO_CFLAGS += -fstrict-aliasing
ifneq ($(TARGET_COMPILER),clang)
# -fprefetch-loop-arrays is a GCC specific option, not supported
# by clang
JPEGTURBO_CFLAGS += -fprefetch-loop-arrays
endif
endif

# Static library
include $(CLEAR_VARS)

LOCAL_MODULE:= libyahoo_jpegturbo
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(JPEGTURBO_SRC_FILES)
LOCAL_CFLAGS := $(JPEGTURBO_CFLAGS)
LOCAL_ARM_MODE := arm
LOCAL_PRELINK_MODULE := false

# If uncommented, export all headers in this directory to be available
# from other module relying on this package, without having to add this
# directory into their header search path
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) 

# If static library has to be linked inside a larger shared library later,
# all code has to be compiled as PIC (Position Independant Code)
LOCAL_CFLAGS += -fPIC -DPIC
LOCAL_NASMFLAGS += -DPIC -I$(LOCAL_PATH)/simd/
ifeq ($(TARGET_ARCH_ABI),x86_64)
LOCAL_NASMFLAGS += -I$(LOCAL_PATH)/prebuilt/x86_64/
endif

ifneq ($(NDK_ROOT),)
# AOSP toolchain supports gold linker
LOCAL_LDLIBS += -fuse-ld=gold 
endif
include $(BUILD_STATIC_LIBRARY)

# Shared library
ifeq ($(JPEGTURBO_SHARED),true)
# Shared library
include $(CLEAR_VARS)

LOCAL_MODULE:= libyahoo_jpegturbo
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(JPEGTURBO_SRC_FILES)
LOCAL_CFLAGS := $(JPEGTURBO_CFLAGS)
LOCAL_ARM_MODE := arm
LOCAL_PRELINK_MODULE := false

ifeq ($(JPEGTURBO_WITH_ASHMEM),true)
LOCAL_SHARED_LIBRARIES += libcutils
endif

ifneq ($(NDK_ROOT),)
LOCAL_LDLIBS += -fuse-ld=gold 
endif
include $(BUILD_SHARED_LIBRARY)
endif

# JPEG transcode command line tool
ifeq ($(JPEGTURBO_BUILD_TEST),true)

include $(CLEAR_VARS)
LOCAL_MODULE := jpegtran
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := rdswitch.c cdjpeg.c jpegtran.c
LOCAL_CFLAGS := $(JPEGTURBO_CFLAGS)

LOCAL_STATIC_LIBRARIES += libyahoo_jpegturbo

include $(BUILD_EXECUTABLE)

endif
