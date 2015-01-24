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
 * Description : QNX NTO / hid driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_qnxnto_hid_driver_c__
#define __libaroma_qnxnto_hid_driver_c__

/*
 * QNX - INPUT DRIVER
 *   Using QNX Input Device Method
 *   Prefix : QNXID_
 *
 */

/*
 * Headers Includes
 *
 */
#include <aroma.h>
#include "qnx_keycode.h"
/*
 * Macro : QNX Keyboard Device
 *
 */
#define QNXID_DEVICE_DEV "/dev/kbd"

/*
 * Structure : Internal Driver Data
 *
 */
typedef struct {
  int fd; /* Devices Count */
  byte shifted;
  byte states[0x1ff];
} QNXID_INTERNAL,
*QNXID_INTERNALP;

/* FORWARD */
byte QNXID_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev);
void QNXID_release(LIBAROMA_HIDP me);

/*
 * Function : Init Input Device
 *
 */
byte QNXID_init(LIBAROMA_HIDP me) {
  /* Allocating Internal Data */
  QNXID_INTERNALP mi = (QNXID_INTERNALP) malloc(sizeof(QNXID_INTERNAL));
  /* Cleanup */
  memset(mi, 0, sizeof(QNXID_INTERNAL));
  /* Set Internal Address */
  me->internal = (voidp) mi;
  /* Set Initial Value */
  mi->fd = open(QNXID_DEVICE_DEV, O_RDONLY);
  
  if (!mi->fd) {
    ALOGE("QNXID_init Cannot Open " QNXID_DEVICE_DEV);
    return 0;
  }
  
  mi->shifted = 0;
  memset(mi->states, 0, 0x1ff);
  me->release    = &QNXID_release;
  me->getinput   = &QNXID_getinput;
  ALOGI("QNXID_init " QNXID_DEVICE_DEV " Success");
  return 1;
}

/*
 * Function : Release Input Driver Instance
 *
 */
void QNXID_release(LIBAROMA_HIDP me) {
  /* Is Input Instance Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  QNXID_INTERNALP mi = (QNXID_INTERNALP)
                       me->internal;
  /* Close FD */
  close(mi->fd);
  /* Free Internal Data */
  free(me->internal);
  me->internal = NULL;
}

int QNXID_translate(byte code, byte shifted, byte scancode) {
  int k = 0;
  
  switch (code) {
      /* us */
    case 0x02:
      k = (!shifted ? '1' : '!');
      break;
      
    case 0x03:
      k = (!shifted ? '2' : '@');
      break;
      
    case 0x04:
      k = (!shifted ? '3' : '#');
      break;
      
    case 0x05:
      k = (!shifted ? '4' : '$');
      break;
      
    case 0x06:
      k = (!shifted ? '5' : '%');
      break;
      
    case 0x07:
      k = (!shifted ? '6' : '^');
      break;
      
    case 0x08:
      k = (!shifted ? '7' : '&');
      break;
      
    case 0x09:
      k = (!shifted ? '8' : '*');
      break;
      
    case 0x0A:
      k = (!shifted ? '9' : '(');
      break;
      
    case 0x0B:
      k = (!shifted ? '0' : ')');
      break;
      
    case 0x0C:
      k = (!shifted ? '-' : '_');
      break;
      
    case 0x0D:
      k = (!shifted ? '=' : '+');
      break;
      
    case 0x10:
      k = (!shifted ? 'q' : 'Q');
      break;
      
    case 0x11:
      k = (!shifted ? 'w' : 'W');
      break;
      
    case 0x12:
      k = (!shifted ? 'e' : 'E');
      break;
      
    case 0x13:
      k = (!shifted ? 'r' : 'R');
      break;
      
    case 0x14:
      k = (!shifted ? 't' : 'T');
      break;
      
    case 0x15:
      k = (!shifted ? 'y' : 'Y');
      break;
      
    case 0x16:
      k = (!shifted ? 'u' : 'U');
      break;
      
    case 0x17:
      k = (!shifted ? 'i' : 'I');
      break;
      
    case 0x18:
      k = (!shifted ? 'o' : 'O');
      break;
      
    case 0x19:
      k = (!shifted ? 'p' : 'P');
      break;
      
    case 0x1A:
      k = (!shifted ? '[' : '{');
      break;
      
    case 0x1B:
      k = (!shifted ? ']' : '}');
      break;
      
    case 0x1E:
      k = (!shifted ? 'a' : 'A');
      break;
      
    case 0x1F:
      k = (!shifted ? 's' : 'S');
      break;
      
    case 0x20:
      k = (!shifted ? 'd' : 'D');
      break;
      
    case 0x21:
      k = (!shifted ? 'f' : 'F');
      break;
      
    case 0x22:
      k = (!shifted ? 'g' : 'G');
      break;
      
    case 0x23:
      k = (!shifted ? 'h' : 'H');
      break;
      
    case 0x24:
      k = (!shifted ? 'j' : 'J');
      break;
      
    case 0x25:
      k = (!shifted ? 'k' : 'K');
      break;
      
    case 0x26:
      k = (!shifted ? 'l' : 'L');
      break;
      
    case 0x27:
      k = (!shifted ? ';' : ':');
      break;
      
    case 0x28:
      k = (!shifted ? '\'' : '"');
      break;
      
    case 0x29:
      k = (!shifted ? '`' : '~');
      break;
      
    case 0x2B:
      k = (!shifted ? '\\' : '|');
      break;
      
    case 0x2C:
      k = (!shifted ? 'z' : 'Z');
      break;
      
    case 0x2D:
      k = (!shifted ? 'x' : 'X');
      break;
      
    case 0x2E:
      k = (!shifted ? 'c' : 'C');
      break;
      
    case 0x2F:
      k = (!shifted ? 'v' : 'V');
      break;
      
    case 0x30:
      k = (!shifted ? 'b' : 'B');
      break;
      
    case 0x31:
      k = (!shifted ? 'n' : 'N');
      break;
      
    case 0x32:
      k = (!shifted ? 'm' : 'M');
      break;
      
    case 0x33:
      k = (!shifted ? ',' : '<');
      break;
      
    case 0x34:
      k = (!shifted ? '.' : '>');
      break;
      
    case 0x35:
      k = (!shifted ? '/' : '?');
      break;
      
    case 0x39:
      k = ' ';
      break;
      
      /* common */
    case 0x01:
      k = (!scancode ? QNX_KEY_ESCAPE : 0);
      break;
      
    case 0x0E:
      k = (!scancode ? QNX_KEY_BACKSPACE : 0);
      break;
      
    case 0x0F:
      k = (!scancode ? QNX_KEY_TAB : 0);
      break;
      
    case 0x1D:
      k = (!scancode ? QNX_KEY_CONTROL : 0);
      break;
      
    case 0x2A:
      k = (!scancode ? QNX_KEY_SHIFT : 0);
      break;
      
    case 0x36:
      k = (!scancode ? QNX_KEY_SHIFT : 0);
      break;
      
    case 0x38:
      k = (!scancode ? QNX_KEY_ALT : 0);
      break;
      
    case 0x3A:
      k = (!scancode ? QNX_KEY_CAPS_LOCK : 0);
      break;
      
    case 0x3B:
      k = (!scancode ? QNX_KEY_F1 : 0);
      break;
      
    case 0x3C:
      k = (!scancode ? QNX_KEY_F2 : 0);
      break;
      
    case 0x3D:
      k = (!scancode ? QNX_KEY_F3 : 0);
      break;
      
    case 0x3E:
      k = (!scancode ? QNX_KEY_F4 : 0);
      break;
      
    case 0x3F:
      k = (!scancode ? QNX_KEY_F5 : 0);
      break;
      
    case 0x40:
      k = (!scancode ? QNX_KEY_F6 : 0);
      break;
      
    case 0x41:
      k = (!scancode ? QNX_KEY_F7 : 0);
      break;
      
    case 0x42:
      k = (!scancode ? QNX_KEY_F8 : 0);
      break;
      
    case 0x43:
      k = (!scancode ? QNX_KEY_F9 : 0);
      break;
      
    case 0x44:
      k = (!scancode ? QNX_KEY_F10 : 0);
      break;
      
    case 0x57:
      k = (!scancode ? QNX_KEY_F11 : 0);
      break;
      
    case 0x58:
      k = (!scancode ? QNX_KEY_F12 : 0);
      break;
      
    case 0x5B:
      k = (!scancode ? QNX_KEY_WIN_L : 0);
      break;
      
    case 0x5C:
      k = (!scancode ? QNX_KEY_WIN_R : 0);
      break;
      
    case 0x5D:
      k = (!scancode ? QNX_KEY_MENU : 0);
      break;
      
    case 0x50:
      k = (!scancode ? QNX_KEY_DOWN : 0);
      break;
      
    case 0x49:
      k = (!scancode ? QNX_KEY_PG_UP : 0);
      break;
      
    case 0x48:
      k = (!scancode ? QNX_KEY_UP : 0);
      break;
      
    case 0x53:
      k = (!scancode ? QNX_KEY_DELETE : 0);
      break;
      
    case 0x4F:
      k = (!scancode ? QNX_KEY_END : 0);
      break;
      
    case 0x52:
      k = (!scancode ? QNX_KEY_INSERT : 0);
      break;
      
    case 0x4B:
      k = (!scancode ? QNX_KEY_LEFT : 0);
      break;
      
    case 0x4D:
      k = (!scancode ? QNX_KEY_RIGHT : 0);
      break;
      
    case 0x51:
      k = (!scancode ? QNX_KEY_PG_DOWN : 0);
      break;
      
    case 0x47:
      k = (!scancode ? QNX_KEY_HOME : 0);
      break;
      
    case 0x1C:
      k = (!scancode ? QNX_KEY_RETURN : 0);
      break;
      
    default:
      k = (!scancode ? code | QNX_KEY_UNKNOWN : 0);
      break;
  }
  
  return k;
}

/*
 * Function : Get Input
 *
 */
byte QNXID_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev) {
  /* Get Internal Data */
  QNXID_INTERNALP mi = (QNXID_INTERNALP) me->internal;
  
  /* Polling Loop */
  while (me->internal != NULL) {
    dword ch=0;
    int readc=read(mi->fd, &ch, 4);
    if (readc>0) {
      /* Parse & Translate */
      byte chkode = ch & 0xff;
      byte isup   = 0x80 & chkode;
      byte c      = 0x7f & chkode;
      int  code   = QNXID_translate(c, 0, 0);
      int  scode  = QNXID_translate(c, mi->shifted, 1);
      
      if (code == 0x160) {
        /* Ignore Repeated Key */
        continue;
      }
      else if (code < 0x1ff) {
        if ((mi->states[c]==1) && (!isup)) {
          continue;
        }
        else{
          mi->states[c] = isup?0:1;

          byte retval = LIBAROMA_HID_EV_RET_RAWKEY;
          switch (code) {
              /* Select Key */
            case QNX_KEY_RETURN:
              retval = LIBAROMA_HID_EV_RET_SELECT;
              break;
              
              /* Back Key */
            case QNX_KEY_ESCAPE:
              retval = LIBAROMA_HID_EV_RET_BACK;
              break;
              
              /* Up Key */
            case QNX_KEY_UP:
              retval = LIBAROMA_HID_EV_RET_UP;
              break;
              
              /* Down Key */
            case QNX_KEY_DOWN:
              retval = LIBAROMA_HID_EV_RET_DOWN;
              break;
              
            case QNX_KEY_SHIFT:
              if (isup) {
                mi->shifted = 0;
              }
              else {
                mi->shifted = 1;
              }
              break;
          }
          
          /* pass it */
          dest_ev->type   = LIBAROMA_HID_EV_TYPE_KEY;
          dest_ev->key    = code;
          dest_ev->x      = scode; /* Scan Code */
          dest_ev->y      = 0;
          dest_ev->state  = (
            isup ? LIBAROMA_HID_EV_STATE_UP : LIBAROMA_HID_EV_STATE_DOWN
          );

          /* Process as Raw Key Code */
          ALOGRT("QNXID RAW: C=%i, S=%i, R=%i --> %i",
            code, dest_ev->state, c, retval);
          return retval;
        }
      }
    }
  }
  
  /* it was exit message */
  ALOGV("QNXID_getinput input driver already released");
  return LIBAROMA_HID_EV_RET_EXIT;
}

/*
 * Function : libaroma init hid driver
 */
byte qnx_hid_driver_init(LIBAROMA_HIDP me) {
  return QNXID_init(me);
}

#endif /* __libaroma_qnxnto_hid_driver_c__ */
