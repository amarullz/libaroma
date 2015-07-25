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

/*
 * defines & macros
 */
#define LINUXHIDRV_DEVPATH "/dev/input"
#define LINUXHIDRV_BOARD_VKEY_PATH "/sys/board_properties/virtualkeys."
#define LINUXHIDRV_MAXDEV 0xf
#define LINUXHIDRV_SIZEOF_BIT_ARRAY(bits) ((bits + 7) / 8)
#define LINUXHIDRV_TEST_BIT(bit, array) (array[bit/8] & (1<<(bit%8)))

/*
 * enum : device type
 */
enum {
  LINUXHIDRV_DEVCLASS_KEYBOARD    = 0x01,
  LINUXHIDRV_DEVCLASS_TOUCH       = 0x02,
  LINUXHIDRV_DEVCLASS_MULTITOUCH  = 0x04,
  LINUXHIDRV_DEVCLASS_POINTER     = 0x08
};

/*
 * enum : position state
 */
enum {
  LINUXHIDRV_POS_ST_SYNC_X    = 0x01,
  LINUXHIDRV_POS_ST_SYNC_Y    = 0x02,
  LINUXHIDRV_POS_ST_DOWNED    = 0x04,
  LINUXHIDRV_POS_ST_LASTSYNC  = 0x08,
  LINUXHIDRV_POS_ST_RLS_NEXT  = 0x10,
  LINUXHIDRV_POS_ST_IS_VKEY   = 0x20
};

/*
 * structure : position
 */
typedef struct {
  int x;                    /* last raw x event */
  int y;                    /* last raw y event */
  int tx;                   /* translated x position */
  int ty;                   /* translated y position */
  int vk;                   /* virtual key code id */
  byte state;               /* state */
  struct input_absinfo xi;  /* calibrate x */
  struct input_absinfo yi;  /* calibrate y */
} LINUXHIDRV_POS, *LINUXHIDRV_POSP;

/*
 * structure : virtual keys data
 */
typedef struct {
  int scan;                 /* scan code */
  int x;                    /* x */
  int y;                    /* y */
  int w;                    /* width */
  int h;                    /* height */
} LINUXHIDRV_VK, *LINUXHIDRV_VKP;

/*
 * structure : device data
 */
typedef struct {
  /* Device Into */
  int id;                   /* device id */
  byte devclass;            /* device class */
  char file[10];            /* input device filename */
  char name[64];            /* device name */
  byte down;                /* pressed */
  int vkn;                  /* virtual key count */
  LINUXHIDRV_VKP  vks;      /* virtual keys */
  LINUXHIDRV_POS  p;        /* abs position */
} LINUXHIDRV_DEVICE, *LINUXHIDRV_DEVICEP;

/*
 * structure : internal driver data
 */
typedef struct {
  int n; /* number of devices*/
  /* pool */
  struct pollfd fds[LINUXHIDRV_MAXDEV];
  /* device data */
  LINUXHIDRV_DEVICE   dev[LINUXHIDRV_MAXDEV]; /* Devices Data */
  /* configurations */
  byte touch_swap_xy;   /* swap x with y */
  byte touch_flip_x;    /* x was flipped */
  byte touch_flip_y;    /* y was flipped */
} LINUXHIDRV_INTERNAL, *LINUXHIDRV_INTERNALP;

/*
 * input translator
 */
#include "hid_translate/translate_keyboard.c" /* keyboard */
#include "hid_translate/translate_touch.c" /* touch */
#include "hid_translate/translate_pointer.c" /* mouse & gamepad */

/*
 * forward functions
 */
void LINUXHIDRV_release(
    LIBAROMA_HIDP me);
byte LINUXHIDRV_getinput(
    LIBAROMA_HIDP me,
    LIBAROMA_HID_EVENTP dest_ev);
byte LINUXHIDRV_init_device(
    LINUXHIDRV_INTERNALP mi,
    int fd,
    LINUXHIDRV_DEVICEP dev);

/*
 * function : check blacklisted devices
 */
byte LINUXHIDRV_blacklist(
    char * name) {
  /* no blacklisted */
  return 0;
}

/*
 * function : dump device info
 */
void LINUXHIDRV_dumpdev(
    LINUXHIDRV_DEVICEP dev) {
  /* print logs */
  ALOGI("INDR Input Device: %s (%s) - Class : %x",
    dev->name, dev->file, dev->devclass
  );
  ALOGV("  VKN : %d, CALIB : (%d,%d,%d,%d)", dev->vkn,
    dev->p.xi.minimum,
    dev->p.xi.maximum,
    dev->p.yi.minimum,
    dev->p.yi.maximum
  );
}

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
  /* set initial value */
  mi->n = 0;
  /* open input device directory */
  DIR * dir = opendir(LINUXHIDRV_DEVPATH);
  if (dir != 0) {
    struct dirent * de; /* dirent */
    int fd; /* temporary device fd */
    
    /* read input device directory */
    while ((de = readdir(dir))) {
      /* continue if filename not contain "event" */
      if (strncmp(de->d_name, "event", 5)) {
        continue;
      }
      /* open file handler */
      fd = openat(dirfd(dir), de->d_name, O_RDONLY);
      /* continue if openat failed */
      if (fd < 0) {
        continue;
      }
      /* cleanup device data */
      memset(&mi->dev[mi->n], 0, sizeof(LINUXHIDRV_DEVICE));
      /* set device id */
      mi->dev[mi->n].id = mi->n;
      /* set device filename */
      snprintf(mi->dev[mi->n].file, 10, "%s", de->d_name);
      
      /* load virtualkeys if there are any */
      if (LINUXHIDRV_init_device(mi, fd, &mi->dev[mi->n])) {
        /* dump device information */
        LINUXHIDRV_dumpdev(&mi->dev[mi->n]);
        /* set pooling data and monitor it */
        mi->fds[mi->n].fd     = fd;
        mi->fds[mi->n].events = POLLIN;
        /* increment the polling count */
        mi->n++;
      }
      else {
        /* dump device information */
        LINUXHIDRV_dumpdev(&mi->dev[mi->n]);
        /* cleanup device data */
        memset(&mi->dev[mi->n], 0, sizeof(LINUXHIDRV_DEVICE));
        /* don't monitor this device */
        close(fd);
        /* ignore it */
      }
      /* break when maximum device */
      if (mi->n == LINUXHIDRV_MAXDEV) {
        break;
      }
    }
    /* close dir */
    closedir(dir);
    
    /* input device not found */
    if (mi->n == 0) {
      /* free internal data */
      free(mi);
      ALOGE("INDR ERROR: Input Device Not Found...");
      /* error */
      return 0;
    }
    
    /* set driver callbacks */
    me->release    = &LINUXHIDRV_release;
    me->getinput   = &LINUXHIDRV_getinput;
    /* ok */
    return 1;
  }
  
  /* free internal data */
  free(mi);
  ALOGE("INDR ERROR: Can't access /dev/input...");
  /* error */
  return 0;
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
  /* get internal data */
  LINUXHIDRV_INTERNALP mi = (LINUXHIDRV_INTERNALP)
                      me->internal;
  /* release devices data */
  while (mi->n-- > 0) {
    /* release virtual keys */
    if (mi->dev[mi->n].vkn) {
      free(mi->dev[mi->n].vks);
      mi->dev[mi->n].vkn = 0;
    }
    /* close fd */
    close(mi->fds[mi->n].fd);
  }
  /* free internal data */
  free(me->internal);
  me->internal = NULL;
}

/*
 * function : returns empty tokens
 */
static char * LINUXHIDRV_strtok_r(
    char * str,
    const char * delim,
    char ** save_str){
  if (!str) {
    if (!*save_str) {
      return NULL;
    }
    str = (*save_str) + 1;
  }
  *save_str = strpbrk(str, delim);
  if (*save_str) {
    **save_str = '\0';
  }
  return str;
}

/*
 * function : check non zero
 */
static byte LINUXHIDRV_nonzero(
    const bytep array_s,
    dword startIndex,
    dword endIndex) {
  const bytep end   = array_s + endIndex;
  bytep array = array_s + startIndex;  
  while (array != end) {
    if (*(array++) != 0) {
      return 1;
    }
  }
  return 0;
}

/*
 * function : get device type
 */
byte LINUXHIDRV_getdevclass(
    int fd) {
  /* figure out the kinds of events the device reports. */
  byte keyBitmask[(KEY_MAX + 1) / 8];
  byte absBitmask[(ABS_MAX + 1) / 8];
  byte relBitmask[(REL_MAX + 1) / 8];
  
  ioctl(fd, EVIOCGBIT(EV_KEY, sizeof(keyBitmask)), keyBitmask);
  ioctl(fd, EVIOCGBIT(EV_ABS, sizeof(absBitmask)), absBitmask);
  ioctl(fd, EVIOCGBIT(EV_REL, sizeof(relBitmask)), relBitmask);
  
  /* reset return value */
  byte ret = 0;
  
  /* check keyboard */
  byte haveKeyboardKeys =
    LINUXHIDRV_nonzero(keyBitmask, 0,
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(BTN_MISC)) ||
    LINUXHIDRV_nonzero(keyBitmask,
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(KEY_OK),
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(KEY_MAX + 1));
  
  /* check gamepad */
  byte haveGamepadButtons =
    LINUXHIDRV_nonzero(keyBitmask,
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(BTN_MISC),
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(BTN_MOUSE)) ||
    LINUXHIDRV_nonzero(keyBitmask,
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(BTN_JOYSTICK),
                 LINUXHIDRV_SIZEOF_BIT_ARRAY(BTN_DIGI));
                 
  if (haveKeyboardKeys) {
    ret |= LINUXHIDRV_DEVCLASS_KEYBOARD;
  }
  
  /* check touch screen */
  if (LINUXHIDRV_TEST_BIT(ABS_MT_POSITION_X, absBitmask) &&
      LINUXHIDRV_TEST_BIT(ABS_MT_POSITION_Y, absBitmask)) {
    /* multitouch */
    if (LINUXHIDRV_TEST_BIT(BTN_TOUCH, keyBitmask) ||
        !haveGamepadButtons) {
      ret |= LINUXHIDRV_DEVCLASS_TOUCH;
      ret |= LINUXHIDRV_DEVCLASS_MULTITOUCH;
    }
  }
  else if (LINUXHIDRV_TEST_BIT(BTN_TOUCH, keyBitmask) &&
           LINUXHIDRV_TEST_BIT(ABS_X, absBitmask) &&
           LINUXHIDRV_TEST_BIT(ABS_Y, absBitmask)) {
    /* single touch */
    ret |= LINUXHIDRV_DEVCLASS_TOUCH;
  }
  
  /* mouse or gamepad */
  if (LINUXHIDRV_TEST_BIT(REL_X, relBitmask) &&
      LINUXHIDRV_TEST_BIT(REL_Y, relBitmask)) {
    ret |= LINUXHIDRV_DEVCLASS_POINTER;
  }
  
  return ret;
}

/*
 * function : init device
 */
byte LINUXHIDRV_init_device(
    LINUXHIDRV_INTERNALP mi,
    int fd,
    LINUXHIDRV_DEVICEP dev) {
  /* virtual key path */
  char    vk_path[PATH_MAX] = LINUXHIDRV_BOARD_VKEY_PATH;
  char  * ts = NULL;
  char    vks[2048];
  
  /* get device name */
  ssize_t len = ioctl(fd, EVIOCGNAME(sizeof(dev->name)), dev->name);
  if (len <= 0) {
    ALOGW("INDR ERROR: EVIOCGNAME for %d", dev->id);
    return 0;
  }
  
  /* blacklisted devices */
  if (LINUXHIDRV_blacklist(dev->name)) {
    return 0;
  }
  
  /* get device class */
  dev->devclass = LINUXHIDRV_getdevclass(fd);
  
  /* if class is none, ignore it */
  if (!dev->devclass) {
    return 0;
  }
  
  /* reset all values */
  memset(&dev->p, 0, sizeof(LINUXHIDRV_POS));
  dev->p.tx       = -1;
  dev->p.ty       = -1;
  dev->p.x        = -1;
  dev->p.y        = -1;
  dev->p.vk       = -1;
  dev->vkn        = 0;
  dev->down       = 0;
  
  /* if touchscreen, get calibration data & virtualkeys */
  if ((dev->devclass & LINUXHIDRV_DEVCLASS_TOUCH)) {
    /* calibration */
    if (dev->devclass & LINUXHIDRV_DEVCLASS_MULTITOUCH) {
      /* get multitouch calibrations data */
      ioctl(fd, EVIOCGABS(ABS_MT_POSITION_X), &dev->p.xi);
      ioctl(fd, EVIOCGABS(ABS_MT_POSITION_Y), &dev->p.yi);
    }
    else {
      /* get singletouch calibrations data */
      ioctl(fd, EVIOCGABS(ABS_X), &dev->p.xi);
      ioctl(fd, EVIOCGABS(ABS_Y), &dev->p.yi);
    }
    
    /* virtualkeys.{device_name} */
    strcat(vk_path, dev->name);
    /* some devices split the keys from the touchscreen */
    int vk_fd = open(vk_path, O_RDONLY);
    
    if (vk_fd >= 0) {
      /* read contents */
      len = read(vk_fd, vks, sizeof(vks) - 1);
      close(vk_fd);
      
      /* return false on failed */
      if (len > 0) {
        /* add string break */
        vks[len] = 0;
        /* parse a line like:
         * keytype:keycode:centerx:centery:width:height:keytype2:...
         */
        for (ts = vks, dev->vkn = 1; *ts; ++ts) {
          if (*ts == ':') {
            dev->vkn++;
          }
        }
        dev->vkn /= 6;
        if (dev->vkn <= 0) {
          dev->vkn = 0;
        }
      }
    }
    
    /* allocate virtualkeys count */
    if (dev->vkn > 0) {
      dev->vks = malloc(sizeof(LINUXHIDRV_VK) * dev->vkn);
      int i;
      for (i = 0; i < dev->vkn; i++) {
        char * token[6];
        int j;
        for (j = 0; j < 6; j++) {
          token[j] = LINUXHIDRV_strtok_r((i || j) ? NULL : vks, ":", &ts);
        }
        if (strcmp(token[0], "0x01") != 0) {
          continue;
        }
        /* save it */
        dev->vks[i].scan  = strtol(token[1], NULL, 0);
        dev->vks[i].x     = strtol(token[2], NULL, 0);
        dev->vks[i].y     = strtol(token[3], NULL, 0);
        dev->vks[i].w     = strtol(token[4], NULL, 0);
        dev->vks[i].h     = strtol(token[5], NULL, 0);
        ALOGV("  VIRTUALKEY[%s,%i] (%i,%i,%i,%i,%i)",
              dev->file,
              i,
              dev->vks[i].scan,
              dev->vks[i].x,
              dev->vks[i].y,
              dev->vks[i].w,
              dev->vks[i].h
             );
      }
    }
  }
  
  /* ok */
  return 1;
}

/*
 * function : translate raw data
 */
byte LINUXHIDRV_translate(LIBAROMA_HIDP me, LINUXHIDRV_DEVICEP dev,
                    LIBAROMA_HID_EVENTP dest_ev, struct input_event * ev) {
  if (dev->devclass & LINUXHIDRV_DEVCLASS_TOUCH) {
    /* it's touch device - input_translate/translate_touch.c */
    return LINUXHIDRV_translate_touch(me, dev, dest_ev, ev);
  }
  else if (dev->devclass & LINUXHIDRV_DEVCLASS_POINTER) {
    /* it's pointer/relative device - input_translate/translate_mice.c */
    return LINUXHIDRV_translate_pointer(me, dev, dest_ev, ev);
  }
  else if (dev->devclass & LINUXHIDRV_DEVCLASS_KEYBOARD) {
    /* it's key device - input_translate/translate_key.c */
    return LINUXHIDRV_translate_keyboard(me, dev, dest_ev, ev);
  }
  
  /* don't process it */
  return LIBAROMA_HID_EV_RET_NONE;
}

/*
 * function : get input callback
 */
byte LINUXHIDRV_getinput(
    LIBAROMA_HIDP me,
    LIBAROMA_HID_EVENTP dest_ev) {
  /* get internal data */
  LINUXHIDRV_INTERNALP mi = (LINUXHIDRV_INTERNALP) me->internal;

  /* polling loop */
  do {
    int r = poll(mi->fds, mi->n, -1);
    if (me->internal == NULL) {
      /* if released */
      break;
    }
    else if (r > 0) {
      /* events loop */
      int n;
      for (n = 0; n < mi->n; n++) {
        if (mi->fds[n].revents & POLLIN) {
          /* read data */
          struct input_event ev;
          r = read(mi->fds[n].fd, &ev, sizeof(ev));
          if (r == sizeof(ev)) {
            /* translate it */
            byte translate_ret =
              LINUXHIDRV_translate(me, &mi->dev[n], dest_ev, &ev);
            
            /* check */
            if (translate_ret != LIBAROMA_HID_EV_RET_NONE) {
              /* don't process it */
              return translate_ret;
            }
          }
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
