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
 * Filename    : hid.c
 * Description : libaroma hid handler
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_hid_c__
#define __libaroma_hid_c__
#include <aroma_internal.h>

byte LIBAROMA_HID_INIT_FUNCTION(
    LIBAROMA_HIDP);
/*
 * Variable    : _libaroma_hid
 * Type        : type_data
 * Descriptions: hid instance storage
 */
static LIBAROMA_HIDP _libaroma_hid=NULL;
static LIBAROMA_HID_INITIALIZER _libaroma_hid_initializer=NULL;

/*
 * Function    : libaroma_hid_set_initializer
 * Return Value: byte
 * Descriptions: Set hid initializer callback
 */
byte libaroma_hid_set_initializer(LIBAROMA_HID_INITIALIZER cb){
  if (_libaroma_hid != NULL) {
    ALOGE("libaroma_hid_set_initializer hid already initialized");
    return 0;
  }
  _libaroma_hid_initializer = cb;
  if (cb){
    return 1;
  }
  return 0;
} /* end of libaroma_hid_set_initializer */

/*
 * Function    : libaroma_hid_init
 * Return Value: byte
 * Descriptions: init hid instance
 */
byte libaroma_hid_init() {
  /* check instance */
  if (_libaroma_hid != NULL) {
    ALOGE("hid instance already initialized");
    goto return_error;
  }
  
  /* allocating input instance */
  ALOGV("allocating hid instance");
  _libaroma_hid = (LIBAROMA_HIDP) calloc(sizeof(LIBAROMA_HID),1);
  
  /* check allocation */
  if (!_libaroma_hid) {
    ALOGE("unable to allocating hid instance");
    goto return_error_clean;
  }
  
  /* check framebuffer */
  if (libaroma_fb() == NULL) {
    ALOGE("framebuffer instance not initialized yet!");
    goto return_error_clean;
  }
  
  /* set screen information */
  _libaroma_hid->screen_width = libaroma_fb()->w;
  _libaroma_hid->screen_height = libaroma_fb()->h;
  _libaroma_hid->touch_last_x = 0;
  _libaroma_hid->touch_last_y = 0;
  
  /* init driver */
  ALOGV("init hid driver");
  
  if (_libaroma_hid_initializer){
    ALOGV("Init hid driver - runtime");
    if (!_libaroma_hid_initializer(_libaroma_hid)) {
      ALOGE("init hid driver failed");
      goto return_error_clean;
    }
  }
  else{
    ALOGV("Init hid driver - default");
    if (!LIBAROMA_HID_INIT_FUNCTION(_libaroma_hid)) {
      ALOGE("init hid driver failed");
      goto return_error_clean;
    }
  }
  
  /* Check Callbacks */
  if ((_libaroma_hid->release == NULL) ||
      (_libaroma_hid->getinput == NULL)){
    ALOGE("hid driver callback invalid");
    goto return_error_clean;
  }
  /* ok */
  ALOGV("hid driver initialized");
  goto return_ok;
return_error_clean:
  free(_libaroma_hid);
  _libaroma_hid = NULL;
return_error:
  return 0;
return_ok:
  return 1;
} /* End of libaroma_hid_init */

/*
 * Function    : libaroma_hid_release
 * Return Value: void
 * Descriptions: release hid instance
 */
void libaroma_hid_release() {
  /* check instance */
  if (_libaroma_hid == NULL) {
    ALOGE("hid instance uninitialized");
    return;
  }
  /* release driver */
  ALOGV("release hid driver");
  _libaroma_hid->release(_libaroma_hid);
  /* free instance */
  ALOGV("release hid instance");
  free(_libaroma_hid);
} /* End of libaroma_hid_release */

/*
 * Function    : libaroma_hid_set_keypress
 * Return Value: byte
 * Descriptions: set key press status
 */
byte libaroma_hid_set_keypress(
    int code, byte state) {
  if (code <= LIBAROMA_HID_KEYCODE_MAX) {
    byte bit_pos   = 1 << (code % 8);
    switch (state) {
      case LIBAROMA_HID_EV_STATE_DOWN:
        _libaroma_hid->key_pressed[code >> 3] |= bit_pos;
        break;
        
      case LIBAROMA_HID_EV_STATE_UP:
      case LIBAROMA_HID_EV_STATE_CANCEL:
        _libaroma_hid->key_pressed[code >> 3] &= ~bit_pos;
        break;
    }
    return 1;
  }
  return 0;
} /* End of libaroma_hid_set_keypress */

/*
 * Function    : libaroma_hid_get_keypress
 * Return Value: byte
 * Descriptions: get key press status
 */
byte libaroma_hid_get_keypress(
    int code) {
  if (_libaroma_hid == NULL) {
    ALOGW("hid instance uninitialized");
    return 0;
  }
  if (code <= LIBAROMA_HID_KEYCODE_MAX) {
    byte bit_pos   = 1 << (code % 8);
    if ((_libaroma_hid->key_pressed[code >> 3]&bit_pos)) {
      return 1;
    }
    return 0;
  }
  return 0;
} /* End of libaroma_hid_get_keypress */

/*
 * Function    : libaroma_hid_touch_pressed
 * Return Value: byte
 * Descriptions: is touchscreen pressed
 */
byte libaroma_hid_touch_pressed() {
  return libaroma_hid_get_keypress(LIBAROMA_HID_TOUCH_KEYCODE);
} /* End of libaroma_hid_touch_pressed */

/*
 * Function    : libaroma_hid_get
 * Return Value: byte
 * Descriptions: get hid event
 */
byte libaroma_hid_get(
    LIBAROMA_HID_EVENTP e) {
  /* clean destination variable */
  memset(e, 0, sizeof(LIBAROMA_HID_EVENT));
  
  /* check instance */
  if (_libaroma_hid == NULL) {
    ALOGW("hid instance uninitialized");
    return LIBAROMA_HID_EV_RET_ERROR;
  }
  
  /* Loop Until Event Type != LIBAROMA_HID_EV_TYPE_NONE & _libaroma_hid!=NULL */
  while (_libaroma_hid != NULL) {
    /* call driver getinput callback */
    byte ret = _libaroma_hid->getinput(_libaroma_hid, e);
    
    ALOGT("EVENT RECIVED: type=%i, state=%i, key=%i, x=%i, y=%i",
      ret,e->state,e->key,e->x,e->y);
    
    /* check return value */
    switch (ret) {
      case LIBAROMA_HID_EV_RET_NONE:
        /* continue */
        break;
      case LIBAROMA_HID_EV_RET_EXIT:
        /* clean destination variable */
        memset(e, 0, sizeof(LIBAROMA_HID_EVENT));
        ALOGV("libaroma_hid_get got LIBAROMA_HID_EV_TYPE_EXIT");
        return ret;
        break;
      case LIBAROMA_HID_EV_RET_ERROR:
        /* clean destination variable */
        memset(e, 0, sizeof(LIBAROMA_HID_EVENT));
        ALOGE("libaroma_hid_get got LIBAROMA_HID_EV_RET_ERROR");
        return ret;
        break;
      case LIBAROMA_HID_EV_RET_TOUCH: {
          /* filter move event to prevent flooding move messages */
          if (e->state == LIBAROMA_HID_EV_STATE_MOVE) {
            /* ignore the floods */
            if ((_libaroma_hid->touch_last_x!=e->x)||
               (_libaroma_hid->touch_last_y!=e->y)){
              libaroma_hid_set_keypress(LIBAROMA_HID_TOUCH_KEYCODE, e->state);
              /* set last move info */
              _libaroma_hid->touch_last_x = e->x;
              _libaroma_hid->touch_last_y = e->y;
              return ret;
            }
          }
          else {
            libaroma_hid_set_keypress(LIBAROMA_HID_TOUCH_KEYCODE, e->state);
            /* set last move info */
            _libaroma_hid->touch_last_x = e->x;
            _libaroma_hid->touch_last_y = e->y;
            return ret;
          }
        }
        break;
      default:
        /* send value */
        libaroma_hid_set_keypress(e->key, e->state);
        return ret;
        break;
    }
    /* clean destination variable */
    memset(e, 0, sizeof(LIBAROMA_HID_EVENT));
  }
  return LIBAROMA_HID_EV_RET_EXIT;
} /* End of libaroma_hid_get */

/*
 * Function    : libaroma_hid_config
 * Return Value: byte
 * Descriptions: runtime config
 */
byte libaroma_hid_config(
    char * name,
    char * svalue,
    dword dvalue) {
  if (_libaroma_hid == NULL) {
    ALOGW("hid instance uninitialized");
    return 0;
  }
  
  if (_libaroma_hid->config == NULL) {
    /* Not Supported */
    ALOGW("hid driver do not support runtime configuration");
    return 0;
  }
  
  ALOGV("hid set config %s=%s,(%x)", name, svalue, dvalue);
  return _libaroma_hid->config(_libaroma_hid, name, svalue, dvalue);
} /* End of libaroma_hid_config */


#endif /* __libaroma_hid_c__ */

