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
 * Description : SDL framebuffer driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_sdl_fb_driver_c__
#define __libaroma_sdl_fb_driver_c__

/* include fb_driver.h */
#include "fb_driver.h"

/*
 * Function    : SDLFBDR_start_post
 * Return Value: byte
 * Descriptions: start post
 */
byte SDLFBDR_start_post(LIBAROMA_FBP me){
  if (me == NULL) {
    return 0;
  }
  SDLFBDR_INTERNALP mi = (SDLFBDR_INTERNALP) me->internal;
  libaroma_mutex_lock(mi->mutex);
  return 1;
}

/*
 * Function    : SDLFBDR_end_post
 * Return Value: byte
 * Descriptions: end post
 */
byte SDLFBDR_end_post(LIBAROMA_FBP me){
  if (me == NULL) {
    return 0;
  }
  SDLFBDR_INTERNALP mi = (SDLFBDR_INTERNALP) me->internal;
  SDLFBDR_flush(me);
  libaroma_mutex_unlock(mi->mutex);
  return 1;
}

/*
 * Function    : SDLFBDR_post
 * Return Value: byte
 * Descriptions: post data
 */
byte SDLFBDR_post(
  LIBAROMA_FBP me, wordp __restrict src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
  ){
  if (me == NULL) {
    return 0;
  }
  SDLFBDR_INTERNALP mi = (SDLFBDR_INTERNALP) me->internal;
  
  int sstride = (sw - dw) * 2;
  int dstride = (mi->line - (dw * mi->pixsz));
  wordp copy_dst =
    (wordp) (((bytep) mi->buffer)+(mi->line * dy)+(dx * mi->pixsz));
  wordp copy_src = 
    (wordp) (src + (sw * sy) + sx);
  libaroma_blt_align16(
    copy_dst,
    copy_src,
    dw, dh,
    dstride,
    sstride
  );
  return 1;
}

/*
 * Function    : SDLFBDR_init
 * Return Value: byte
 * Descriptions: init framebuffer
 */
byte SDLFBDR_init(LIBAROMA_FBP me) {
  ALOGV("SDLFBDR initialized internal data");
  
  /* allocating internal data */
  SDLFBDR_INTERNALP mi = (SDLFBDR_INTERNALP)
                      calloc(sizeof(SDLFBDR_INTERNAL),1);
  if (!mi) {
    ALOGE("SDLFBDR calloc internal data - memory error");
    return 0;
  }

  if(SDL_Init(SDL_INIT_VIDEO) < 0) {
		ALOGE("Couldn't init SDL: %s", SDL_GetError());
    return 0;
  }
  
  /* set internal address */
  me->internal = (voidp) mi;
  
  /* set release callback */
  me->release = &SDLFBDR_release;
  
  /* init mutex & cond */
  libaroma_mutex_init(mi->mutex);

  mi->window = SDL_SetVideoMode(360, 600, 16, SDL_HWSURFACE);
  if(!mi->window)
    mi->window = SDL_SetVideoMode (360, 600, 16, SDL_SWSURFACE);
  if(!mi->window) {
    ALOGE("SDLFBDR could not create SDL surface");
    goto error;
  }

  /* set libaroma framebuffer instance values */
  me->w = mi->window->w;    /* width */
  me->h = mi->window->h;    /* height */
  me->sz = me->w * me->h;   /* width x height */
  
  /* set internal useful data */
  mi->buffer    = mi->window->pixels;
  mi->depth     = mi->window->format->BitsPerPixel;
  mi->pixsz     = mi->depth >> 3;
  mi->line      = me->w * mi->pixsz;
  mi->fb_sz     = (me->w * me->h * mi->pixsz);
  
  /* swap buffer now */
  SDLFBDR_flush(me);
 
  mi->stride = mi->line - (me->w * mi->pixsz);
  me->start_post  = &SDLFBDR_start_post;
  me->end_post    = &SDLFBDR_end_post;
  me->post        = &SDLFBDR_post;
  me->snapshoot   = NULL;
  
  /* ok */
  goto ok;
  /* return */
error:
  free(mi);
  return 0;
ok:
  return 1;
} /* End of SDLFBDR_init */

/*
 * Function    : SDLFBDR_release
 * Return Value: void
 * Descriptions: release framebuffer driver
 */
void SDLFBDR_release(LIBAROMA_FBP me) {
  if (me==NULL) {
    return;
  }
  SDLFBDR_INTERNALP mi = (SDLFBDR_INTERNALP) me->internal;
  if (mi==NULL){
    return;
  }
  
  SDL_Quit();
  
  /* destroy mutex & cond */
  libaroma_mutex_free(mi->mutex);
  
  /* free internal data */
  ALOGV("SDLFBDR free internal data");
  free(me->internal);
} /* End of SDLFBDR_release */

/*
 * Function    : SDLFBDR_flush
 * Return Value: byte
 * Descriptions: flush content into display & wait for vsync
 */
byte SDLFBDR_flush(LIBAROMA_FBP me) {
  if (me == NULL) {
    return 0;
  }
  SDLFBDR_INTERNALP mi = (SDLFBDR_INTERNALP) me->internal;
  
  // fsync(mi->fb);
  SDL_Flip(mi->window);

  return 1;
} /* End of SDLFBDR_flush */



/*
 * Function    : libaroma_fb_driver_init
 * Return Value: byte
 * Descriptions: init function for libaroma fb
 */
byte libaroma_fb_driver_init(LIBAROMA_FBP me) {
  return SDLFBDR_init(me);
} /* End of libaroma_fb_driver_init */

#endif /* __libaroma_sdl_fb_driver_c__ */
