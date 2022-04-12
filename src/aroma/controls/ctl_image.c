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
  byte mode;
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
      int dx = 0;
      int dy = 0;
      int dw = c->w;
      int dh = c->h;
      int sx = 0;
      int sy = 0;
      int sw = me->img->w;
      int sh = me->img->h;

      if ((me->mode & LIBAROMA_CTL_IMAGE_MODE_NOSCALE) == LIBAROMA_CTL_IMAGE_MODE_NOSCALE){
        if ((me->mode & LIBAROMA_CTL_IMAGE_MODE_CENTER) == LIBAROMA_CTL_IMAGE_MODE_CENTER){
          dx = (c->w >> 1) - (me->img->w >> 1);
          dy = (c->h >> 1) - (me->img->h >> 1);
          dw = me->img->w;
          dh = me->img->h;
          if (dx < 0)
          {
            sx -= dx;
            sw += dx;
            dw += dx;
            dx = 0;
          }
          if (dy<0){
            sy -= dy;
            sh += dy;
            dh += dy;
            dy = 0;
          }
        }
        if (dw>c->w){
          sw -= (dw - c->w);
          dw = c->w;
        }
        if (dh>c->h){
          sh -= (dh - c->h);
          dh = c->h;
        }
        libaroma_draw_ex(c, me->img, dx, dy, sx, sy, sw, sh, 1, 0xff);
      }
      else{
        if ((me->mode & 0xf0) != 0){
          byte isfit = ((me->mode & LIBAROMA_CTL_IMAGE_MODE_FIT) == LIBAROMA_CTL_IMAGE_MODE_FIT);
          /* prevent div by zero */
          if ((me->img->w>0)&&(me->img->h>0)){
            float b = c->w/((float) me->img->w);
            int hcheck = (int) (b * me->img->h);
            if (isfit){
              if (hcheck>c->h) b = c->h/((float) me->img->h);
            }
            else{
              if (hcheck<c->h) b = c->h/((float) me->img->h);
            }
            int w2=(int)(me->img->w*b);
            int h2=(int)(me->img->h*b);
            int x2=(w2-c->w)>>1;
            int y2=(h2-c->h)>>1;
            dx -= x2;
            dy -= y2;
            dw = w2;
            dh = h2;
            if (dx<0){
              sx -= dx / b;
              sw += dx / b;
              dw += dx;
              dx = 0;
            }
            if (dy<0){
              sy -= dy / b;
              sh += dy / b;
              dh += dy;
              dy = 0;
            }
            if (dw>c->w){
              sw -= (dw - c->w) / b;
              dw = c->w;
            }
            if (dh>c->h){
              sh -= (dh - c->h) / b;
              dh = c->h;
            }
          }
        }
        if ((me->mode & LIBAROMA_CTL_IMAGE_MODE_NOSMOOTH) == LIBAROMA_CTL_IMAGE_MODE_NOSMOOTH){
          libaroma_draw_scale_nearest(c, me->img, dx,dy,dw,dh,sx,sy,sw,sh);
        }
        else{
          libaroma_draw_scale_smooth(c, me->img, dx,dy,dw,dh,sx,sy,sw,sh);
        }
      }
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

byte libaroma_ctl_image_mode(
	LIBAROMA_CONTROLP ctl,byte mode){
  _LIBAROMA_CTL_CHECK(
		_libaroma_ctl_image_handler, _LIBAROMA_CTL_IMAGEP, 0
	);
	libaroma_mutex_lock(me->mutex);
	me->mode=mode;
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
