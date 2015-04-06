#####################################################################[libaroma]#
## Copyright (C) 2011-2015 Ahmad Amarullah (http://amarullz.com/)
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##      http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##______________________________________________________________________________
##
## Filename    : Android.mk
## Description : Android make file
##
## + This is part of libaroma, an embedded ui toolkit.
## + 27/01/15 - Author(s): Ahmad Amarullah
##
#####################################################################[libaroma]#

##
## local path
##
LOCAL_PATH := $(call my-dir)
LIBAROMA_PATH := $(LOCAL_PATH)

##
## features configurations
##
LIBAROMA_MK_WITH_JPEG := true
LIBAROMA_MK_SHMEMFB := 1
LIBAROMA_MK_DEBUG_LEVEL := 5
LIBAROMA_MK_DEBUG_WITH_FILE := 2
LIBAROMA_MK_DEBUG_MEMORY_LEAK := 1
LIBAROMA_MK_DEBUG_COMPILER := 1

##
## device sources
##
LIBAROMA_MK_DEVICE_FILES := \
  src/contrib/linux/fb_driver.c \
  src/contrib/linux/hid_driver.c

##
## libs path
##
LIBAROMA_MK_ZLIB_PATH := external/zlib
LIBAROMA_MK_PNG_PATH := external/libpng
LIBAROMA_MK_JPEG_PATH := external/jpeg
LIBAROMA_MK_FREETYPE_PATH := $(LIBAROMA_PATH)/libs/freetype
LIBAROMA_MK_HARFBUZZNG_PATH := $(LIBAROMA_PATH)/libs/harfbuzz-ng
LIBAROMA_MK_MINZIP_PATH := $(LIBAROMA_PATH)/libs/minzip

##
## libs module name
##
LIBAROMA_MK_ZLIB_LIB := libz
LIBAROMA_MK_PNG_LIB := libpng
LIBAROMA_MK_JPEG_LIB := libjpeg_static
LIBAROMA_MK_FREETYPE_LIB := libft2_libaroma
LIBAROMA_MK_HARFBUZZNG_LIB := libharfbuzz_ng_libaroma
LIBAROMA_MK_MINZIP_LIB := libminzip_libaroma

################################################################################
##
## build libaroma static library
##
  include $(CLEAR_VARS)
  LOCAL_MODULE := libaroma
  LOCAL_MODULE_TAGS := optional
  
  ##
  ## sources
  ##
  LOCAL_SRC_FILES := \
    src/aroma/aroma.c \
    src/aroma/version.c \
    src/aroma/utils/*.c \
    src/aroma/debug/*.c \
    src/aroma/graph/*.c \
    src/aroma/graph/draw/*.c \
    src/aroma/graph/engine/*.c \
    src/aroma/hid/*.c \
    src/aroma/ui/*.c \
    src/aroma/controls/*.c \
    src/aroma/controls/listitem/*.c \
    \
    $(LIBAROMA_MK_DEVICE_FILES)
    $(LIBAROMA_MK_ENGINE_FILES)
  
  ##
  ## includes
  ##
  LOCAL_C_INCLUDES := \
    $(LIBAROMA_PATH)/include \
    $(LIBAROMA_MK_ZLIB_PATH) \
    $(LIBAROMA_MK_PNG_PATH) \
    $(LIBAROMA_MK_FREETYPE_PATH)/include \
    $(LIBAROMA_MK_HARFBUZZNG_PATH)/src \
    $(LIBAROMA_MK_HARFBUZZNG_PATH)/src/hb-ucdn \
    $(LIBAROMA_MK_MINZIP_PATH)
  
  ##
  ## cflags
  ##
  LOCAL_CFLAGS := \
    -O3 \
    -ffunction-sections -Wl,--gc-sections \
    -fPIC -DPIC -Wl,-s -Wall -Wextra -Wshadow -Werror -Wno-unused-parameter
  
  ##
  ## static libraries
  ##
  LOCAL_STATIC_LIBRARIES := \
    libm  libc \
    $(LIBAROMA_MK_ZLIB_LIB) \
    $(LIBAROMA_MK_PNG_LIB) \
    $(LIBAROMA_MK_FREETYPE_LIB) \
    $(LIBAROMA_MK_HARFBUZZNG_LIB) \
    $(LIBAROMA_MK_MINZIP_LIB)
  
  ##
  ## arm neon
  ##
  ifeq ($(ARCH_ARM_HAVE_NEON),true)
    AROMA_ARM_NEON    := true
    LOCAL_SRC_FILES += \
      src/contrib/arm_neon/*.c

    LOCAL_CFLAGS += \
      -D__ARM_HAVE_NEON \
      -mfloat-abi=softfp \
      -mfpu=neon
  endif
  
  ##
  ## with jpeg support
  ##
  ifeq ($(LIBAROMA_MK_WITH_JPEG),true)
    LOCAL_STATIC_LIBRARIES += $(LIBAROMA_MK_JPEG_LIB)
    LOCAL_C_INCLUDES += $(LIBAROMA_MK_JPEG_PATH)
  else
    LOCAL_CFLAGS += -DLIBAROMA_CONFIG_NOJPEG=1
  endif
  
  ##
  ## with shared memory framebuffer
  ##
  LOCAL_CFLAGS += \
    -DLIBAROMA_CONFIG_SHMEMFB=$(LIBAROMA_MK_SHMEMFB)
  
  ##
  ## debugging flags
  ##
  LOCAL_CFLAGS += \
    -DLIBAROMA_CONFIG_DEBUG=$(LIBAROMA_MK_DEBUG_LEVEL) \
    -DLIBAROMA_CONFIG_DEBUG_FILE=$(LIBAROMA_MK_DEBUG_WITH_FILE) \
    -DLIBAROMA_CONFIG_DEBUG_MEMORY=$(LIBAROMA_MK_DEBUG_MEMORY_LEAK) \
    -DLIBAROMA_CONFIG_COMPILER_MESSAGE=$(LIBAROMA_MK_DEBUG_COMPILER) \
  
  ## build as static library
  include $(BUILD_STATIC_LIBRARY)

################################################################################

##
## include minzip, harfbuzz-ng, freetype
##
include $(LIBAROMA_PATH)/libs/minzip/Android.mk
include $(LIBAROMA_PATH)/libs/harfbuzz-ng/Android.mk
include $(LIBAROMA_PATH)/libs/freetype/Android.mk

##[EOF]
