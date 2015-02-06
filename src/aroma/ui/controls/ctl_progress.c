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
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ctl_progress_c__
#define __libaroma_ctl_progress_c__

#define _LIBAROMA_CTL_PROGRESS_SIGNATURE 0x02
#define _LIBAROMA_CTL_PROGRESS_BEZIER_TIMING 500

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
  int curval;
  int currx;
  long tick;
  float state;
  float currstate;
};

/*
 * Function    : _libaroma_ctl_progress_thread
 * Return Value: static void *
 * Descriptions: control thread callback
 */
void _libaroma_ctl_progress_thread(LIBAROMA_CONTROLP ctl) {
  _LIBAROMA_CTL_PROGRESSP me = (_LIBAROMA_CTL_PROGRESSP) ctl->internal;
  if (me->type!=LIBAROMA_CTL_PROGRESS_DETERMINATE){
    long diff = libaroma_tick() - me->tick;
    if (diff>_LIBAROMA_CTL_PROGRESS_BEZIER_TIMING*4){
      me->state=1.0;
    }
    else{
      me->state = ((float) diff)/
        ((float) _LIBAROMA_CTL_PROGRESS_BEZIER_TIMING*4);
    }
    if (me->currstate!=me->state){
      me->currstate=me->state;
      libaroma_control_draw(ctl,1);
    }
    if (me->state>=1.0){
      me->state=0;
      me->tick=libaroma_tick();
    }
  }
  else if (me->state<1.0){
    long diff = libaroma_tick() - me->tick;
    if (diff>_LIBAROMA_CTL_PROGRESS_BEZIER_TIMING){
      me->state = 1.0;
    }
    else{
      me->state = libaroma_cubic_bezier_swiftout(
        ((float) diff)/((float) _LIBAROMA_CTL_PROGRESS_BEZIER_TIMING)
      );
    }
    me->curval = me->preval+((me->value - me->preval) * me->state);
    if (me->currstate!=me->state){
      if (me->currx>0){
        me->currx-=(me->currx*me->state);
        if (me->currx<0){
          me->currx=0;
        }
      }
      /* redraw */
      me->currstate = me->state;
      libaroma_control_draw(ctl,1);
    }
  }
} /* End of _libaroma_ctl_progress_thread */

/*
 * Function    : _libaroma_ctl_progress_update
 * Return Value: void
 * Descriptions: update progress setting
 */
void _libaroma_ctl_progress_update(
    LIBAROMA_CONTROLP ctl,
    _LIBAROMA_CTL_PROGRESSP me){
  if (me->type==LIBAROMA_CTL_PROGRESS_DETERMINATE){
    me->preval = me->curval;
  }
  me->state=0.0;
  me->tick=libaroma_tick();
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
    _LIBAROMA_CTL_PROGRESS_SIGNATURE, _LIBAROMA_CTL_PROGRESSP, 
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
    _LIBAROMA_CTL_PROGRESS_SIGNATURE, _LIBAROMA_CTL_PROGRESSP, 
  );
  
  libaroma_control_erasebg(ctl,c);
  
  int ix = libaroma_dp(4);
  int iy = libaroma_dp(2);
  int iw = ctl->w-ix*2;
  int ih = ctl->h-iy*2;
  libaroma_draw_rect(c,
    ix, iy, iw, ih,
    libaroma_wm_get_color("control"),
    0xcc
  );
  
  if (me->type==LIBAROMA_CTL_PROGRESS_DETERMINATE){
    int val_w = (iw * me->curval) / me->max;
    libaroma_draw_rect(c,
      me->currx+ix,iy,val_w,ih,
      libaroma_wm_get_color("highlight"),
      0xcc
    );
  }
  else{
    int dw = iw *2;
    float easein  = libaroma_cubic_bezier_easein(me->state);
    float easeout = libaroma_cubic_bezier_easeout(me->state);
    int left, right;
    
    if (me->type==LIBAROMA_CTL_PROGRESS_INDETERMINATE){
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
          libaroma_wm_get_color("highlight"),
          0xcc
        );
      }
    }
    if ((r2>0)&&(l2<iw)){
      int w = r2-l2;
      if (w>0){
        libaroma_draw_rect(c,
          l2+ix,iy,w,ih,
          libaroma_wm_get_color("highlight"),
          0xcc
        );
      }
    }
    
    /* update position */
    me->curval = ((hr1?r1-l1:r2-l2)*me->max)/iw;
    me->currx = (hr1?l1:l2);
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
    _LIBAROMA_CTL_PROGRESS_SIGNATURE, _LIBAROMA_CTL_PROGRESSP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
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
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      _LIBAROMA_CTL_PROGRESS_SIGNATURE,id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(8), /* min size */
      _libaroma_ctl_progress_msg,
      _libaroma_ctl_progress_draw,
      NULL,
      _libaroma_ctl_progress_destroy,
      _libaroma_ctl_progress_thread
    );
  
  /* init internal data */
  _LIBAROMA_CTL_PROGRESSP me = (_LIBAROMA_CTL_PROGRESSP)
      malloc(sizeof(_LIBAROMA_CTL_PROGRESS));
  
  /* set internal data */
  me->type = type;
  me->max  = max;
  me->value= value;
  me->preval=value;
  me->curval=value;
  me->state= 1;
  me->tick = 0;
  me->currx = 0;
  
  /* attach internal data & return*/
  ctl->internal = (voidp) me;
  return libaroma_window_attach(win,ctl);
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
    _LIBAROMA_CTL_PROGRESS_SIGNATURE, _LIBAROMA_CTL_PROGRESSP, 0
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
    _LIBAROMA_CTL_PROGRESS_SIGNATURE, _LIBAROMA_CTL_PROGRESSP, 0
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
    _LIBAROMA_CTL_PROGRESS_SIGNATURE, _LIBAROMA_CTL_PROGRESSP, 0
  );
  me->max = max;
  if (me->value>me->max){
    me->value=me->max;
  }
  _libaroma_ctl_progress_update(ctl,me);
  return 1;
} /* End of libaroma_ctl_progress_max */

#endif /* __libaroma_ctl_progress_c__ */
