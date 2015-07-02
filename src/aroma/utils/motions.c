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
 * Filename    : motions.c
 * Description : motions and physics engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_motions_c__
#define __libaroma_motions_c__
#include <aroma_internal.h>

/******************************************************************************
 * Interpolator                                                               *
 ******************************************************************************/
/*
 * Function    : libaroma_duration_state
 * Return Value: float
 * Descriptions: calculate state by duration
 */
float libaroma_duration_state(long start, int duration){
  long diff = libaroma_tick() - start;
  if (diff>duration){
    return 1.0;
  }
  return ((float) diff)/((float) duration);
} /* End of libaroma_duration_state */

static inline float _libaroma_cubic_bezier_curve(float v1,float v2,float t){
	float v = 1 - t;
	return (3*v*v*t*v1+3*v*t*t*v2+t*t*t);
}
/*
 * Function    : libaroma_cubic_bezier
 * Return Value: float
 * Descriptions: calculate cubic bezier value from t
 */
float libaroma_cubic_bezier(float x1,float y1,float x2,float y2,float t) {
	return _libaroma_cubic_bezier_curve(x1,x2,
	  _libaroma_cubic_bezier_curve(y1,y2,t)
	);
} /* End of libaroma_cubic_bezier */

/*
 * Function    : libaroma_motion_fluid
 * Return Value: float
 * Descriptions: fluid motion
 */
float libaroma_motion_fluid(float t){
  if (t<1.0){
    t *= 8;
    if (t<1.0) {
      t -= (1.0 - (float) exp(-t));
    } else {
      float start = 0.36787944117;
      t = 1.0 - exp(1.0-t);
      t = start + t * (1.0 - start);
    }
    t+=(0.002*t);
    if (t>=1){
      t=1.0;
    }
  }
  else{
    t=1.0;
  }
  return t;
} /* End of libaroma_motion_fluid */

/*
 * Function    : libaroma_motion_decelerate
 * Return Value: float
 * Descriptions: decelerate motion
 */
float libaroma_motion_decelerate(float t) {
  return (float)(1.0-(1.0-t)*(1.0-t));
} /* End of libaroma_motion_decelerate */

/*
 * Function    : libaroma_motion_accelerate
 * Return Value: float
 * Descriptions: accelerate motion
 */
float libaroma_motion_accelerate(float t) {
  return t * t;
} /* End of libaroma_motion_accelerate */


/******************************************************************************
 * Fling Motions                                                              *
 ******************************************************************************/
 
/*
 * Function    : libaroma_fling_down
 * Return Value: void
 * Descriptions: init first fling
 */
void libaroma_fling_down(LIBAROMA_FLINGP p, int pos){
  p->n=1;
  p->points[0]=pos;
  p->times[0]=libaroma_tick();
} /* End of libaroma_fling_down */

/*
 * Function    : libaroma_fling_move
 * Return Value: void
 * Descriptions: add fling point
 */
void libaroma_fling_move(LIBAROMA_FLINGP p, int pos){
  long ctick = libaroma_tick();
  p->n++;
  if (p->n>LIBAROMA_FLING_HISTORY){
    int i;
    for (i=1;i<LIBAROMA_FLING_HISTORY;i++){
      p->points[i-1]=p->points[i];
      p->times[i-1]=p->times[i];
    }
    p->n--;
  }
  p->points[p->n-1]=pos;
  p->times[p->n-1]=ctick;
} /* End of libaroma_fling_move */

/*
 * Function    : libaroma_fling_up
 * Return Value: int
 * Descriptions: process up event and get velocity
 */
int libaroma_fling_up(LIBAROMA_FLINGP p, int pos){
  int current_point = (pos==0)?p->points[p->n-1]:pos;
  long current_time = libaroma_tick();
  int first_point   = p->points[0];
  long first_time   = p->times[0];
  if (current_time-first_time<1) {
    first_time--;
  }
  if (current_time-first_time<=300) {
    int diff = first_point - current_point;
    int time = current_time - first_time;
    return round(((double) diff/(time>>4))*360);
  }
  return 0;
} /* End of libaroma_fling_up */

/******************************************************************************
 * Ripple Motions                                                             *
 ******************************************************************************/

/*
 * Function    : libaroma_ripple_thread
 * Return Value: byte
 * Descriptions: ripple thread hanlder
 */
byte libaroma_ripple_thread(LIBAROMA_RIPPLEP me, long wait_ms){
  byte ret = 0;
  int i;
  long nowtick=libaroma_tick();
  for (i=0;i<LIBAROMA_RIPPLE_MAX;i++){
    if (me->touch_start[i]){
      long touch_start = me->touch_start[i] + wait_ms;
      if ((nowtick>=touch_start)||(wait_ms==0)){
        if ((touch_start)&&(me->touch_state[i]<1)){
          float nowstate=libaroma_duration_state(touch_start, 1600);
          if (me->touch_state[i]!=nowstate){
            ret |= LIBAROMA_RIPPLE_REDRAW;
            me->touch_state[i]=nowstate;
          }
        }
        if ((me->touched==1)&&(i==me->p)){
          if ((me->touch_state[i]>=0.7)&&(!me->holded)){
            me->holded=1;
            ret |= LIBAROMA_RIPPLE_HOLDED;
          }
        }
        else if ((me->touched==2)||(i!=me->p)){
          if (me->touch_state[i]>=0.12){
            if (i==me->p){
              me->touched=0;
            }
            me->touch_start[i]=0;
            me->release_start[i]=nowtick;
            me->release_state[i]=0.0;
          }
        }
      }
      else if ((me->touched==2)||(i!=me->p)) {
        me->touch_start[i]=0;
        me->touch_state[i]=0;
        if (i==me->p){
          me->touched=0;
        }
      }
    }
    else if ((me->touched==2)&&(i==me->p)) {
      me->touched=0;
    }
    if ((!me->touched||(i!=me->p))&&me->release_start[i]) {
      float nowstate=libaroma_duration_state(me->release_start[i], 375);
      if (me->release_state[i]!=nowstate){
        ret |= LIBAROMA_RIPPLE_REDRAW;
        me->release_state[i]=nowstate;
      }
      if (me->release_state[i]>=1){
        me->release_start[i]=0;
        me->touch_start[i]=0;
        if (i==me->p){
          ret |= LIBAROMA_RIPPLE_RELEASED;
        }
      }
    }
  }
  return ret;
} /* End of libaroma_ripple_thread */

/*
 * Function    : libaroma_ripple_down
 * Return Value: void
 * Descriptions: ripple down handler
 */
void libaroma_ripple_down(LIBAROMA_RIPPLEP me, int x, int y){
  me->p++;
  if (me->p>=LIBAROMA_RIPPLE_MAX){
    me->p=0;
  }
  me->x[me->p]=x;
  me->y[me->p]=y;
  me->touch_start[me->p]=libaroma_tick();
  me->touch_state[me->p]=0.0;
  me->release_state[me->p]=0.0;
  me->release_start[me->p]=0;
  me->holded=0;
  me->touched=1;
} /* End of libaroma_ripple_down */

/*
 * Function    : libaroma_ripple_move
 * Return Value: void
 * Descriptions: ripple move handler
 */
void libaroma_ripple_move(LIBAROMA_RIPPLEP me, int x, int y){
  me->x[me->p]=x;
  me->y[me->p]=y;
} /* End of libaroma_ripple_down */

/*
 * Function    : libaroma_ripple_up
 * Return Value: byte
 * Descriptions: ripple up handler
 */
byte libaroma_ripple_up(LIBAROMA_RIPPLEP me, long wait_ms){
  byte res=0;
  if (me->touched){
    res |= LIBAROMA_RIPPLE_TOUCHED;
    if (me->holded){
      res |= LIBAROMA_RIPPLE_HOLDED;
    }
    me->touched=2;
    if (wait_ms>0){
      long nowtick=libaroma_tick();
      if (me->touch_start[me->p]+wait_ms>nowtick){
        me->touch_start[me->p]=nowtick-wait_ms;
      }
    }
  }
  return res;
} /* End of libaroma_ripple_up */

/*
 * Function    : libaroma_ripple_cancel
 * Return Value: void
 * Descriptions: cancle ripple
 */
void libaroma_ripple_cancel(LIBAROMA_RIPPLEP me){
  if (me->touched==1){
    me->touched=2;
  }
} /* End of libaroma_ripple_cancel */

/*
 * Function    : libaroma_ripple_calculation_loop
 * Return Value: byte
 * Descriptions: ripple drawing loop
 */
byte libaroma_ripple_loop(LIBAROMA_RIPPLEP me, int * ipos, int * pos){
  if (!ipos||!pos){
    return 0;
  }
  if ((*ipos>=LIBAROMA_RIPPLE_MAX)||(*ipos<0)){
    return 0;
  }
  *pos=(*ipos+(me->p+1))%LIBAROMA_RIPPLE_MAX;
  if (*pos>=LIBAROMA_RIPPLE_MAX){
    *pos-=LIBAROMA_RIPPLE_MAX;
  }
  ipos[0]++;
  return 1;
}

/*
 * Function    : libaroma_ripple_calculation
 * Return Value: byte
 * Descriptions: ripple drawing calculation
 */
byte libaroma_ripple_calculation(
  LIBAROMA_RIPPLEP me,
  int w, int h,
  bytep push_opacity,
  bytep ripple_opacity,
  int * x, int *y, int * size,
  int pos
){
  if ((pos>=LIBAROMA_RIPPLE_MAX)||(pos<0)){
    return 0;
  }
  if (libaroma_ripple_isactive_pos(me,pos)) {
    float cbz_state = me->touch_state[pos];
    float tstate    = cbz_state*7.5;
    float ropa      = 1.0;
    if (me->release_state[pos]>0){
      cbz_state += (1.0-cbz_state) * me->release_state[pos];
      ropa-= (me->release_state[pos]<1)?(MAX(0,me->release_state[pos]-0.2)*1.25):1;
    }
    cbz_state=(cbz_state<1)?libaroma_motion_decelerate(cbz_state):1;
    tstate=(tstate<1)?libaroma_motion_accelerate(tstate):1;
    ropa=(ropa<1)?libaroma_motion_decelerate(ropa):1;
    byte target_opa = *ripple_opacity?*ripple_opacity:0xff;
    byte opa = (target_opa*tstate)*ropa;
    *push_opacity = opa>>1;
    if (*push_opacity){
      int halfWidth=w>>1;
      int halfHeight=h>>1;
      int end_size = sqrt(pow(halfWidth,2)+pow(halfHeight,2))*2;
      int rsize= end_size * cbz_state;
      if (rsize<end_size/8){
        opa = (opa * rsize) / (end_size/8);
      }
      int mx = me->x[pos]-*x;
      int my = me->y[pos]-*y;
      int tx = (halfWidth-mx)*cbz_state;
      int ty = (halfHeight-my)*cbz_state;
      *ripple_opacity = opa;
      *x = mx+tx;
      *y = my+ty;
      *size = rsize;
      return 1;
    }
    return 0;
  }
  return 0;
} /* End of libaroma_ripple_calculation */

#endif /* __libaroma_motions_c__ */
