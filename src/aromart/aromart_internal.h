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
 * Filename    : aromart_internal.h
 * Description : AROMA Runtime Internal Header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_internal_h__
#define __libaromart_internal_h__
#include <aroma.h>
#include <aromart.h>

#include <pthread.h>    /* pthread_ */
#include <signal.h>     /* pthread_kill */
#include <time.h>       /* clock_gettime */
#include <sys/param.h>  /* MIN,MAX */
#include <sys/mman.h>   /* mmap, munmap */
#include <unistd.h>     /* open, close, unlink, usleep */
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <string.h>
#include <sys/prctl.h>
#include <sys/wait.h>

/******************************* ERROR LOGS ***********************************/
FILE * libaroma_debug_output();
char * libaroma_debug_tag();

#define LARTTAG "RUNTIME"

#define LARTLOGE(...) \
  fprintf(libaroma_debug_output(), "E/%s: " LARTTAG ": ",libaroma_debug_tag());\
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");

#define LARTLOGI(...) \
  fprintf(libaroma_debug_output(), "I/%s: " LARTTAG ": ",libaroma_debug_tag());\
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");

#define LARTLOGS(...) \
  fprintf(libaroma_debug_output(), "N/%s: " LARTTAG ": ",libaroma_debug_tag());\
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");

#define LARTLOGN LARTLOGS

#define LARTLOGV(...) \
  fprintf(libaroma_debug_output(), "D/%s: " LARTTAG ": ",libaroma_debug_tag());\
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");
#define LARTLOGD LARTLOGV

/******************************** MACROS **************************************/

/* named pipes */
#define LART_NAMED_PIPE_APP_READ      "/tmp/.aromart-rfd-%i"
#define LART_NAMED_PIPE_APP_WRITE     "/tmp/.aromart-wfd-%i"
#define LART_NAMED_PIPE_APP_EVENT     "/tmp/.aromart-efd-%i"
#define LART_SHMCANVAS_FB             "@aromart-fb-%i"
#define LART_SHMCANVAS_SB             "@aromart-sb-%i"

/* sysui assets */
#define LART_SYSUI_ZIP_PATH           "/sdcard/recovery.zip"
#define LART_SYSUI_MAINFONT_URI       "res:///fonts/Roboto-Regular.ttf"
#define LART_SYSUI_STATUSBAR_HEIGHT   24

/* app assets */
#define LART_APP_MAINFONT_URI         "sys:///fonts/Roboto-Regular.ttf"

/* root command */
#define LART_ROOT_MSG_CREATE_APP      0x01
#define LART_ROOT_MSG_CREATE_APP_RES  0x02
#define LART_ROOT_MSG_TERMINATED      0xEE

/* Request command */
#define LART_REQ_CMD_FB_SYNC           0x01  /* sync framebuffer */
#define LART_REQ_CMD_SET_PRIMARY_COLOR 0x02  /* update primary color */
#define LART_REQ_CMD_SB_SYNC           0x03  /* sync statusbar canvas */
#define LART_REQ_CMD_READY             0x04  /* app is ready to show */
#define LART_REQ_CMD_SETNAME           0x05  /* set application name */
#define LART_REQ_CMD_EXIT              0xcc  /* app is exited */
#define LART_REQ_CMD_NEW_APP           0x10  /* new application request */

/* event message */
#define LART_EV_NEEDSYNC               0x01  /* should sync in next thread */
#define LART_EV_HID                    0x02  /* hid message */
#define LART_EV_PAUSE                  0x03  /* pause message */
#define LART_EV_RESUME                 0x04  /* resume message */
#define LART_EV_EXIT                   0xcc  /* exit message */

/* Respond status */
#define LART_RES_ERR                   0x00  /* error status */
#define LART_RES_OK                    0x01  /* ok status */

/******************************** STRUCT **************************************/

/* aroma runtime instance */
typedef struct{
  pid_t   spid;           /* system ui thread */
  pid_t   mpid;           /* application manager thread */
  int     rfd;            /* read fd - for new application request */
  int     wfd;            /* read fd - for new application respond */
} LART;

/* vm application */
typedef struct{
  int     aid;            /* application id */
  pid_t   pid;            /* application pid */
  int     wfd;            /* write fd - for request */
  int     rfd;            /* read fd - for respond */
  int     efd;            /* event fd */
  LIBAROMA_CANVASP  cfb;  /* app framebuffer canvas */
  LIBAROMA_CANVASP  csb;  /* overflow status bar canvas */
  int     dpi;            /* display dpi */
} LARTAPP;

/* new application request */
typedef struct{
  int     aid;            /* application id */
  int     dpi;            /* display dpi */
  char    program[256];   /* program name */
  char    param[256];     /* param */
} LART_NEW_APP_DATA;

/* new application result data */
typedef struct{
  int     aid;
  pid_t   pid;
} LART_NEW_APP_RES_DATA;

/******************************** FUNCTIONS ***********************************/

/*
 * runtime
 */
LART * lart();
void lart_set_process_name(char * new_name);

/*
 * messaging
 */
/* send */
byte lart_send(
  int fd,
  byte cmd,
  dword param,
  voidp data,
  size_t data_len
);
/* receive */
byte lart_recv(
  int fd,
  dwordp    res_param,
  voidp  *  res_data,
  size_t *  res_data_len
);
/* do command */
byte lart_command(
  int wfd,
  int rfd,
  byte cmd,
  dword param,
  voidp data,
  size_t data_len,
  dwordp    res_param,
  voidp  *  res_data,
  size_t *  res_data_len
);
/* application command */
byte lart_app_command(
  byte cmd,
  dword param,
  voidp data,
  size_t data_len,
  dwordp    res_param,
  voidp  *  res_data,
  size_t *  res_data_len
);
/* root messaging */
#define lart_rsend(c,p,d,l) lart_send(lart()->wfd,c,p,d,l)
#define lart_rrecv(p,d,l)   lart_recv(lart()->rfd,p,d,l)
#define lart_rcommand(c,p,d,l,rp,rd,rl) \
  lart_command(lart()->wfd, lart()->rfd, c,p,d,l,rp,rd,rl)

/*
 * application
 */
LARTAPP * lart_app();
int lart_app_manager(
  LART_APP_RUN_HANDLER run_handler
);

/*
 * sysui
 */
int lart_sysui(
  LART_SYSTEM_UI_HANDLER sysui_handler,
  LART_SYSTEM_UI_STATUSBAR_DRAW sysui_sb_draw
);

/*
 * driver
 */
byte lart_libaroma_start();
void lart_libaroma_end();
void lart_hid_post(
  byte  type,
  int   key,
  byte  state,
  int   x,
  int   y,
  byte ret
);

#endif /* __libaromart_internal_h__ */
