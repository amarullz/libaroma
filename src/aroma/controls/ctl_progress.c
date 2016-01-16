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
 * Filename    : ctl_progress.c
 * Description : progress control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 29/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_progress_c__
#define __libaroma_ctl_progress_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

/* HANDLER */
dword _libaroma_ctl_progress_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_progress_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_progress_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_progress_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_progress_handler={
  message:_libaroma_ctl_progress_msg,
  draw:_libaroma_ctl_progress_draw,
  focus:NULL,
  destroy:_libaroma_ctl_progress_destroy,
  thread:_libaroma_ctl_progress_thread
};

#define _LIBAROMA_CTL_PROGRESS_BEZIER_TIMING    500



/*
 * Structure   : __LIBAROMA_CTL_PROGRESS
 * Typedef     : _LIBAROMA_CTL_PROGRESS, * _LIBAROMA_CTL_PROGRESSP
 * Descriptions: progress structure
 */
typedef struct __LIBAROMA_CTL_PROGRESS _LIBAROMA_CTL_PROGRESS;
typedef struct __LIBAROMA_CTL_PROGRESS * _LIBAROMA_CTL_PROGRESSP;
struct __LIBAROMA_CTL_PROGRESS{
  byte type;
  int max;
  int value;
  int preval;
  float curval;
  int currx;
  long tick;
  long growtime;
  float state;
  float currstate;
  float currfrom;
};

/*
 * Function    : _libaroma_ctl_progress_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_progress_thread(LIBAROMA_CONTROLP ctl) {
  _LIBAROMA_CTL_PROGRESSP me = (_LIBAROMA_CTL_PROGRESSP) ctl->internal;
  byte res = 0;
  if ((me->type&3)!=LIBAROMA_CTL_PROGRESS_DETERMINATE){
    if (me->type&LIBAROMA_CTL_PROGRESS_CIRCULAR){
      /* circular indeterminate/query */
      long now = libaroma_tick();
      long deltaTime = now - me->tick;
      me->tick=now;
      if (deltaTime>600){
        deltaTime=0;
        me->currstate=0;
      }
      me->growtime += deltaTime;
      if (me->growtime>600){
        me->growtime -= 600;
        me->currx = me->currx?0:1;
      }
      
      float distance = (float)
        cos((me->growtime/600.0+1)*__PI)/2.0+0.5;
      if (me->currx) {
          me->state = distance * 254.0;
      } else {
          float newLength = 254.0 * (1 - distance);
          me->currstate += (me->state - newLength);
          me->state = newLength;
      }
      me->currstate += deltaTime*0.2;
      if (me->currstate>360) {
          me->currstate -= 360;
      }
      res=1;
    }
    else{
      me->state=libaroma_control_state(
        me->tick, _LIBAROMA_CTL_PROGRESS_BEZIER_TIMING*4
      );
      if (me->state!=me->currstate){
        me->currstate = me->state;
        res=1;
      }
      if (me->state>=1.0){
        me->state=0;
        me->tick=libaroma_tick();
      }
    }
  }
  else if (me->state<1.0){
    me->state =libaroma_control_state(
      me->tick, _LIBAROMA_CTL_PROGRESS_BEZIER_TIMING
    );
    float bzs = libaroma_cubic_bezier_swiftout(me->state);
    me->curval = me->preval+((me->value - me->preval) * bzs);
    if (me->currfrom>0){
      me->currfrom-= me->currfrom * bzs;
      if (me->currfrom<0){
        me->currfrom=0;
      }
    }
    if (me->currstate!=me->state){
      if (me->currx>0){
        me->currx-=me->currx*bzs;
        if (me->currx<0){
          me->currx=0;
        }
      }
      me->currstate = me->state;
      res=1;
    }
  }
  return res;
} /* End of _libaroma_ctl_progress_thread */

/*
 * Function    : _libaroma_ctl_progress_update
 * Return Value: void
 * Descriptions: update progress setting
 */
void _libaroma_ctl_progress_update(
    LIBAROMA_CONTROLP ctl,
    _LIBAROMA_CTL_PROGRESSP me){
  if ((me->type&3)==LIBAROMA_CTL_PROGRESS_DETERMINATE){
    me->preval = me->curval;
  }
  if ((!(me->type&LIBAROMA_CTL_PROGRESS_CIRCULAR))||
      ((me->type&3)==LIBAROMA_CTL_PROGRESS_DETERMINATE)){
    me->tick=libaroma_tick();
  }
  me->state=0.0;
} /* End of _libaroma_ctl_progress_update */

/*
 * Function    : _libaroma_ctl_progress_destroy
 * Return Value: void
 * Descriptions: control destroy callback
 */
void _libaroma_ctl_progress_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_progress_handler, _LIBAROMA_CTL_PROGRESSP, 
  );
  free(me);
} /* End of _libaroma_ctl_progress_destroy */

/*
 * Function    : _libaroma_ctl_progress_draw
 * Return Value: void
 * Descriptions: control draw callback
 */
void _libaroma_ctl_progress_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_progress_handler, _LIBAROMA_CTL_PROGRESSP, 
  );
  
  libaroma_control_erasebg(ctl,c);
  
  if (me->type&LIBAROMA_CTL_PROGRESS_CIRCULAR){
    int sz = MIN(c->w>>1,c->h>>1);
    float width = ((float) sz) / 6.0;
    float from= -90;
    float length=0;
    if ((me->type&3)==LIBAROMA_CTL_PROGRESS_DETERMINATE){
      from += me->currfrom;
      length = (360.0 * me->curval) / me->max;
    }
    else{
      from += me->currstate;
      length = 16 + me->state;
      me->currfrom = me->currstate;
      me->curval = (length/360.0) * me->max;
      if ((me->type&3)==LIBAROMA_CTL_PROGRESS_QUERY){
        from=360.0-from;
        length=360.0-length;
      }
    }
    libaroma_draw_arc(
      c,
      c->w>>1,c->h>>1,
      sz, sz, width,
      from, from+length,
      libaroma_colorget(ctl,NULL)->primary,
      0xff,0,0.5
    );
  }
  else{
    int ix = libaroma_dp(4);
    int iy = libaroma_dp(2);
    int iw = ctl->w-ix*2;
    int ih = ctl->h-iy*2;
    libaroma_draw_rect(c,
      ix, iy, iw, ih,
      libaroma_colorget(ctl,NULL)->control_bg,
      0xcc
    );
    
    if ((me->type&3)==LIBAROMA_CTL_PROGRESS_DETERMINATE){
      int val_w = (iw * me->curval) / me->max;
      libaroma_draw_rect(c,
        me->currx+ix,iy,val_w,ih,
        libaroma_colorget(ctl,NULL)->primary,
        0xcc
      );
    }
    else{
      int dw = iw *2;
      float easein  = libaroma_cubic_bezier_easein(me->state);
      float easeout = libaroma_cubic_bezier_easeout(me->state);
      int left, right;
      
      if ((me->type&3)==LIBAROMA_CTL_PROGRESS_INDETERMINATE){
        left = dw * easeout;
        right = dw * easein;
      }
      else{
        right = dw * (1.0-easeout);
        left = dw * (1.0-easein);
      }
      
      int l1=left;
      int r1=right;
      int l2=0;
      int r2=0;
      if (right>iw){
        r1 = iw;
        r2 = right - iw;
      }
      if (left>iw){
        l1 = iw;
        l2 = left - iw;
      }
      if (r2>iw){
        r2=iw;
      }
      if (r1>iw){
        r1=iw;
      }
      byte hr1=0;
      if ((r1>0)&&(l1<iw)){
        hr1=1;
        int w = r1-l1;
        if (w>0){
          libaroma_draw_rect(c,
            l1+ix,iy,w,ih,
            libaroma_colorget(ctl,NULL)->primary,
            0xcc
          );
        }
      }
      if ((r2>0)&&(l2<iw)){
        int w = r2-l2;
        if (w>0){
          libaroma_draw_rect(c,
            l2+ix,iy,w,ih,
            libaroma_colorget(ctl,NULL)->primary,
            0xcc
          );
        }
      }
      
      /* update position */
      me->curval = ((hr1?r1-l1:r2-l2)*me->max)/iw;
      me->currx = (hr1?l1:l2);
    }
  }
} /* End of _libaroma_ctl_progress_draw */

/*
 * Function    : _libaroma_ctl_progress_msg
 * Return Value: dword
 * Descriptions: control message callback
 */
dword _libaroma_ctl_progress_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_progress_handler, _LIBAROMA_CTL_PROGRESSP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE: 
    case LIBAROMA_MSG_WIN_INACTIVE:
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        me->currstate = 0.0;
      }
      break;
  }
  return 1;
} /* End of _libaroma_ctl_progress_msg */

/*
 * Function    : libaroma_ctl_progress
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create new progress control
 */
LIBAROMA_CONTROLP libaroma_ctl_progress(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    byte type,
    int max,
    int value
){
  /* init internal data */
  _LIBAROMA_CTL_PROGRESSP me = (_LIBAROMA_CTL_PROGRESSP)
      calloc(sizeof(_LIBAROMA_CTL_PROGRESS),1);
  if (!me){
    ALOGW("libaroma_ctl_progress alloc progress memory failed");
    return NULL;
  }
  
  /* set internal data */
  me->type = type;
  me->max  = max;
  me->value= value;
  me->preval=value;
  me->curval=value;
  me->state= 1;
  
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(24),libaroma_dp(8), /* min size */
      me,
      &_libaroma_ctl_progress_handler,
      win
    );
  
  if (!ctl){
    free(me);
  }
  return ctl;
} /* End of libaroma_ctl_progress */

/*
 * Function    : libaroma_ctl_progress_type
 * Return Value: byte
 * Descriptions: set progress type
 */
byte libaroma_ctl_progress_type(
    LIBAROMA_CONTROLP ctl,
    byte type
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_progress_handler, _LIBAROMA_CTL_PROGRESSP, 0
  );
  me->type = type;
  _libaroma_ctl_progress_update(ctl,me);
  return 1;
} /* End of libaroma_ctl_progress_type */

/*
 * Function    : libaroma_ctl_progress_value
 * Return Value: byte
 * Descriptions: set progress value
 */
byte libaroma_ctl_progress_value(
    LIBAROMA_CONTROLP ctl,
    int value
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_progress_handler, _LIBAROMA_CTL_PROGRESSP, 0
  );
  if (value>me->max){
    value=me->max;
  }
  me->value = value;
  _libaroma_ctl_progress_update(ctl,me);
  return 1;
} /* End of libaroma_ctl_progress_value */

/*
 * Function    : libaroma_ctl_progress_max
 * Return Value: byte
 * Descriptions: set progress max value
 */
byte libaroma_ctl_progress_max(
    LIBAROMA_CONTROLP ctl,
    int max
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_progress_handler, _LIBAROMA_CTL_PROGRESSP, 0
  );
  me->max = max;
  if (me->value>me->max){
    me->value=me->max;
  }
  _libaroma_ctl_progress_update(ctl,me);
  return 1;
} /* End of libaroma_ctl_progress_max */

#endif /* __libaroma_ctl_progress_c__ */
