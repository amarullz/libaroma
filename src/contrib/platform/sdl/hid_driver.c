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
 * Filename    : hid_driver.c
 * Description : linux input hid driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_linux_hid_driver_c__
#define __libaroma_linux_hid_driver_c__
#include <aroma_internal.h>

/*
 * UNIVERSAL DEVICE - INPUT DRIVER
 *   Using Linux Input Device for Android & Linux
 *   Prefix : LINUXHIDRV_
 */

/*
 * headers
 */
#include <linux/input.h>
#include <sys/ioctl.h>
#include <sys/poll.h>
#include <fcntl.h>
#include <dirent.h>
#include <unistd.h>
#include "SDL.h"

/*
 * structure : internal driver data
 */
typedef struct {
int n;
} LINUXHIDRV_INTERNAL, *LINUXHIDRV_INTERNALP;

/*
 * input translator
 */
//#include "hid_translate/translate_keyboard.c" /* keyboard */
//#include "hid_translate/translate_touch.c" /* touch */
//#include "hid_translate/translate_pointer.c" /* mouse & gamepad */

/*
 * forward functions
 */
void LINUXHIDRV_release(
    LIBAROMA_HIDP me);
byte LINUXHIDRV_getinput(
    LIBAROMA_HIDP me,
    LIBAROMA_HID_EVENTP dest_ev);

/*
 * function : init input device
 */
byte LINUXHIDRV_init(
    LIBAROMA_HIDP me) {
  /* allocating internal data */
  LINUXHIDRV_INTERNALP mi = (LINUXHIDRV_INTERNALP)
    calloc(sizeof(LINUXHIDRV_INTERNAL),1);
    
  /* set internal address */
  me->internal = (voidp) mi;
    
  /* set driver callbacks */
  me->release    = &LINUXHIDRV_release;
  me->getinput   = &LINUXHIDRV_getinput;

  /* ok */
  return 1;
}

/*
 * function : release input driver instance
 */
void LINUXHIDRV_release(
    LIBAROMA_HIDP me) {
  /* is input instance initialized ? */
  if (me == NULL) {
    return;
  }
  /* free internal data */
  free(me->internal);
  me->internal = NULL;
}

static byte __sdl_mouse_down = 0;

/*
 * function : get input callback
 */
byte LINUXHIDRV_getinput(
    LIBAROMA_HIDP me,
    LIBAROMA_HID_EVENTP dest_ev) {
  /* get internal data */
  // LINUXHIDRV_INTERNALP mi = (LINUXHIDRV_INTERNALP) me->internal;
  SDL_Event event;

  /* polling loop */
  do {
    if(SDL_PollEvent(&event)) {
      switch(event.type) {
        case SDL_QUIT:
          return LIBAROMA_HID_EV_RET_EXIT;

        case SDL_MOUSEBUTTONDOWN:
        case SDL_MOUSEBUTTONUP:

          dest_ev->type   = LIBAROMA_HID_EV_TYPE_TOUCH;
          dest_ev->key    = 0;
          dest_ev->x      = event.button.x;
          dest_ev->y      = event.button.y;
          dest_ev->state  = (event.type==SDL_MOUSEBUTTONDOWN?
            LIBAROMA_HID_EV_STATE_DOWN:LIBAROMA_HID_EV_STATE_UP);
          __sdl_mouse_down = dest_ev->state;
          return LIBAROMA_HID_EV_RET_TOUCH;

        case SDL_MOUSEMOTION:
          if (__sdl_mouse_down==LIBAROMA_HID_EV_STATE_DOWN){
            dest_ev->type   = LIBAROMA_HID_EV_TYPE_TOUCH;
            dest_ev->key    = 0;
            dest_ev->x      = event.motion.x;
            dest_ev->y      = event.motion.y;
            dest_ev->state  = LIBAROMA_HID_EV_STATE_MOVE;
            return LIBAROMA_HID_EV_RET_TOUCH;
          }
      }
    }
  }
  while (me->internal != NULL);
  
  /* it was exit message */
  ALOGV("LINUXHIDRV_getinput Input Driver Already Released");
  return LIBAROMA_HID_EV_RET_EXIT;
}

/*
 * function : libaroma init hid driver
 */
byte libaroma_hid_driver_init(LIBAROMA_HIDP me) {
  return LINUXHIDRV_init(me);
}

#endif /* __libaroma_linux_hid_driver_c__ */
