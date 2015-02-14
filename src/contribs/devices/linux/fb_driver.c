/********************************************************************[libaroma]*
 * Copyright (C) 2011-2015 Ahmad Amarullah (http://amarullz.com/)
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
 *______________________________________________________________________________
 *
 * Filename    : fb_driver.c
 * Description : linux framebuffer driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_linux_fb_driver_c__
#define __libaroma_linux_fb_driver_c__

/*
 *   Using Linux Framebuffer for Android & Linux
 *   Prefix : LINUXFBDR_
 */

/*
 * headers
 */
#include <linux/fb.h>
#include <aroma.h>

/*
 * device path
 */
#define LINUXFBDR_DEVICE              "/dev/graphics/fb0"
#define LINUXFBDR_DEVICE_NON_ANDROID  "/dev/fb0"

/*
 * structure : internal framebuffer data
 */
typedef struct {
  int       fb;                         /* framebuffer handler */
  byte      is32;                       /* is 32bit framebuffer? */
  struct    fb_fix_screeninfo   fix;    /* linux framebuffer fix info */
  struct    fb_var_screeninfo   var;    /* linux framebuffer var info */
  int       fb_sz;                      /* framebuffer memory size */
  voidp     buffer;                     /* direct buffer */
  int       stride;                     /* stride size */
  int       line;                       /* line size */
  byte      depth;                      /* color depth */
  byte      pixsz;                      /* memory size per pixel */
  int       syncn;
  
  /* needed by 32bit colorspace */
  byte      rgb_pos[6];                 /* framebuffer rgb position */
  byte      rgb_pos_normal;             /* is rgb position = 16,8,0,24 ? */
} LINUXFBDR_INTERNAL, *LINUXFBDR_INTERNALP;

/*
 * forward functions
 */
void LINUXFBDR_release(LIBAROMA_FBP me);
void LINUXFBDR_refresh(LIBAROMA_FBP me);
void LINUXFBDR_dump(LINUXFBDR_INTERNALP mi);

/*
 * include colorspace drivers
 */
#include "fb_colorspace/fb_16bit.c" /* 16 bit */
#include "fb_colorspace/fb_32bit.c" /* 32 bit */

/*
 * function : framebuffer driver initializer
 */
byte LINUXFBDR_init(LIBAROMA_FBP me) {
  /* Allocating Internal Data */
  ALOGV("FBDRIVER Initialized Internal Data");
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP)
                      malloc(sizeof(LINUXFBDR_INTERNAL));
                      
  if (!mi) {
    ALOGE("FBDRIVER malloc internal data - Memory Error");
    return 0;
  }
  
  /* Cleanup */
  memset(mi, 0, sizeof(LINUXFBDR_INTERNAL));
  /* Set Internal Address */
  me->internal = (voidp) mi;
  /* Set Release and Refresh Callback */
  me->release = &LINUXFBDR_release;
  /* Open Framebuffer Device */
  mi->fb = open(LINUXFBDR_DEVICE, O_RDWR, 0);
  
  /* If Not Works, Try Non Android Standard Device Path */
  if (mi->fb < 1) {
    mi->fb = open(LINUXFBDR_DEVICE_NON_ANDROID, O_RDWR, 0);
  }
  
  /* check device access */
  if (mi->fb < 1) {
    ALOGE("FBDRIVER No Framebuffer Device");
    goto error; /* Exit If Error */
  }
  
  /* get io data */
  ioctl(mi->fb, FBIOGET_FSCREENINFO, &mi->fix); /* fix info */
  ioctl(mi->fb, FBIOGET_VSCREENINFO, &mi->var); /* var info */
  
  /* 24bit is not supported - sorry */
  if (mi->var.bits_per_pixel == 24) {
    ALOGE("FBDRIVER 24bit Framebuffer not supported");
    goto error; /* Exit If Error */
  }
  
  // ioctl(mi->fb, FBIOBLANK, FB_BLANK_UNBLANK);
  
  /* try to force 32bit libaroma color mode (bgra)
  if (mi->var.bits_per_pixel==32){
    mi->var.red.offset         = 16;
    mi->var.red.length         = 8;
    mi->var.red.msb_right      = 0;
    mi->var.green.offset       = 8;
    mi->var.green.length       = 8;
    mi->var.green.msb_right    = 0;
    mi->var.blue.offset        = 0;
    mi->var.blue.length        = 8;
    mi->var.blue.msb_right     = 0;
    mi->var.transp.offset      = 24;
    mi->var.transp.length      = 8;
    mi->var.transp.msb_right   = 0;
  
    // activating
    mi->var.activate |= FB_ACTIVATE_NOW | FB_ACTIVATE_FORCE;
    ioctl(mi->fb, FBIOPUT_VSCREENINFO, &mi->var);
  
    // get forced data
    ioctl(mi->fb, FBIOGET_FSCREENINFO, &mi->fix);
    ioctl(mi->fb, FBIOGET_VSCREENINFO, &mi->var);
  } */
  
  /* set libaroma framebuffer instance values */
  me->w        = mi->var.xres;              /* width */
  me->h        = mi->var.yres;              /* height */
  me->sz       = me->w * me->h;             /* width x height */
  mi->line     = mi->fix.line_length;       /* line memory size */
  mi->depth    = mi->var.bits_per_pixel;    /* color depth */
  mi->pixsz    = mi->depth >> 3;            /* pixel size per byte */
  mi->fb_sz    = (me->sz * mi->pixsz);      /* framebuffer size */
  mi->syncn    = 0;
  
  /* map framebuffer */
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
    LINUXFBDR_init_16bit(me);
    /* Set Sync Callbacks */
    me->sync     = &LINUXFBDR_sync_16bit;
    me->snapshoot = &LINUXFBDR_snapshoot_16bit;
  }
  else {
    mi->is32 = 1; /* It is 32bit Depth */
    /* Init Colorspace */
    LINUXFBDR_init_32bit(me);
    /* Set Sync Callbacks */
    me->sync     = &LINUXFBDR_sync_32bit;
    me->snapshoot = &LINUXFBDR_snapshoot_32bit;
  }
  
  /* DUMP INFO */
  LINUXFBDR_dump(mi);
  
  me->dpi = 0;
#ifdef __ANDROID__
  // ro.sf.lcd_density
#endif

  if (me->dpi<160){
    if ((mi->var.width<= 0)||(mi->var.height <= 0)) {
      /* phone dpi */
      me->dpi = floor(MIN(mi->var.xres,mi->var.yres)/160) * 80;
    }
    else{
      /* Calculate DPI */
      me->dpi = round(mi->var.xres / (mi->var.width * 0.039370) / 80) * 80;
    }
  }

  /* OK */
  goto ok;
  /* Return */
error:
  free(mi);
  return 0;
ok:
  return 1;
}

/*
 * Function : Release Framebuffer Instance (Same For All Colorspace)
 *
 */
void LINUXFBDR_release(LIBAROMA_FBP me) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  /* Release framebuffer memory map */
  ALOGV("FBDRIVER munmap buffer");
  munmap(mi->buffer, mi->fix.smem_len);
  /* Close framebuffer device */
  ALOGV("FBDRIVER close fb-fd");
  close(mi->fb);
  /* Free Internal Data */
  ALOGV("FBDRIVER free internal data");
  free(me->internal);
}

/*
 * Function : Refresh Display Framebuffer (Same For All Colorspace)
 *
 */
void LINUXFBDR_refresh(LIBAROMA_FBP me) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }

  /* Get Internal Data */
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  /* Refresh Display */
  mi->var.yoffset   = 0;
  mi->var.activate |= FB_ACTIVATE_NOW | FB_ACTIVATE_FORCE;
  ioctl(mi->fb, FBIOPUT_VSCREENINFO, &mi->var);
}

/*
 * Function : Dump Framebuffer Informations
 *
 */
void LINUXFBDR_dump(LINUXFBDR_INTERNALP mi) {
  ALOGI("FRAMEBUFFER INFORMATIONS:");
  ALOGI("VAR");
  ALOGI(" xres           : %i", mi->var.xres);
  ALOGI(" yres           : %i", mi->var.yres);
  ALOGV(" xres_virtual   : %i", mi->var.xres_virtual);
  ALOGV(" yres_virtual   : %i", mi->var.yres_virtual);
  ALOGV(" xoffset        : %i", mi->var.xoffset);
  ALOGV(" yoffset        : %i", mi->var.yoffset);
  ALOGI(" bits_per_pixel : %i", mi->var.bits_per_pixel);
  ALOGV(" grayscale      : %i", mi->var.grayscale);
  ALOGI(" red            : %i, %i, %i", 
    mi->var.red.offset, mi->var.red.length, mi->var.red.msb_right);
  ALOGI(" green          : %i, %i, %i", 
    mi->var.green.offset, mi->var.green.length, mi->var.red.msb_right);
  ALOGI(" blue           : %i, %i, %i", 
    mi->var.blue.offset, mi->var.blue.length, mi->var.red.msb_right);
  ALOGV(" transp         : %i, %i, %i", 
    mi->var.transp.offset, mi->var.transp.length, mi->var.red.msb_right);
  ALOGV(" nonstd         : %i", mi->var.nonstd);
  ALOGV(" activate       : %i", mi->var.activate);
  ALOGV(" height         : %i", mi->var.height);
  ALOGV(" width          : %i", mi->var.width);
  ALOGV(" accel_flags    : %i", mi->var.accel_flags);
  ALOGV(" pixclock       : %i", mi->var.pixclock);
  ALOGV(" left_margin    : %i", mi->var.left_margin);
  ALOGV(" right_margin   : %i", mi->var.right_margin);
  ALOGV(" upper_margin   : %i", mi->var.upper_margin);
  ALOGV(" lower_margin   : %i", mi->var.lower_margin);
  ALOGV(" hsync_len      : %i", mi->var.hsync_len);
  ALOGV(" vsync_len      : %i", mi->var.vsync_len);
  ALOGV(" sync           : %i", mi->var.sync);
  ALOGV(" rotate         : %i", mi->var.rotate);
  
  ALOGI("FIX");
  ALOGI(" id             : %s", mi->fix.id);
  ALOGI(" smem_len       : %i", mi->fix.smem_len);
  ALOGV(" type           : %i", mi->fix.type);
  ALOGV(" type_aux       : %i", mi->fix.type_aux);
  ALOGV(" visual         : %i", mi->fix.visual);
  ALOGV(" xpanstep       : %i", mi->fix.xpanstep);
  ALOGV(" ypanstep       : %i", mi->fix.ypanstep);
  ALOGV(" ywrapstep      : %i", mi->fix.ywrapstep);
  ALOGI(" line_length    : %i", mi->fix.line_length);
  ALOGV(" accel          : %i", mi->fix.accel);
}

/*
 * Function : libaroma init fb driver
 */
byte __linux_fb_driver_init(LIBAROMA_FBP me) {
  return LINUXFBDR_init(me);
}

#endif /* __libaroma_linux_fb_driver_c__ */
