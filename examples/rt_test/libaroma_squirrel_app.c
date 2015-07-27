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
 * Filename    : libaroma_squirrel.c
 * Description : libaroma squirrel wrapper - Application Class
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 09/07/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_libaroma_squirrel_app_c__
#define __libaroma_libaroma_squirrel_app_c__
#include "libaroma_squirrel_internal.h"
#define _CURR_CLASS_NAME app

#include <aromart.h>

typedef struct{
  char appname[256];
  char apptitle[256];
  char appsubtitle[256];
  LIBAROMA_WINDOWP win;
  LIBAROMA_CONTROLP bar;
  word primary_color;
  byte onloop;
} LASQ_APP_INSTANCE;


/**
 ** FUNCTIONS
 **/
static SQInteger LASQ_CFUNC_NAME(destroy)(SQUserPointer p, SQInteger size)
{
	LASQ_APP_INSTANCE * app = ((LASQ_APP_INSTANCE *)p);
	if (app){
	  app->onloop = 0;
	  libaroma_window_free(app->win);
	  free(app);
	}
	return 1;
}
LASQ_FUNC(constructor){
  LASQ_APP_INSTANCE * app = calloc(sizeof(LASQ_APP_INSTANCE),1);
  /* create window */
  app->win = libaroma_window(
    NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL);
  app->primary_color = RGB(009385);
  
  /* appbar */
  app->bar = libaroma_ctl_bar(
    app->win, 1,
    0, 0, LIBAROMA_SIZE_FULL, 56,
    "", app->primary_color, RGB(ffffff)
  );
  
  libaroma_ctl_bar_set_icon(
    app->bar,NULL,0,LIBAROMA_CTL_BAR_ICON_DRAWER,0
  );
  
  app->onloop = 1;
  
  snprintf(app->appname,256,"");
  snprintf(app->apptitle,256,"Application");
  snprintf(app->appsubtitle,256,"");
  
	sq_setinstanceup(v,1,app);
	sq_setreleasehook(v,1,LASQ_CFUNC_NAME(destroy));
	return 0;
}

#define INSTANCE_ARG() \
  LASQ_APP_INSTANCE * app = NULL; \
  sq_getinstanceup(v,1,(SQUserPointer *) &app, 0);

/* update color */
void update_app_color(LASQ_APP_INSTANCE * app){
  if (app->onloop>=2){
    libaroma_ctl_bar_set_color(
      app->bar, app->primary_color, 
      libaroma_color_isdark(app->primary_color)?0xffff:0,
      0
    );
    lart_application_set_primary_color(app->primary_color);
  }
  if (app->onloop==3){
    libaroma_ctl_bar_update(app->bar);
  }
}
/* update color */
void update_app_title(LASQ_APP_INSTANCE * app){
  if (app->onloop>=2){
    if (app->apptitle[0]){
      libaroma_ctl_bar_set_title(app->bar,app->apptitle, 0);
    }
    else{
      libaroma_ctl_bar_set_title(app->bar,"Application", 0);
    }
    if (app->appsubtitle[0]){
      libaroma_ctl_bar_set_subtitle(app->bar,app->appsubtitle, 0);
    }
    else{
      libaroma_ctl_bar_set_subtitle(app->bar,NULL, 0);
    }
  }
  if (app->onloop==3){
    libaroma_ctl_bar_update(app->bar);
  }
}

#define TBVAL(n,pv,val) \
  sq_pushstring(v, n, -1); \
  pv(v,val); \
  sq_newslot(v, -3, SQFalse );
  
void app_push_message(HSQUIRRELVM v, LIBAROMA_MSG * msg, dword command){
  byte cmd  = LIBAROMA_CMD(command);
  word id   = LIBAROMA_CMD_ID(command);
  byte param = LIBAROMA_CMD_PARAM(command);

  sq_pushstring(v, "message", -1);
  sq_newtable(v);
  TBVAL("command",sq_pushinteger,(int) cmd);
  TBVAL("id",sq_pushinteger,(int) id);
  TBVAL("param",sq_pushinteger,(int) param);
  TBVAL("msg",sq_pushinteger,(int) msg->msg);
  TBVAL("state",sq_pushinteger,(int) msg->state);
  TBVAL("key",sq_pushinteger,(int) msg->key);
  TBVAL("x",sq_pushinteger,(int) msg->x);
  TBVAL("y",sq_pushinteger,(int) msg->y);
  TBVAL("data",sq_pushuserpointer,(SQUserPointer) msg->d);
  TBVAL("tick",sq_pushinteger,(int) msg->sent);
  sq_newslot(v, -3, SQFalse );
}

LASQ_FUNC(setPrimaryColor){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  const SQChar * str = NULL;
  sq_getstring(v, 2, &str);
  app->primary_color = libaroma_rgb_from_string((const char *) str);
  update_app_color(app);
	sq_pushbool(v, SQTrue);
	return 1;
}

LASQ_FUNC(setTitle){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  const SQChar * str = NULL;
  sq_getstring(v, 2, &str);
  snprintf(app->apptitle,256,"%s",str);
  update_app_title(app);
	sq_pushbool(v, SQTrue);
	return 1;
}

LASQ_FUNC(setSubTitle){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  const SQChar * str = NULL;
  sq_getstring(v, 2, &str);
  snprintf(app->appsubtitle,256,"%s",str);
  update_app_title(app);
	sq_pushbool(v, SQTrue);
	return 1;
}

LASQ_FUNC(newApplication){
/*  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }*/
  const SQChar * str = NULL;
  sq_getstring(v, 2, &str);
  char * progname = strdup(str);
  lart_application_start(progname,"");
  free(progname);
	sq_pushbool(v, SQTrue);
	return 1;
}

LASQ_FUNC(addControl){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  /*
  HSQOBJECT po;
  sq_getstackobj(v, 2, &po);
  

  
  libaroma_ctl_button(
    app->win, 6, 0, 60, LIBAROMA_SIZE_FULL, 60,
    "This is Test 2", LIBAROMA_CTL_BUTTON_RAISED, 0
  );*/
  return 0;
}

LASQ_FUNC(start){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  app->onloop=2;
  update_app_title(app);
  update_app_color(app);
  libaroma_window_show(app->win);
  lart_application_set_foreground();
  lart_application_set_primary_color(app->primary_color);
  libaroma_ctl_bar_update(app->bar);
  app->onloop=3;
	sq_pushbool(v, SQTrue);
	return 1;
}

LASQ_FUNC(poll){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  if (app->onloop!=3){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  LIBAROMA_MSG msg;
  dword command=libaroma_window_pool(app->win,&msg);
  app_push_message(v, &msg, command);
	return 1;
}

LASQ_FUNC(exit){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  if (app->onloop!=3){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  app->onloop=0;
  sq_pushbool(v, SQTrue);
	return 1;
}

LASQ_FUNC(isActive){
  INSTANCE_ARG();
  if (!app){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  if (app->onloop!=3){
    sq_pushbool(v, SQFalse);
    return 1;
  }
  sq_pushbool(v, SQTrue);
	return 1;
}

/**
 ** METHOD OBJECTS
 **/
LASQ_REG(){
  LASQ_DECL_N(constructor),
  LASQ_DECL(setPrimaryColor,2,"xs"),
  LASQ_DECL(setTitle,2,"xs"),
  LASQ_DECL(setSubTitle,2,"xs"),
  LASQ_DECL(start,1,"x"),
  LASQ_DECL(poll,1,"x"),
  LASQ_DECL(isActive,1,"x"),
  LASQ_DECL(addControl,2,".t"),
  LASQ_DECL(newApplication,2,".s"),
  {0,0}
};

/**
 ** REGISTER FUNCTION
 **/
LASQ_REGISTER_FUNC("Application")


#endif /* __libaroma_libaroma_squirrel_app_c__ */
