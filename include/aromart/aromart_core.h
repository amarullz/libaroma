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
 * Filename    : aromart_core.h
 * Description : AROMA Runtime core headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_h__
  #error "Include <aromart.h> instead."
#endif
#ifndef __libaromart_core_h__
#define __libaromart_core_h__

/* start application handler */
typedef int (*LART_APP_RUN_HANDLER)(char *, char *);
typedef int (*LART_SYSTEM_UI_HANDLER)();
typedef void (*LART_SYSTEM_UI_STATUSBAR_DRAW)(LIBAROMA_CANVASP,word);
typedef byte (*LART_SYSTEM_UI_THREAD)();
typedef byte (*LART_SYSTEM_UI_MESSAGE)(LIBAROMA_MSGP);

/* start aroma runtime */
int lart_start(
  char **argv,
  LART_APP_RUN_HANDLER run_handler,
  LART_SYSTEM_UI_HANDLER  sysui_handler,
  LART_SYSTEM_UI_STATUSBAR_DRAW sysui_sb_draw
);

/* start application - return application id */
int lart_application_start(char * program, char * param);

/* application api */
byte lart_application_is_run();
byte lart_application_set_foreground();
byte lart_application_set_primary_color(word color);
byte lart_application_set_drawer_overlay(int x, int w);
void lart_application_set_resource_zip(LIBAROMA_ZIP zip);
void lart_application_set_process_name(char * name);
byte lart_application_syncfb();

/* sysui api */
byte lart_sysui_isactive();
void lart_sysui_set_ui_thread(LART_SYSTEM_UI_THREAD cb);
void lart_sysui_set_message_handler(LART_SYSTEM_UI_MESSAGE cb);
void lart_sysui_print_running_apps();

#endif /* __libaromart_core_h__ */
