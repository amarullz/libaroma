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
 * Filename    : window.c
 * Description : window
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_window_c__
#define __libaroma_window_c__
#include <aroma_internal.h>
#include "ui_internal.h"


/* check wm macro */
#define __CHECK_WM(RETVAL) \
  if (libaroma_wm()==NULL){ \
    ALOGW("window manager uninitialized"); \
    return RETVAL; \
  }

/*
 * Variable    : _libaroma_window_measurement_dp
 * Type        : byte
 * Descriptions: default measurement
 */
static byte _libaroma_window_measurement_dp=1;

/*
 * Function    : libaroma_window_usedp
 * Return Value: byte
 * Descriptions: use dp for measurement
 */
byte libaroma_window_usedp(byte isdp){
  if (isdp==1){
    _libaroma_window_measurement_dp=1;
  }
  else if (!isdp){
    _libaroma_window_measurement_dp=0;
  }
  return _libaroma_window_measurement_dp;
} /* End of libaroma_window_usedp */

/*
 * Function    : libaroma_window_measure_point
 * Return Value: int
 * Descriptions: mesure point
 */
int libaroma_window_measure_point(int x){
  if (_libaroma_window_measurement_dp){
    return libaroma_dp(x);
  }
  return x;
} /* End of libaroma_window_measure_point */

/*
 * Function    : _libaroma_window_measure_save
 * Return Value: void
 * Descriptions: save measurement value
 */
void _libaroma_window_measure_save(LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl){
  if (win!=NULL){
    if (_libaroma_window_measurement_dp){
      win->left = libaroma_px(win->x);
      win->top  = libaroma_px(win->y);
      win->width= libaroma_px(win->w);
      win->height= libaroma_px(win->h);
    }
    else{
      win->left = win->x;
      win->top  = win->y;
      win->width= win->w;
      win->height= win->h;
    }
  }
  if (ctl!=NULL){
    if (_libaroma_window_measurement_dp){
      ctl->left = libaroma_px(ctl->x);
      ctl->top  = libaroma_px(ctl->y);
      ctl->width= libaroma_px(ctl->w);
      ctl->height= libaroma_px(ctl->h);
    }
    else{
      ctl->left = ctl->x;
      ctl->top  = ctl->y;
      ctl->width= ctl->w;
      ctl->height= ctl->h;
    }
  }
} /* End of _libaroma_window_measure_save */

/*
 * Function    : libaroma_window_measure_calculate
 * Return Value: int
 * Descriptions: calculate measurement
 */
int libaroma_window_measure_calculate(
    int cv, int pos, int max, int is_size, int x){
  if (is_size){
    if (pos<=0){
      switch (pos){
        case LIBAROMA_POS_HALF: return (max / 2)-x; break;
        case LIBAROMA_POS_1P3: return (max / 3)-x; break;
        case LIBAROMA_POS_2P3: return (max * 2 / 3)-x; break;
        case LIBAROMA_POS_1P4: return (max / 4)-x; break;
        case LIBAROMA_POS_3P4: return (max * 3 / 4)-x; break;
        case LIBAROMA_SIZE_FULL: return max; break;
        case LIBAROMA_SIZE_HALF: return max / 2; break;
        case LIBAROMA_SIZE_THIRD: return max / 3; break;
        case LIBAROMA_SIZE_QUARTER: return max / 4; break;
        default: return abs(pos);
      }
    }
  }
  else{
    if (pos<0){
      switch (pos){
        case LIBAROMA_POS_HALF: return max / 2; break;
        case LIBAROMA_POS_1P3: return max / 3; break;
        case LIBAROMA_POS_2P3: return max * 2 / 3; break;
        case LIBAROMA_POS_1P4: return max / 4; break;
        case LIBAROMA_POS_3P4: return max * 3 / 4; break;
        default: return abs(pos);
      }
    }
  }
  return cv;
} /* End of libaroma_window_measure_calculate */



/*
 * Function    : libaroma_window_measure_size
 * Return Value: byte
 * Descriptions: measure window size
 */
byte libaroma_window_measure_size(LIBAROMA_WINDOWP win){
  if (win){
    if (win->parent!=NULL){
      ALOGW("window_resize cannot be used for child window");
      return 0;
    }
    if (_libaroma_window_measurement_dp){
      win->x = libaroma_dp(win->rx);
      win->y = libaroma_dp(win->ry);
      win->w = libaroma_dp(win->rw);
      win->h = libaroma_dp(win->rh);
    }
    else{
      win->x = win->rx;
      win->y = win->ry;
      win->w = win->rw;
      win->h = win->rh;
    }
    win->ax=win->x;
    win->ay=win->y;
    
    win->x=libaroma_window_measure_calculate(
      win->x, win->rx, libaroma_wm()->w, 0, 0
    );
    win->y=libaroma_window_measure_calculate(
      win->y, win->ry, libaroma_wm()->h, 0, 0
    );
    win->w=libaroma_window_measure_calculate(
      win->w, win->rw, libaroma_wm()->w, 1, win->x
    );
    win->h=libaroma_window_measure_calculate(
      win->h, win->rh, libaroma_wm()->h, 1, win->y
    );
    
    if (win->w+win->x>libaroma_wm()->w){
      win->w = libaroma_wm()->w-win->x;
    }
    if (win->h+win->y>libaroma_wm()->h){
      win->h = libaroma_wm()->h-win->y;
    }
    _libaroma_window_measure_save(win,NULL);
    LIBAROMA_MSG _msg;
    libaroma_window_process_event(win,libaroma_wm_compose(
      &_msg, LIBAROMA_MSG_WIN_MEASURED, NULL, 0, 0)
    );
    return 1;
  }
  return 0;
} /* End of libaroma_window_measure */

/*
 * Function    : _libaroma_window_ui_thread
 * Return Value: byte
 * Descriptions: window ui thread
 */
byte _libaroma_window_ui_thread(LIBAROMA_WINDOWP win) {
  int i;
  byte need_sync = 0;
  if (win->active==1){
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<win->childn;i++){
      LIBAROMA_CONTROLP c=win->childs[i];
      if (c->handler->thread!=NULL){
        if (c->handler->thread(c)){
          if (libaroma_control_draw(c,0)){
            libaroma_wm_updatesync(
              c->x+win->x,
              c->y+win->y,
              c->w,
              c->h,
              0
            );
            need_sync=1;
          }
        }
      }
    }
  }
  return need_sync;
} /* End of _libaroma_window_ui_thread */

/*
 * Function    : libaroma_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new window
 */
LIBAROMA_WINDOWP libaroma_window(
  char * bg_theme_name,
  int x, int y, int w, int h
){
  __CHECK_WM(NULL);
  LIBAROMA_WINDOWP win = (LIBAROMA_WINDOWP) calloc(sizeof(LIBAROMA_WINDOW),1);
  if (!win){
    ALOGW("libaroma_window alloc window data failed");
    return NULL;
  }
  
  if (bg_theme_name){
    snprintf(win->theme_bg,256,"%s",bg_theme_name);
  }
  else{
    snprintf(win->theme_bg,256,"%s","window");
  }
  win->rx = x;
  win->ry = y;
  win->rw = w;
  win->rh = h;
  win->ui_thread = _libaroma_window_ui_thread;
  libaroma_window_measure_size(win);
  return win;
} /* End of libaroma_window */

/*
 * Function    : libaroma_window_free
 * Return Value: byte
 * Descriptions: free window
 */
byte libaroma_window_free(
  LIBAROMA_WINDOWP win
){
  __CHECK_WM(0);
  if (win==NULL){
    return 0;
  }
  
  /* inactivate it */
  if (win->parent==NULL){
    if (libaroma_wm_get_active_window()==win){
      /* detach active window from window manager */
      libaroma_wm_set_active_window(NULL);
    }
    
    LIBAROMA_MSG _msg;
    libaroma_window_process_event(win,
      libaroma_wm_compose(&_msg, LIBAROMA_MSG_WIN_INACTIVE, NULL, 0, 0));
  }
  
  if (win->handler!=NULL){
    if (win->handler->prefree!=NULL){
      win->handler->prefree(win);
    }
  }
  
  /* delete childs */
  int i;
  if (win->childn>0){
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<win->childn;i++){
      libaroma_control_free(win->childs[i]);
    }
    free(win->childs);
  }
  if (win->bg){
    libaroma_canvas_free(win->bg);
    win->bg=NULL;
  }
  if (win->dc){
    libaroma_canvas_free(win->dc);
    win->dc=NULL;
  }
  

  if (win->handler!=NULL){
    if (win->handler->postfree!=NULL){
      win->handler->postfree(win);
    }
  }
  free(win);
  return 1;
} /* End of libaroma_window_free */

/*
 * Function    : _libaroma_window_updatebg
 * Return Value: byte
 * Descriptions: update window background
 */
byte _libaroma_window_updatebg(LIBAROMA_WINDOWP win){
  if (win==NULL){
    ALOGW("window_recalculate win is NULL");
    return 0;
  }
  if (win->handler!=NULL){
    if (win->handler->updatebg!=NULL){
      return win->handler->updatebg(win);
    }
  }
  if (win->parent!=NULL){
    return 0;
  }
  int w = win->w;
  int h = win->h;
  
  /* draw background */
  if (win->bg!=NULL){
    if ((win->bg->w==w)&&(win->bg->h==h)){
      /* not need recreate background */
      return 1;
    }
    libaroma_canvas_free(win->bg);
  }
  win->bg = libaroma_canvas(w,h);
  libaroma_canvas_setcolor(
    win->bg,
    libaroma_colorget(NULL,win)->window_bg,
    0xff
  );
  return 1;
} /* End of _libaroma_window_updatebg */

/*
 * Function    : _libaroma_window_recalculate
 * Return Value: byte
 * Descriptions: recalculate client size
 */
byte _libaroma_window_recalculate(LIBAROMA_WINDOWP win){
  if (win==NULL){
    ALOGW("window_recalculate win is NULL");
    return 0;
  }
  if (libaroma_window_isactive(win)){
    _libaroma_window_updatebg(win);
    libaroma_window_invalidate(win, 1);
  }
  return 1;
} /* End of _libaroma_window_recalculate */

/*
 * Function    : _libaroma_window_ready
 * Return Value: byte
 * Descriptions: window is ready
 */
byte _libaroma_window_ready(LIBAROMA_WINDOWP win){
  __CHECK_WM(0);
  if (win==NULL){
    ALOGW("window_resize win is NULL");
    return 0;
  }
  int x = win->x;
  int y = win->y;
  int w = win->w;
  int h = win->h;
  if (w==0){
    w = libaroma_wm()->w;
    x = 0;
  }
  if (h==0){
    h = libaroma_wm()->h;
    y = 0;
  }
  /* set position */
  if (win->dc!=NULL){
    libaroma_canvas_free(win->dc);
    win->dc=NULL;
  }
  win->dc= libaroma_wm_canvas(x, y, w, h);
  if (win->dc==NULL){
    ALOGW("window_ready cannot allocate workspace drawing canvas");
    return 0;
  }
  if (libaroma_window_isactive(win)){
    libaroma_wm_clean_workspace();
  }
  win->x = x;
  win->y = y;
  win->w = win->dc->w;
  win->h = win->dc->h;
  _libaroma_window_measure_save(win,NULL);
  _libaroma_window_recalculate(win);
  return 1;
} /* End of _libaroma_window_ready */

/*
 * Function    : libaroma_window_resize
 * Return Value: byte
 * Descriptions: resize window
 */
byte libaroma_window_resize(
  LIBAROMA_WINDOWP win,
  int x, int y, int w, int h
){
  if (!win){
    return 0;
  }
  if (win->parent!=NULL){
    ALOGW("window_resize cannot be used for child window");
    return 0;
  }
  win->rx = x;
  win->ry = y;
  win->rw = w;
  win->rh = h;
  if (libaroma_window_measure_size(win)){
    return _libaroma_window_ready(win);
  }
  return 0;
} /* End of libaroma_window_resize */

/*
 * Function    : libaroma_window_isactive
 * Return Value: byte
 * Descriptions: check if window is active
 */
byte libaroma_window_isactive(LIBAROMA_WINDOWP win){
  if (win!=NULL){
    LIBAROMA_WINDOWP w = win;
    while(w->parent){
      w=w->parent;
    }
    return ((w==libaroma_wm_get_active_window())?1:0);
  }
  return 0;
} /* End of libaroma_window_isactive */

/*
 * Function    : libaroma_window_add
 * Return Value: byte
 * Descriptions: add control into window
 */
byte libaroma_window_add(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl
){
  __CHECK_WM(0);
  if (win==NULL){
    ALOGW("window_add win is NULL");
    return 0;
  }
  if (ctl==NULL){
    ALOGW("window_add ctl is NULL");
    return 0;
  }
  if (ctl->window != NULL){
    ALOGW("window_add ctl already have window");
    return 0;
  }
  libaroma_window_measure(win, ctl);
  if (win->childn==0){
    win->childs = (LIBAROMA_CONTROLP *) malloc(sizeof(LIBAROMA_CONTROLP));
    if (!win->childs){
      ALOGW("window_add malloc failed");
      win->childs=NULL;
      return 0;
    }
    win->childs[0]=ctl;
  }
  else{
    LIBAROMA_CONTROLP * newchilds = (LIBAROMA_CONTROLP *)
      realloc(win->childs, sizeof(LIBAROMA_CONTROLP)*(win->childn+1));
    if (!newchilds){
      ALOGW("window_add realloc failed");
      return 0;
    }
    win->childs = newchilds;
    win->childs[win->childn] = ctl;
  }
  ctl->window = win;
  win->childn++;
  _libaroma_window_recalculate(win);
  return 1;
} /* End of libaroma_window_add */

/*
 * Function    : libaroma_window_del
 * Return Value: byte
 * Descriptions: delete control from window
 */
byte libaroma_window_del(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl
){
  __CHECK_WM(0);
  if (ctl==NULL){
    ALOGW("window_del ctl is null");
    return 0;
  }
  if (win==NULL){
    ALOGW("window_del win is null");
    return 0;
  }
  if (win != ctl->window){
    return 0;
  }
  if (win->childn<=0){
    ALOGW("window_del window data corrupt doesn't have childs??");
    return 0;
  }
  else if (win->childn==1){
    if (win->childs[0]==ctl){
      ctl->window = NULL;
      win->childn=0;
      free(win->childs);
      win->childs=NULL;
      _libaroma_window_recalculate(win);
      return 1;
    }
    else{
      ALOGW("window_del ctl not found in window");
      return 0;
    }
  }
  LIBAROMA_CONTROLP * newchilds = (LIBAROMA_CONTROLP *)
      malloc(sizeof(LIBAROMA_CONTROLP)*(win->childn-1));
  if (!newchilds){
    ALOGW("window_del malloc temp childs failed");
    return 0;
  }
  int j = 0;
  int i;
  for (i=0;i<win->childn;i++){
    if (win->childs[i]!=ctl){
      newchilds[j++]=win->childs[i];
      if (j==win->childn-2){
        /* current ctl not found */
        free(newchilds);
        ALOGW("window_del ctl not found in window");
        return 0;
      }
    }
  }
  free(win->childs);
  win->childs=newchilds;
  win->childn--;
  _libaroma_window_recalculate(win);
  return 1;
} /* End of libaroma_window_del */

/*
 * Function    : libaroma_window_measure
 * Return Value: byte
 * Descriptions: measure control size
 */
byte libaroma_window_measure(LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl){
  if (win&&ctl){
    if (_libaroma_window_measurement_dp){
      ctl->x = libaroma_dp(ctl->rx);
      ctl->y = libaroma_dp(ctl->ry);
      ctl->w = libaroma_dp(ctl->rw);
      ctl->h = libaroma_dp(ctl->rh);
    }
    else{
      ctl->x = ctl->rx;
      ctl->y = ctl->ry;
      ctl->w = ctl->rw;
      ctl->h = ctl->rh;
    }
    
    ctl->x=libaroma_window_measure_calculate(
      ctl->x, ctl->rx, win->w, 0, 0
    );
    ctl->y=libaroma_window_measure_calculate(
      ctl->y, ctl->ry, win->h, 0, 0
    );
    ctl->w=libaroma_window_measure_calculate(
      ctl->w,ctl->rw, win->w, 1, ctl->x
    );
    ctl->h=libaroma_window_measure_calculate(
      ctl->h,ctl->rh, win->h, 1, ctl->y
    );
    
    if (ctl->w+ctl->x>win->w){
      ctl->w = win->w-ctl->x;
    }
    if (ctl->h+ctl->y>win->h){
      ctl->h = win->h-ctl->y;
    }
    if (ctl->w<ctl->minw){
      ctl->w=ctl->minw;
    }
    if (ctl->h<ctl->minh){
      ctl->h=ctl->minh;
    }
    _libaroma_window_measure_save(NULL,ctl);
    if (ctl->handler->message){
      LIBAROMA_MSG _msg;
      ctl->handler->message(ctl, libaroma_wm_compose(
        &_msg, LIBAROMA_MSG_WIN_MEASURED, NULL, 0, 0)
      );
      return 1;
    }
  }
  return 0;
} /* End of libaroma_window_measure */

/*
 * Function    : libaroma_window_attach
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: attach control into window
 */
LIBAROMA_CONTROLP libaroma_window_attach(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl){
  /* attach into window */
  if (win){
    if (libaroma_window_add(win,ctl)){
      return ctl;
    }
    ALOGW("window_attach cannot attach into window");
    libaroma_control_free(ctl);
    return NULL;
  }
  return ctl;
} /* End of libaroma_window_attach */

/*
 * Function    : libaroma_window_getid
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: get control by id
 */
LIBAROMA_CONTROLP libaroma_window_getid(
    LIBAROMA_WINDOWP win, word id){
  __CHECK_WM(NULL);
  if (win==NULL){
    ALOGW("window_control_id win is null");
    return NULL;
  }
  int i;
  for (i=0;i<win->childn;i++){
    if (win->childs[i]->id==id){
      return win->childs[i];
    }
  }
  return NULL; /* not found */
} /* End of libaroma_window_getid */

/*
 * Function    : libaroma_window_setfocus
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: set control focus
 */
LIBAROMA_CONTROLP libaroma_window_setfocus(
    LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl){
  if (win==NULL){
    ALOGW("window_setfocus window is null");
    return NULL;
  }
  if (ctl!=NULL){
    /* set */
    if (win!=ctl->window){
      ALOGW("window_setfocus control is not window child");
      return NULL;
    }
    if (ctl->handler->focus!=NULL){
      if (win->focused==ctl){
        return ctl;
      }
      if (ctl->handler->focus(ctl,1)){
        if (win->focused){
          win->focused->handler->focus(win->focused,0);
        }
        win->focused=ctl;
        return ctl;
      }
    }
    return NULL;
  }
  else{
    /* find focus */
    if (win->focused){
      return win->focused;
    }
    int i;
    for (i=0;i<win->childn;i++){
      if (win->childs[i]->handler->focus!=NULL){
        return libaroma_window_setfocus(win,win->childs[i]);
      }
    }
  }
  return NULL;
} /* End of libaroma_window_setfocus */

/*
 * Function    : libaroma_window_sync
 * Return Value: byte
 * Descriptions: sync window canvas
 */
byte libaroma_window_sync(LIBAROMA_WINDOWP win, int x, int y, int w, int h){
  __CHECK_WM(0);
  if (win==NULL){
    ALOGW("libaroma_window_sync win is null");
    return 0;
  }
  if (win->handler!=NULL){
    if (win->handler->sync!=NULL){
      return win->handler->sync(win,x,y,w,h);
    }
  }
  if (win->parent!=NULL){
    return 0;
  }
  if (!win->lock_sync){
    if (!libaroma_window_isactive(win)){
      ALOGW("libaroma_window_sync win is not active window");
      return 0;
    }
    if (win->dc==NULL){
      ALOGW("window_invalidate dc is null");
      return 0;
    }
    
    /* sync workspace */
    libaroma_wm_sync(win->x+x,win->y+y,w,h);
  }
  return 1;
} /* End of libaroma_window_sync */

/*
 * Function    : libaroma_window_invalidate
 * Return Value: byte
 * Descriptions: invalidate window drawing
 */
byte libaroma_window_invalidate(LIBAROMA_WINDOWP win, byte sync){
  __CHECK_WM(0);
  if (win==NULL){
    ALOGW("window_invalidate win is null");
    return 0;
  }
  if (win->handler!=NULL){
    if (win->handler->invalidate!=NULL){
      return win->handler->invalidate(win,sync);
    }
  }
  if (win->parent!=NULL){
    return 0;
  }
  
  if (!libaroma_window_isactive(win)){
    ALOGW("window_invalidate win is not active window");
    return 0;
  }
  if (win->dc==NULL){
    ALOGW("window_invalidate dc is null");
    return 0;
  }
  
  if ((!win->lock_sync)||(sync==10)){
    /* draw bg */
    libaroma_draw(
      win->dc,
      win->bg,
      0, 0, 1);
    
    /* draw childs */
    int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<win->childn;i++){
      /* draw no sync */
      libaroma_control_draw(win->childs[i], 0);
    }
  
    /* sync */
    if (sync){
      libaroma_window_sync(win, 0, 0, win->w, win->h);
    }
  }
  return 1;
} /* End of libaroma_window_invalidate */

/*
 * Function    : libaroma_window_anishow
 * Return Value: byte
 * Descriptions: show window - animated
 */
byte libaroma_window_anishow(
    LIBAROMA_WINDOWP win,
    byte animation,
    int duration){
  __CHECK_WM(0);
  if (!win){
    return 0;
  }
  if (win->parent!=NULL){
    ALOGW("Child window cannot shown directly...");
    return 0;
  }
  
  /* set initial focus
    libaroma_window_setfocus(win, NULL);
  */
  
  if ((!animation)||(duration<50)){
    return libaroma_wm_set_active_window(win);
  }
  
  /* lock and retval */
  byte retval = 0;
  win->lock_sync = 1;
  
  if (libaroma_wm_set_active_window(win)){
    win->active=2;
    
    /* draw window into temp canvas */
    LIBAROMA_CANVASP wmc = win->dc;
    LIBAROMA_CANVASP tdc = libaroma_canvas(wmc->w,wmc->h);
    libaroma_draw(tdc,wmc,0,0,0);
    win->dc=tdc; /* switch dc */
    
    LIBAROMA_CANVASP back = libaroma_canvas(wmc->w, wmc->h);
    libaroma_draw(back,wmc,0,0,0);
    
    /* invalidate now */
    libaroma_window_invalidate(win, 10);
    
    long start = libaroma_tick();
    int delta = 0;
    while ((delta=libaroma_tick()-start)<duration){
      float state = ((float) delta)/((float) duration);
      if (state>=1.0){
        break;
      }
      switch (animation){
        case LIBAROMA_WINDOW_SHOW_ANIMATION_FADE:
          {
            float swift_out_state = libaroma_cubic_bezier_swiftout(state);
            libaroma_draw_opacity(
              wmc, win->dc,0,0,0,((byte) (255 * swift_out_state))
            );
            libaroma_window_sync(win, 0, 0, win->w, win->h);
          }
          break;
        case LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT:
        case LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT:
          {
            float swift_out_state = libaroma_cubic_bezier_swiftout(state);
            int x = win->w - (swift_out_state * win->w);
            int w = win->w - x;
            if (w>0){
              if (animation==LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT){
                if (w<win->w){
                  libaroma_draw_ex(
                    wmc,
                    back,
                    0, 0, win->w - (win->w - w), 0, win->w - w, win->h,
                    0, 0xff
                  );
                }
              }
              libaroma_draw_ex(
                wmc,
                win->dc,
                x, 0, 0, 0, w, win->h,
                0, 0xff
              );
              if (animation==LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT){
                libaroma_wm_sync(win->x,win->y,win->w,win->h);
              }
              else{
                libaroma_wm_sync(win->x+x,win->y,w, win->h);
              }
            }
          }
          break;
        case LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_RIGHT:
        case LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_RIGHT:
          {
            float swift_out_state = libaroma_cubic_bezier_swiftout(state);
            int x = 0 - (win->w - (swift_out_state * win->w));
            int w = win->w + x;
            if (w>0){
              if (animation==LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_RIGHT){
                if (w<win->w){
                  libaroma_draw_ex(
                    wmc,
                    back,
                    w, 0, 0, 0, win->w - w, win->h,
                    0, 0xff
                  );
                }
              }
              libaroma_draw_ex(
                wmc,
                win->dc,
                0, 0, win->w-w, 0, w, win->h,
                0, 0xff
              );
              if (animation==LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_RIGHT){
                libaroma_wm_sync(win->x,win->y,win->w,win->h);
              }
              else{
                libaroma_wm_sync(win->x,win->y,w, win->h);
              }
            }
          }
          break;
        default:
          /* invalid animation */
          start=0;
          break;
      }
    }
    
    retval = 1;
    libaroma_draw(wmc,win->dc,0,0,0);
              
    win->dc=wmc; /* switch dc back */
  
    /* cleanup */
    libaroma_canvas_free(back);
    libaroma_canvas_free(tdc);
  }
  
  win->lock_sync = 0;
  
  /* sync view now */
  if (retval){
    win->active=1;
    libaroma_window_sync(win, 0, 0, win->w, win->h);
    
    /* send activate */
    LIBAROMA_MSG _msg;
    libaroma_window_process_event(win,libaroma_wm_compose(
      &_msg, LIBAROMA_MSG_WIN_ACTIVE, NULL, 10, 0)
    );
  }
  return retval;
} /* End of libaroma_window_show */

/*
 * Function    : libaroma_window_calculate_pos
 * Return Value: void
 * Descriptions: calculate screen position to window/control position
 */
void libaroma_window_calculate_pos(
  LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl,
  int * x, int * y
){
  if (win!=NULL){
    *x-=win->x;
    *y-=win->y;
  }
  else if ((ctl!=NULL)&&(ctl->window!=NULL)){
    *x-=ctl->window->x;
    *y-=ctl->window->y;
  }
  if (ctl!=NULL){
    *x-=ctl->x;
    *y-=ctl->y;
  }
  /*
  *x-=libaroma_wm()->x;
  *y-=libaroma_wm()->y;
  */
} /* End of libaroma_window_calculate_pos */

/*
 * Function    : libaroma_window_calculate_pos_abs
 * Return Value: void
 * Descriptions: calculate absolute screen position to top window position
 */
void libaroma_window_calculate_pos_abs(
  LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl,
  int * x, int * y
){
  if (ctl!=NULL){
    *x-=ctl->x;
    *y-=ctl->y;
    win=ctl->window;
  }
  while (win!=NULL){
    *x-=win->ax;
    *y-=win->ay;
    win=win->parent;
  }
} /* End of libaroma_window_calculate_pos_abs */

/*
 * Function    : _libaroma_window_is_inside
 * Return Value: byte
 * Descriptions: check position coordinate
 */
byte _libaroma_window_is_inside(LIBAROMA_CONTROLP ctl, int x, int y) {
  int wx  = ctl->x;
  int wx2 = wx + ctl->w;
  int wy  = ctl->y;
  int wy2 = wy + ctl->h;
  if ((x >= wx) && (x < wx2) && (y >= wy) && (y < wy2)) {
    return 1;
  }
  return 0;
} /* End of _libaroma_window_is_inside */

/*
 * Function    : libaroma_window_post_command
 * Return Value: byte
 * Descriptions: post direct command
 */
byte libaroma_window_post_command(dword cmd){
  return 
    libaroma_msg_post(
      LIBAROMA_MSG_WIN_DIRECTMSG,
      0,
      0,
      (int) cmd,
      0,
      NULL
    );
} /* End of libaroma_window_post_command */

/*
 * Function    : libaroma_window_post_command_ex
 * Return Value: byte
 * Descriptions: post direct command extended
 */
byte libaroma_window_post_command_ex(dword cmd,
  byte state, int key, int y, voidp d){
  return 
    libaroma_msg_post(
      LIBAROMA_MSG_WIN_DIRECTMSG,
      state,
      key,
      (int) cmd,
      y,
      d
    );
} /* End of libaroma_window_post_command */

/*
 * Function    : libaroma_window_process_event
 * Return Value: dword
 * Descriptions: process message
 */
dword libaroma_window_process_event(LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg){
  __CHECK_WM(0);
  if (win==NULL){
    ALOGW("window_event win is null");
    return 0;
  }
  if (win->parent!=NULL){
    ALOGW("window_event cannot used for child window...");
    return 0;
  }
  dword ret = 0;
  if (win->handler){
    if (win->handler->message_hooker){
      if (win->handler->message_hooker(win,msg,&ret)){
        return ret;
      }
    }
  }
  switch (msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
      {
        /* set current window size */
        win->focused=NULL;
        win->touched=NULL;
        if (msg->x!=10){
          _libaroma_window_ready(win);
        }
        if ((!win->lock_sync)||(msg->x==10)){
          if ((!win->active)||(msg->x==10)){
            int i;
            win->active=1;
            /* signal child */
            for (i=0;i<win->childn;i++){
              if (win->childs[i]->handler->message){
                win->childs[i]->handler->message(win->childs[i], msg);
              }
            }
          }
        }
      }
      break;
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        int i;
        _libaroma_window_ready(win);
        for (i=0;i<win->childn;i++){
          if (win->childs[i]->handler->message){
            win->childs[i]->handler->message(win->childs[i], msg);
          }
        }
      }
      break;
    case LIBAROMA_MSG_WIN_INACTIVE:
      {
        if (win->active){
          /* stop thread manager */
          win->active=0;
          
          /* send inactive message to child */
          int i;
          for (i=0;i<win->childn;i++){
            if (win->childs[i]->handler->message){
              win->childs[i]->handler->message(win->childs[i], msg);
            }
          }
          win->focused=NULL;
          win->touched=NULL;
        }
      }
      break;
    case LIBAROMA_MSG_WIN_MEASURED:
      {
        /* remeasured all childs */
        int i;
        for (i=0;i<win->childn;i++){
          libaroma_window_measure(win,win->childs[i]);
        }
      }
      break;
    case LIBAROMA_MSG_WIN_DIRECTMSG:
      {
        return (dword) msg->x;
      }
      break;
    case LIBAROMA_MSG_WIN_INVALIDATE:
      {
        libaroma_window_invalidate(win, 1);
      }
      break;
    case LIBAROMA_MSG_TOUCH:
      {
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          win->touched = NULL;
          int x = msg->x;
          int y = msg->y;
          libaroma_window_calculate_pos(win,NULL,&x,&y);
          int i;
          for (i=0;i<win->childn;i++){
            if (_libaroma_window_is_inside(win->childs[i],x,y)){
              win->touched = win->childs[i];
              break;
            }
          }
          if (win->touched!=NULL){
            if (win->touched->handler->message){
              ret=win->touched->handler->message(win->touched, msg);
            }
          } 
        }
        else if (win->touched!=NULL){
          if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
            if (win->touched->handler->message){
              ret=win->touched->handler->message(win->touched, msg);
            }
          }
          else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
            if (win->touched->handler->message){
              ret=win->touched->handler->message(win->touched, msg);
            }
            win->touched=NULL;
          }
        }
      }
      break;
  }
  return ret;
} /* End of libaroma_window_process_event */

/*
 * Function    : libaroma_window_pool
 * Return Value: dword
 * Descriptions: poll window messages
 */
dword libaroma_window_pool(
    LIBAROMA_WINDOWP win,
    LIBAROMA_MSGP msg){
  if (!win){
    return 0;
  }
  if (win->parent!=NULL){
    ALOGW("cannot pool child window...");
    return 0;
  }
  LIBAROMA_MSG _msg;
  LIBAROMA_MSGP cmsg=(msg!=NULL)?msg:&_msg;
  byte ret = libaroma_wm_getmessage(cmsg);
  if (ret){
    return libaroma_window_process_event(win,cmsg);
  }
  return 0;
} /* End of libaroma_window_pool */


#undef __CHECK_WM


#endif /* __libaroma_window_c__ */


