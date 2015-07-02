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
 * Filename    : recovery.h
 * Description : recovery mockup header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_recovery_h__
#define __libaroma_recovery_h__

/* libaroma headers */
#include <aroma.h>

/* debug */
#define RECOVERY_USE_DEBUG "AROMA-RECOVERY"
#ifdef RECOVERY_USE_DEBUG
#define RLOG(...) \
  printf(RECOVERY_USE_DEBUG ": "); \
  printf(__VA_ARGS__); \
  printf("\n");
#else
#define RLOG(...)
#endif

/* recovery structure */
typedef struct{
  /* zip resource */
  LIBAROMA_ZIP zip;
  
  /* statusbar */
  LIBAROMA_CANVASP status_canvas;
  word status_prvcolor;
  word status_reqcolor;
  word status_bgcolor;
  long status_updatestart;
  
  /* main ui */
  LIBAROMA_WINDOWP  win;
  LIBAROMA_WINDOWP  sidebar;
  LIBAROMA_CONTROLP appbar;
  LIBAROMA_CONTROLP fragment;
  LIBAROMA_CONTROLP sidemenu;
} RECOVERY, * RECOVERYP;

/* global ui id */
#define ID_FRAGMENT             1
#define ID_APPBAR               2
#define ID_SIDEMENU             3
#define ID_SIDEMENU_IMAGE       150
#define ID_SIDEMENU_SHUTDOWN    151
#define ID_SIDEMENU_REBOOT_SYS  152
#define ID_SIDEMENU_REBOOT_REC  153
#define ID_SIDEMENU_REBOOT_BLD  154
#define ID_SIDEMENU_SETTINGS    155
#define ID_SIDEMENU_ABOUT       156
#define ID_SIDEMENU_HELP        157

/* fragment id */
#define ID_MAINMENU_FRAGMENT    50
#define ID_USB_FRAGMENT         51


/* recovery_libs.c */
RECOVERYP recovery();
byte recovery_init();
byte recovery_release();
LIBAROMA_CANVASP recovery_load_icon_ex(const char * icon_name,
  word color);
LIBAROMA_CANVASP recovery_load_icon(const char * icon_name,
  LIBAROMA_WINDOWP win);
  
/* main menu activity */
void recovery_mainmenu();
void recovery_usb(int parent_id,LIBAROMA_RECTP rect);


#endif /* __libaroma_recovery_h__ */
