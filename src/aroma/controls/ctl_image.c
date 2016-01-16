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
 * Filename    : ctl_image.c
 * Description : image control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 28/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_image_c__
#define __libaroma_ctl_image_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

/* HANDLER */
dword _libaroma_ctl_image_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_image_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_image_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_image_thread(LIBAROMA_CONTROLP ctl);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_image_handler={
  message:_libaroma_ctl_image_msg,
  draw:_libaroma_ctl_image_draw,
  focus:NULL,
  destroy:_libaroma_ctl_image_destroy,
  thread:_libaroma_ctl_image_thread
};
  
/*
 * Structure   : __LIBAROMA_CTL_IMAGE
 * Typedef     : _LIBAROMA_CTL_IMAGE, * _LIBAROMA_CTL_IMAGEP
 * Descriptions: internal label data
 */
typedef struct __LIBAROMA_CTL_IMAGE _LIBAROMA_CTL_IMAGE;
typedef struct __LIBAROMA_CTL_IMAGE * _LIBAROMA_CTL_IMAGEP;
struct __LIBAROMA_CTL_IMAGE{
  LIBAROMA_CANVASP img;
  LIBAROMA_MUTEX mutex;
  byte update;
  byte hidden;
};

byte _libaroma_ctl_image_thread(LIBAROMA_CONTROLP ctl) {
  _LIBAROMA_CTL_CHECK(
	  _libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 0
	);
  if (me->update){
    libaroma_mutex_lock(me->mutex);
  	me->update=0;
  	libaroma_mutex_unlock(me->mutex);
    return 1;
  }
  return 0;
}

void _libaroma_ctl_image_destroy(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
	  _libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 
	);
	libaroma_mutex_lock(me->mutex);
  if (me->img){
    libaroma_canvas_free(me->img);
  }
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  free(me);
}

void _libaroma_ctl_image_draw(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CANVASP c){
  _LIBAROMA_CTL_CHECK(
	  _libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 
	);
  libaroma_control_erasebg(ctl,c);
  if (!me->hidden){
    libaroma_mutex_lock(me->mutex);
    if (me->img){
      libaroma_draw_scale_smooth(c,me->img,
        0,0,c->w,c->h,
        0,0,me->img->w,me->img->h
      );
    }
    libaroma_mutex_unlock(me->mutex);
  }
}

dword _libaroma_ctl_image_msg(LIBAROMA_CONTROLP ctl, LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
    case LIBAROMA_MSG_WIN_INACTIVE:
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        libaroma_mutex_lock(me->mutex);
        me->update=1;
        libaroma_mutex_unlock(me->mutex);
      }
      break;
  }
  return 0;
}

byte libaroma_ctl_image_hidden(
	LIBAROMA_CONTROLP ctl,byte hidden){
  _LIBAROMA_CTL_CHECK(
		_libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->hidden=hidden;
  me->update=1;
  libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_image_set_image(
	LIBAROMA_CONTROLP ctl,char * src,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 0
	);
	libaroma_mutex_lock(me->mutex);
	if (me->img){
		libaroma_canvas_free(me->img);
	}
	me->img=libaroma_image_file(src,1);
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_image_set_canvas(
	LIBAROMA_CONTROLP ctl,LIBAROMA_CANVASP src,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 0
	);
	libaroma_mutex_lock(me->mutex);
	if (me->img){
		libaroma_canvas_free(me->img);
	}
	me->img = libaroma_canvas_dup(src);
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

LIBAROMA_CONTROLP libaroma_ctl_image_canvas(
  LIBAROMA_WINDOWP win, word id, LIBAROMA_CANVASP src,
  int x, int y, int w, int h
){
  _LIBAROMA_CTL_IMAGEP me = (_LIBAROMA_CTL_IMAGEP)
    calloc(sizeof(_LIBAROMA_CTL_IMAGE),1);
  if (!me){
    ALOGW("libaroma_ctl_image alloc label memory failed");
    return NULL;
  }
  me->img = libaroma_canvas_dup(src);
  me->update=1;
  libaroma_mutex_init(me->mutex);
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      1,1,
      me,
      &_libaroma_ctl_image_handler,
      win
    );
  if (!ctl){
    if (me->img){
  		libaroma_canvas_free(me->img);
  	}
  	libaroma_mutex_free(me->mutex);
    free(me);
  }
  return ctl;
}


LIBAROMA_CONTROLP libaroma_ctl_image(
  LIBAROMA_WINDOWP win, word id, char * src,
  int x, int y, int w, int h
){
  LIBAROMA_CANVASP cv=NULL;
  if (src){
    cv=libaroma_image_file(src,1);
  }
  LIBAROMA_CONTROLP out = libaroma_ctl_image_canvas(
    win,id,cv,x,y,w,h
  );
  if (cv){
    libaroma_canvas_free(cv);
  }
  return out;
}

#endif /* __libaroma_ctl_image_c__ */
