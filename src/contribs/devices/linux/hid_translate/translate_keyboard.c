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
 * Filename    : translate_keyboard.c
 * Description : linux input keyboard hid driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_linux_hid_keyboard_driver_c__
#define __libaroma_linux_hid_keyboard_driver_c__

/*
 * UNIVERSAL DEVICE - TRANSLATOR FOR KEY DEVICE
 *   Prefix : LINUXHIDRV_
 */
 
/*
 * function : translate raw keyboard data
 */
byte LINUXHIDRV_translate_keyboard(LIBAROMA_HIDP me, LINUXHIDRV_DEVICEP dev,
                             LIBAROMA_HID_EVENTP dest_ev, struct input_event * ev) {
  /* dump raw events */
  ALOGRT("RAW KEY: T=%i, C=%i, V=%i", ev->type, ev->code, ev->value);
  
  if (ev->type == EV_KEY) {
    /* fill destination event */
    dest_ev->type = LIBAROMA_HID_EV_TYPE_KEY;
    dest_ev->key = ev->code;
    dest_ev->x = 0;
    dest_ev->y = 0;
    /* check state */
    dest_ev->state = LIBAROMA_HID_EV_STATE_CANCEL;
    switch (ev->value) {
      case 0:
        dest_ev->state = LIBAROMA_HID_EV_STATE_UP;
        break;
      case 1:
        dest_ev->state = LIBAROMA_HID_EV_STATE_DOWN;
        break;
    }
    
    /* translate key code to aroma-core return code */
    switch (ev->code) {
      /* select key */
      case KEY_LEFTBRACE:
      case KEY_POWER:
      case KEY_HOME:
      case BTN_MOUSE:
      case KEY_ENTER:
      case KEY_CAMERA:
      case KEY_F21:
      case KEY_SEND:
      case KEY_END:
      case 0xE8:
        return LIBAROMA_HID_EV_RET_SELECT;
        break;
        
      /* menu key */
      case KEY_SEARCH:
      case KEY_MENU:
      case 0xE5:
        return LIBAROMA_HID_EV_RET_MENU;
        break;
        
      /* back key */
      case KEY_BACKSPACE:
      case KEY_BACK:
        return LIBAROMA_HID_EV_RET_BACK;
        break;
        
      /* up key */
      case KEY_UP:
      case KEY_LEFTSHIFT:
      case KEY_VOLUMEUP:
      case KEY_LEFT:
        return LIBAROMA_HID_EV_RET_UP;
        break;
        
      /* down key */
      case KEY_DOWN:
      case KEY_CAPSLOCK:
      case KEY_VOLUMEDOWN:
      case KEY_RIGHT:
        return LIBAROMA_HID_EV_RET_DOWN;
        break;
    }
    
    /* process as raw key code */
    return LIBAROMA_HID_EV_RET_RAWKEY;
  }
  
  /* don't process it */
  return LIBAROMA_HID_EV_RET_NONE;
}
#endif /* __libaroma_linux_hid_keyboard_driver_c__ */
