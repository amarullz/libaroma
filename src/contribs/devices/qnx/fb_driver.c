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
 * Description : QNX Framebuffer driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_qnxnto_fb_driver_c__
#define __libaroma_qnxnto_fb_driver_c__

/*
 * QNX - FRAMEBUFFER DRIVER
 *   Using QNX Graphic Frameworks
 *   Prefix : QNXGF_
 *
 */

/*
 * Headers Includes
 *
 */
#include <gf/gf.h>
#include <aroma.h>

/*
 * Structure : Internal Framebuffer Data
 *
 */
typedef struct {
  gf_dev_t            gdev;             /* Device */
  gf_dev_info_t       gdev_info;        /* Device Info */
  gf_display_t        display;          /* Display */
  gf_display_info_t   display_info;     /* Display Info */
  gf_layer_t          layer;            /* Layer */
  gf_surface_t        surface;          /* Surface */
  gf_context_t        context;          /* Context */
} QNXGF_INTERNAL, *QNXGF_INTERNALP;

/*
 * Forward Functions
 *
 */
void QNXGF_release(LIBAROMA_FBP me);
void QNXGF_dump(QNXGF_INTERNALP mi);
byte QNXGF_sync(LIBAROMA_FBP me, wordp src, int x, int y, int w, int h);

/*
 * Function : Framebuffer Driver Initializer
 *
 */
byte QNXGF_init(LIBAROMA_FBP me) {
  /* Allocating Internal Data */
  ALOGV("QNXGF Initialized Internal Data");
  QNXGF_INTERNALP mi = (QNXGF_INTERNALP) malloc(sizeof(QNXGF_INTERNAL));
  
  if (!mi) {
    ALOGE("QNXGF malloc internal data - Memory Error");
    return 0;
  }
  
  /* Cleanup */
  memset(mi, 0, sizeof(QNXGF_INTERNAL));
  /* Set Internal Address */
  me->internal = (voidp) mi;
  /* Set Release and Refresh Callback */
  me->release = &QNXGF_release;
  
  /*****************************************************************************
   *
   * Init QNX GF
   *
   **/
  
  /* Device Attach */
  if (gf_dev_attach(
        &mi->gdev, GF_DEVICE_INDEX(0), &mi->gdev_info
      ) != GF_ERR_OK) {
    ALOGE("QNXGF gf_dev_attach failed");
    goto error;
  }
  
  /* Display Attach */
  if (gf_display_attach(
        &mi->display, mi->gdev, 0, &mi->display_info
      ) != GF_ERR_OK) {
    ALOGE("QNXGF gf_display_attach failed");
    gf_dev_detach(mi->gdev);
    goto error;
  }
  
  /* Layer Attach */
  if (gf_layer_attach(
        &mi->layer, mi->display, 0, 0
      ) != GF_ERR_OK) {
    ALOGE("QNXGF gf_layer_attach failed");
    gf_display_detach(mi->display);
    gf_dev_detach(mi->gdev);
    goto error;
  }
  
  /* Create Surface */
  if (gf_surface_create_layer(
        &mi->surface, &mi->layer, 1, 0,
        mi->display_info.xres,
        mi->display_info.yres,
        GF_FORMAT_PKLE_RGB565,
        NULL, 0
      ) != GF_ERR_OK) {
    ALOGE("QNXGF gf_surface_create_layer failed");
    gf_layer_detach(mi->layer);
    gf_display_detach(mi->display);
    gf_dev_detach(mi->gdev);
    goto error;
  }
  
  /* Set Surface */
  gf_layer_set_surfaces(mi->layer, &mi->surface, 1);
  
  /* Create Context */
  if (gf_context_create(&mi->context) != GF_ERR_OK) {
    ALOGE("QNXGF gf_context_create failed");
    gf_surface_free(mi->surface);
    gf_layer_detach(mi->layer);
    gf_display_detach(mi->display);
    gf_dev_detach(mi->gdev);
    goto error;
  }
  
  /* Context Set Layer */
  if (gf_context_set_surface(mi->context, mi->surface) != GF_ERR_OK) {
    ALOGE("QNXGF gf_context_set_surface failed");
    gf_context_free(mi->context);
    gf_surface_free(mi->surface);
    gf_layer_detach(mi->layer);
    gf_display_detach(mi->display);
    gf_dev_detach(mi->gdev);
    goto error;
  }
  
  /*
   * End of Init QNX GF
   *
   ****************************************************************************/
  /* Set AROMA Core Framebuffer Instance Values */
  me->w       = mi->display_info.xres;            /* Width */
  me->h       = mi->display_info.yres;            /* Height */
  me->sz      = me->w * me->h;                    /* Width x Height */
  /* Set Sync Callbacks */
  me->sync      = &QNXGF_sync;
  me->snapshoot = NULL;
  /* DUMP INFO */
  QNXGF_dump(mi);
  /* Fixed DPI */
  me->dpi = 160;
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
void QNXGF_release(LIBAROMA_FBP me) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  QNXGF_INTERNALP mi = (QNXGF_INTERNALP) me->internal;
  /* Release GF */
  ALOGV("QNXGF Release Graphic Frameworks");
  gf_context_free(mi->context);
  gf_surface_free(mi->surface);
  gf_layer_detach(mi->layer);
  gf_display_detach(mi->display);
  gf_dev_detach(mi->gdev);
  /* Free Internal Data */
  ALOGV("QNXGF free internal data");
  free(me->internal);
}

/*
 * Function : Dump Framebuffer Informations
 *
 */
void QNXGF_dump(QNXGF_INTERNALP mi) {
  ALOGV("DISPLAY INFORMATIONS:");
  ALOGV(" xres           : %i", mi->display_info.xres);
  ALOGV(" yres           : %i", mi->display_info.yres);
  ALOGV(" refresh        : %i", mi->display_info.refresh);
}

/*
 * Function : Save display canvas into framebuffer
 *
 */
byte QNXGF_sync(LIBAROMA_FBP me, wordp src, int x, int y, int w, int h) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return 0;
  }
  
  /* Get Internal Data */
  QNXGF_INTERNALP mi = (QNXGF_INTERNALP) me->internal;
  
  /* BLIT */
  gf_draw_begin(mi->context);
  /* Defined Area Only */
  if ((w > 0) && (h > 0)) {
    wordp copy_src = (wordp) (src + (me->w * y) + x);
    gf_draw_image(
      mi->context,
      (const uint8_t *) copy_src,
      GF_FORMAT_PKLE_RGB565,
      me->w * 2,
      x, y,
      w, h,
      0
    );
  }
  else {
    gf_draw_image(
      mi->context,
      (const uint8_t *) src,
      GF_FORMAT_PKLE_RGB565,
      me->w * 2,
      0, 0,
      me->w, me->h,
      0
    );
  }
  gf_draw_flush(mi->context);
  gf_draw_end(mi->context);
  
  return 1;
}

/*
 * Function : libaroma init fb driver
 */
byte qnx_fb_driver_init(LIBAROMA_FBP me) {
  return QNXGF_init(me);
}

#endif /* __libaroma_qnxnto_fb_driver_c__ */
