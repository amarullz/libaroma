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
 * Filename    : translate_pointer.c
 * Description : linux input mouse/gamepad hid driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_linux_hid_pointer_driver_c__
#define __libaroma_linux_hid_pointer_driver_c__

/*
 * UNIVERSAL DEVICE - TRANSLATOR FOR POINTER DEVICE
 *   Prefix : LINUXHIDRV_
 */
 
static int LINUXHIDRV_pointer_current_x=0;
static int LINUXHIDRV_pointer_current_y=0;
static byte LINUXHIDRV_pointer_initialized=0;
static byte LINUXHIDRV_pointer_leftmouse_down=0;
// static byte LINUXHIDRV_pointer_rightmouse_down=0;

/* set pointer position */
static inline void LINUXHIDRV_pointer_init(LIBAROMA_HIDP me){
  if (!LINUXHIDRV_pointer_initialized){
    LINUXHIDRV_pointer_current_x = me->screen_width>>1;
    LINUXHIDRV_pointer_current_y = me->screen_height>>1;
    LINUXHIDRV_pointer_initialized=1;
  }
}
static inline void LINUXHIDRV_pointer_set_x(LIBAROMA_HIDP me,int x){
  LINUXHIDRV_pointer_init(me);
  int nx=LINUXHIDRV_pointer_current_x+x;
  if (nx<0){
    LINUXHIDRV_pointer_current_x=0;
  }
  else if (nx>=me->screen_width){
    LINUXHIDRV_pointer_current_x=me->screen_width-1;
  }
  else{
    LINUXHIDRV_pointer_current_x=nx;
  }
}
static inline void LINUXHIDRV_pointer_set_y(LIBAROMA_HIDP me,int y){
  LINUXHIDRV_pointer_init(me);
  int ny=LINUXHIDRV_pointer_current_y+y;
  if (ny<0){
    LINUXHIDRV_pointer_current_y=0;
  }
  else if (ny>=me->screen_height){
    LINUXHIDRV_pointer_current_y=me->screen_height-1;
  }
  else{
    LINUXHIDRV_pointer_current_y=ny;
  }
}
 
/*
 * function : translate raw pointer data
 */
byte LINUXHIDRV_translate_pointer(LIBAROMA_HIDP me, LINUXHIDRV_DEVICEP dev,
                             LIBAROMA_HID_EVENTP dest_ev, struct input_event * ev) {
  /* dump raw events */
  ALOGRT("RAW KEY: T=%i, C=%i, V=%i", ev->type, ev->code, ev->value);
  
  /* EV_REL */
  if (ev->type==EV_REL) {
    byte send_msg=0;
    switch (ev->code){
      case REL_X:
        {
          LINUXHIDRV_pointer_set_x(me,ev->value);
          send_msg=1;
        }
        break;
      case REL_Y:
        {
          LINUXHIDRV_pointer_set_y(me,ev->value);
          send_msg=1;
        }
        break;
      case REL_WHEEL:
        {
          /* mouse wheel - send as key up */
          dest_ev->type = LIBAROMA_HID_EV_TYPE_KEY;
          dest_ev->key  = LIBAROMA_HID_WHEEL_KEYCODE;
          dest_ev->x    = 0;
          dest_ev->y    = ev->value;
          dest_ev->state = LIBAROMA_HID_EV_STATE_UP;
          if (ev->value==-1){
            return LIBAROMA_HID_EV_RET_UP;
          }
          else{
            return LIBAROMA_HID_EV_RET_DOWN;
          }
        }
        break;
    }
    if (send_msg==1){
      /* send fb config */
      libaroma_fb_config("pointer",NULL,
        MAKEDWORD(LINUXHIDRV_pointer_current_x,LINUXHIDRV_pointer_current_y));
      
      /* send as touch message */
      if (LINUXHIDRV_pointer_leftmouse_down){
        dest_ev->type   = LIBAROMA_HID_EV_TYPE_TOUCH;
        dest_ev->key    = 0;
        dest_ev->x      = LINUXHIDRV_pointer_current_x;
        dest_ev->y      = LINUXHIDRV_pointer_current_y;
        dest_ev->state  = LIBAROMA_HID_EV_STATE_MOVE;
        return LIBAROMA_HID_EV_RET_TOUCH;
      }
    }
  }
  else if (ev->type==EV_KEY){
    if (ev->code==BTN_LEFT){
      LINUXHIDRV_pointer_leftmouse_down=(ev->value==1)?1:0;
      /* send as touch */
      LINUXHIDRV_pointer_init(me);
      dest_ev->type   = LIBAROMA_HID_EV_TYPE_TOUCH;
      dest_ev->key    = 0;
      dest_ev->x      = LINUXHIDRV_pointer_current_x;
      dest_ev->y      = LINUXHIDRV_pointer_current_y;
      dest_ev->state  = (LINUXHIDRV_pointer_leftmouse_down?
        LIBAROMA_HID_EV_STATE_DOWN:LIBAROMA_HID_EV_STATE_UP);
      return LIBAROMA_HID_EV_RET_TOUCH;
    }
    else{
      /* default keyboar handler */
      return LINUXHIDRV_translate_keyboard(me, dev, dest_ev, ev);
    }
  }
  
  /* don't process it */
  return LIBAROMA_HID_EV_RET_NONE;
}
#endif /* __libaroma_linux_hid_pointer_driver_c__ */
