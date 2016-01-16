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
 * Filename    : ctl_label.c
 * Description : label control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 28/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_label_c__
#define __libaroma_ctl_label_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

/* HANDLER */
dword _libaroma_ctl_label_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_label_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_label_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_label_thread(LIBAROMA_CONTROLP ctl);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_label_handler={
  message:_libaroma_ctl_label_msg,
  draw:_libaroma_ctl_label_draw,
  focus:NULL,
  destroy:_libaroma_ctl_label_destroy,
  thread:_libaroma_ctl_label_thread
};
  
/*
 * Structure   : __LIBAROMA_CTL_LABEL
 * Typedef     : _LIBAROMA_CTL_LABEL, * _LIBAROMA_CTL_LABELP
 * Descriptions: internal label data
 */
typedef struct __LIBAROMA_CTL_LABEL _LIBAROMA_CTL_LABEL;
typedef struct __LIBAROMA_CTL_LABEL * _LIBAROMA_CTL_LABELP;
struct __LIBAROMA_CTL_LABEL{
  char * text;
  word color;
  byte size;
  byte fontid;
  dword flags;
  byte update;
  byte lh;
  byte valign;
  word bgcolor;
  byte usebg;
  int  vpos;
  byte hidden;
  LIBAROMA_MUTEX mutex;
};

byte _libaroma_ctl_label_thread(LIBAROMA_CONTROLP ctl) {
  _LIBAROMA_CTL_CHECK(
	  _libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
  if (me->update){
    libaroma_mutex_lock(me->mutex);
  	me->update=0;
  	libaroma_mutex_unlock(me->mutex);
    return 1;
  }
  return 0;
}

void _libaroma_ctl_label_destroy(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
	  _libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 
	);
	libaroma_mutex_lock(me->mutex);
  if (me->text){
    free(me->text);
  }
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  free(me);
}

void _libaroma_ctl_label_draw(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CANVASP c){
  _LIBAROMA_CTL_CHECK(
	  _libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 
	);
	
	if (me->usebg){
	  libaroma_draw_rect(c,0,0,c->w,c->h,me->bgcolor,0xff);
	}
	else{
    libaroma_control_erasebg(ctl,c);
  }
  if (!me->hidden){
    libaroma_mutex_lock(me->mutex);
    if (me->valign){
      LIBAROMA_TEXT txt = libaroma_text(
        me->text,me->color, c->w,LIBAROMA_FONT(me->fontid,me->size)|me->flags,
      	me->lh
      );
      if (txt){
        int txth=libaroma_text_height(txt);
        if (me->valign==1){
          libaroma_text_draw(
            c, txt, 0, ((c->h>>1)-(txth>>1))+me->vpos
          );
        }
        else{
          libaroma_text_draw(
            c, txt, 0, c->h-(txth>>1)
          );
        }
        libaroma_text_free(txt);
      }
    }
    else{
      libaroma_draw_text(
      	c,
      	me->text,
      	0,me->vpos,me->color, c->w,
      	LIBAROMA_FONT(me->fontid,me->size)|me->flags,
      	me->lh
      );
    }
    libaroma_mutex_unlock(me->mutex);
  }
}

dword _libaroma_ctl_label_msg(LIBAROMA_CONTROLP ctl, LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
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

byte libaroma_ctl_label_hidden(
	LIBAROMA_CONTROLP ctl,byte hidden){
  _LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->hidden=hidden;
  me->update=1;
  libaroma_mutex_unlock(me->mutex);
	return 1;
}

char * libaroma_ctl_label_get_text(LIBAROMA_CONTROLP ctl){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, NULL
	);
	return me->text;
}

byte libaroma_ctl_label_set_text(
	LIBAROMA_CONTROLP ctl,const char * text,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	if (me->text){
		free(me->text);
	}
	me->text=strdup(text);
	libaroma_mutex_unlock(me->mutex);
	if (update){
		me->update=1;
	}
	return 1;
}

byte libaroma_ctl_label_set_color(
	LIBAROMA_CONTROLP ctl,word color,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->color=color;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_label_set_size(
	LIBAROMA_CONTROLP ctl,byte size,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->size=size;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_label_set_fontid(
	LIBAROMA_CONTROLP ctl,byte fontid,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->fontid=fontid;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_label_set_flags(
	LIBAROMA_CONTROLP ctl,dword flags,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->flags=flags;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_label_set_lineheight(
	LIBAROMA_CONTROLP ctl,byte lineheight,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->lh   = lineheight;
  if (me->lh==0){
  	me->lh=100;
  }
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_label_set_valign(
	LIBAROMA_CONTROLP ctl,byte valign,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->valign  = valign;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

byte libaroma_ctl_label_set_vpos(
	LIBAROMA_CONTROLP ctl,int vpos,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->vpos  = vpos;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}


byte libaroma_ctl_label_set_bgcolor(
	LIBAROMA_CONTROLP ctl,word bgcolor, byte usebg,byte update){
	_LIBAROMA_CTL_CHECK(
		_libaroma_ctl_label_handler, _LIBAROMA_CTL_LABELP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->bgcolor  = bgcolor;
	me->usebg  = usebg;
	if (update){
		me->update=1;
	}
	libaroma_mutex_unlock(me->mutex);
	return 1;
}

int libaroma_ctl_label_height(
  const char * text, int w,
  byte fontid, byte size,
  dword flags, byte lineheight
){
  LIBAROMA_TEXT txt = libaroma_text(
    text,0,w,LIBAROMA_FONT(fontid,size)|flags,
  	lineheight
  );
  if (txt){
    int txth=libaroma_text_height(txt);
    libaroma_text_free(txt);
    return txth;
  }
  return 0;
}

LIBAROMA_CONTROLP libaroma_ctl_label_valign(
  LIBAROMA_WINDOWP win, word id, const char * text,
  int x, int y, int w, int h,
  word color, byte fontid, byte size, dword flags, byte lineheight,
  byte valign
){
  _LIBAROMA_CTL_LABELP me = (_LIBAROMA_CTL_LABELP)
    calloc(sizeof(_LIBAROMA_CTL_LABEL),1);
  if (!me){
    ALOGW("libaroma_ctl_label alloc label memory failed");
    return NULL;
  }
  me->text = strdup(text);
  me->color= color;
  me->size = size;
  me->fontid = fontid;
  me->flags= flags;
  me->lh   = lineheight;
  me->bgcolor=0;
  me->usebg=0;
  if (valign>=10){
    valign-=10;
    me->vpos=-libaroma_dp(2);
  }
  else{
    me->vpos=0;
  }
  me->valign = valign;
  if (me->lh==0){
  	me->lh=100;
  }
  me->update=1;
  libaroma_mutex_init(me->mutex);
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(10),libaroma_dp(10),
      me,
      &_libaroma_ctl_label_handler,
      win
    );
  
  if (!ctl){
    if (me->text){
      free(me->text);
    }
    libaroma_mutex_free(me->mutex);
    free(me);
  }
  return ctl;
}

#endif /* __libaroma_ctl_label_c__ */
