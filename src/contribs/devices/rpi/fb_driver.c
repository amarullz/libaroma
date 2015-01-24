/*
 * Copyright (C) 2011-2013 Ahmad Amarullah ( http://amarullz.com/ )
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * UNIVERSAL DEVICE - FRAMEBUFFER DRIVER
 *   Using Linux Framebuffer for Android
 *   Prefix : FBDR_
 *
 */
#ifndef __AROMA_CORE_RPI_FB_DRIVER__
#define __AROMA_CORE_RPI_FB_DRIVER__

/*
 * Headers Includes
 *
 */
#include <linux/fb.h>
#include <aroma_core.h>
#include <linux/kd.h>

#include "bcm_host.h"
/*
 * Defines & Macros
 *
 */
#define FBDR_DEVICE  "/dev/fb0"

/*
 * Structure : Internal Framebuffer Data
 *
 */
typedef struct {
  int       fb;                         /* Framebuffer Handler */
  byte      is32;                       /* Is 32bit Framebuffer? */
  struct    fb_fix_screeninfo   fix;    /* Linux Framebuffer Fix Info */
  struct    fb_var_screeninfo   var;    /* Linux Framebuffer Var Info */
  int       fb_sz;                      /* Framebuffer Memory Size */
  voidp     buffer;                     /* Direct Buffer */
  int       stride;                     /* Stride Size */
  int       line;                       /* Line Size */
  byte      depth;                      /* Color Depth */
  byte      pixsz;                      /* Memory Size per pixel */
  
  /* Needed By 32Bit Colorspace */
  byte      rgb_pos[6];                 /* Framebuffer RGB Position */
  byte      rgb_pos_normal;             /* Is RGB Position = 16,8,0,24 ? */
} FBDR_INTERNAL, *FBDR_INTERNALP;

/*
 * Include Colorspace Drivers
 *
 */
#include "fb_colorspace/fb_16bit.c" /* 16 Bit */
#include "fb_colorspace/fb_32bit.c" /* 32 Bit */

/*
 * Forward Functions
 *
 */
void FBDR_release(LIBAROMA_FBP me);
void FBDR_refresh(LIBAROMA_FBP me, int x, int y, int w, int h);
void FBDR_dump(FBDR_INTERNALP mi);

/*
 * Function : Framebuffer Driver Initializer
 *
 */
byte FBDR_init(LIBAROMA_FBP me) {
  /* Allocating Internal Data */
  ALOGV("FBDRIVER Initialized Internal Data");
  FBDR_INTERNALP mi = (FBDR_INTERNALP)
                      malloc(sizeof(FBDR_INTERNAL));
                      
  if (!mi) {
    ALOGE("FBDRIVER malloc internal data - Memory Error");
    return 0;
  }
  
  /* Cleanup */
  memset(mi, 0, sizeof(FBDR_INTERNAL));
  /* Set Internal Address */
  me->internal = (voidp) mi;
  /* Set Release and Refresh Callback */
  me->release = &FBDR_release;
  me->refresh = &FBDR_refresh;
  /* Open Framebuffer Device */
  mi->fb = open(FBDR_DEVICE, O_RDWR, 0);
  
  /* Check Device Access */
  if (mi->fb < 1) {
    ALOGE("FBDRIVER No Framebuffer Device");
    goto error; /* Exit If Error */
  }
  
  /* Get IO Data */
  ioctl(mi->fb, FBIOGET_FSCREENINFO, &mi->fix); /* Get Framebuffer Fix Info */
  ioctl(mi->fb, FBIOGET_VSCREENINFO, &mi->var); /* Get Framebuffer Var Info */
  //-- Update Framebuffer to 16bit Depth (1366x768 px)
#ifdef AROMA_RPI_FBXRES
  mi->var.xres            = AROMA_RPI_FBXRES;
#else
  mi->var.xres            = 1366;
#endif
#ifdef AROMA_RPI_FBYRES
  mi->var.yres            = AROMA_RPI_FBYRES;
#else
  mi->var.yres            = 768;
#endif
#ifdef AROMA_RPI_FBDEPTH
  mi->var.bits_per_pixel  = AROMA_RPI_FBDEPTH;
#else
  mi->var.bits_per_pixel  = 16;
#endif
  //-- Activating
  mi->var.activate |= FB_ACTIVATE_NOW | FB_ACTIVATE_FORCE;
  ioctl(mi->fb, FBIOPUT_VSCREENINFO, &mi->var);
  //-- Get Forced Data
  ioctl(mi->fb, FBIOGET_FSCREENINFO, &mi->fix);
  ioctl(mi->fb, FBIOGET_VSCREENINFO, &mi->var);
  
  /* 24bit is not supported - Sorry */
  if (mi->var.bits_per_pixel == 24) {
    ALOGE("FBDRIVER 24bit Framebuffer not supported");
    goto error; /* Exit If Error */
  }
  
  //-- Set KD_MODE
  int tty1 = open("/dev/tty1", O_RDWR);
  ioctl(tty1, KDSETMODE, KD_GRAPHICS);
  /* Set AROMA Core Framebuffer Instance Values */
  me->w        = mi->var.xres;                              /* Width */
  me->h        = mi->var.yres;                              /* Height */
  me->sz       = me->w * me->h;                             /* Width x Height */
  mi->line     = mi->fix.line_length;                       /* Line Memory Size */
  mi->depth    = mi->var.bits_per_pixel;                    /* Color Depth */
  mi->pixsz    = mi->depth >> 3;                            /* Pixel size per byte */
  mi->fb_sz    = (me->sz * mi->pixsz);                      /* FrameBuffer Size */
  /* Map Framebuffer */
  ALOGV("FBDRIVER mmap Framebuffer Memory");
  mi->buffer  = (voidp) mmap(
                  0, mi->fix.smem_len,
                  PROT_READ | PROT_WRITE, MAP_SHARED,
                  mi->fb, 0
                );
                
  if (!mi->buffer) {
    ALOGE("FBDRIVER mmap Framebuffer Memory Error");
    goto error; /* Exit If Error */
  }
  
  /* RGB Position non normal as default */
  mi->rgb_pos_normal  = 0;
  
  /* 16bit depth handler */
  if (mi->pixsz == 2) {
    /* Not 32bit Depth */
    mi->is32 = 0;
    /* Init Colorspace */
    FBDR_init_16bit(me);
    /* Set Sync Callbacks */
    me->sync     = &FBDR_sync_16bit;
    me->snapshoot = &FBDR_snapshoot_16bit;
  }
  else {
    mi->is32 = 1; /* It is 32bit Depth */
    /* Init Colorspace */
    FBDR_init_32bit(me);
    /* Set Sync Callbacks */
    me->sync     = &FBDR_sync_32bit;
    me->snapshoot = &FBDR_snapshoot_32bit;
  }
  
  /* DUMP INFO */
  FBDR_dump(mi);
  /* Calculate DPI */
  me->dpi = 160; /* Default 1 Pixel per 1 DP */ /* round(mi->var.xres / (mi->var.width * 0.039370) / 80) * 80; */
  /* OK */
  goto ok;
  /* Return */
error:
  free(mi);
  return 0;
ok:
  /* INIT BCM */
  ALOGV("Init BCM Host");
  bcm_host_init();
  aovgInitDisplay();
  return 1;
}

/*
 * Function : Release Framebuffer Instance (Same For All Colorspace)
 *
 */
void FBDR_release(LIBAROMA_FBP me) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  /* Release framebuffer memory map */
  ALOGV("FBDRIVER munmap buffer");
  munmap(mi->buffer, mi->fix.smem_len);
  /* Close framebuffer device */
  ALOGV("FBDRIVER close fb-fd");
  close(mi->fb);
  /* Free Internal Data */
  ALOGV("FBDRIVER free internal data");
  free(me->internal);
  /* Rollback KD MODE */
  int tty1 = open("/dev/tty1", O_RDWR);
  ioctl(tty1, KDSETMODE, KD_TEXT);
  aovgReleaseDisplay();
  bcm_host_deinit();
}

/*
 * Function : Refresh Display Framebuffer (Same For All Colorspace)
 *
 */
void FBDR_refresh(LIBAROMA_FBP me, int x, int y, int w, int h) {
}

/*
 * Function : Dump Framebuffer Informations
 *
 */
void FBDR_dump(FBDR_INTERNALP mi) {
  ALOGI("FRAMEBUFFER INFORMATIONS:");
  ALOGI("VAR");
  ALOGI(" xres           : %i", mi->var.xres);
  ALOGI(" yres           : %i", mi->var.yres);
  ALOGV(" xres_virtual   : %i", mi->var.xres_virtual);
  ALOGV(" yres_virtual   : %i", mi->var.yres_virtual);
  ALOGV(" xoffset        : %i", mi->var.xoffset);
  ALOGV(" yoffset        : %i", mi->var.yoffset);
  ALOGI(" bits_per_pixel : %i", mi->var.bits_per_pixel);
  ALOGI(" red            : %i, %i, %i", mi->var.red.offset, mi->var.red.length, mi->var.red.msb_right);
  ALOGI(" green          : %i, %i, %i", mi->var.green.offset, mi->var.green.length, mi->var.red.msb_right);
  ALOGI(" blue           : %i, %i, %i", mi->var.blue.offset, mi->var.blue.length, mi->var.red.msb_right);
  ALOGV(" transp         : %i, %i, %i", mi->var.transp.offset, mi->var.transp.length, mi->var.red.msb_right);
  ALOGV(" nonstd         : %i", mi->var.nonstd);
  ALOGV(" activate       : %i", mi->var.activate);
  ALOGV(" height         : %i", mi->var.height);
  ALOGV(" width          : %i", mi->var.width);
  ALOGV(" left_margin    : %i", mi->var.left_margin);
  ALOGV(" right_margin   : %i", mi->var.right_margin);
  ALOGV(" upper_margin   : %i", mi->var.upper_margin);
  ALOGV(" lower_margin   : %i", mi->var.lower_margin);
  ALOGV(" rotate         : %i", mi->var.rotate);
  ALOGI("FIX");
  ALOGI(" smem_len       : %i", mi->fix.smem_len);
  ALOGV(" type           : %i", mi->fix.type);
  ALOGV(" xpanstep       : %i", mi->fix.xpanstep);
  ALOGV(" ypanstep       : %i", mi->fix.ypanstep);
  ALOGV(" ywrapstep      : %i", mi->fix.ywrapstep);
  ALOGI(" line_length    : %i", mi->fix.line_length);
  ALOGV(" id             : %s", mi->fix.id);
}

/*
 * Function : libaroma init fb driver
 */
byte rpi_fb_driver_init(LIBAROMA_FBP me) {
  return FBDR_init(me);
}
#endif // __AROMA_CORE_RPI_FB_DRIVER__ 
