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
 * Description : window api
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_window_c__
#define __libaroma_window_c__
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
 * Function    : libaroma_window_measure_size
 * Return Value: byte
 * Descriptions: measure window size
 */
byte libaroma_window_measure_size(LIBAROMA_WINDOWP win){
  if (win){
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
    if (win->rx<0){
      switch (win->rx){
        case LIBAROMA_POS_HALF: win->x = libaroma_wm()->w / 2; break;
        case LIBAROMA_POS_1P3: win->x = libaroma_wm()->w / 3; break;
        case LIBAROMA_POS_2P3: win->x = libaroma_wm()->w * 2 / 3; break;
        case LIBAROMA_POS_1P4: win->x = libaroma_wm()->w / 4; break;
        case LIBAROMA_POS_3P4: win->x = libaroma_wm()->w * 3 / 4; break;
        default: win->x = abs(win->rx);
      }
    }
    if (win->ry<0){
      switch (win->ry){
        case LIBAROMA_POS_HALF: win->y = libaroma_wm()->h / 2; break;
        case LIBAROMA_POS_1P3: win->y = libaroma_wm()->h / 3; break;
        case LIBAROMA_POS_2P3: win->y = libaroma_wm()->h * 2 / 3; break;
        case LIBAROMA_POS_1P4: win->y = libaroma_wm()->h / 4; break;
        case LIBAROMA_POS_3P4: win->y = libaroma_wm()->h * 3 / 4; break;
        default: win->y = abs(win->ry);
      }
    }
    if (win->rw<=0){
      switch (win->rw){
        case LIBAROMA_SIZE_FULL: win->w = libaroma_wm()->w; break;
        case LIBAROMA_SIZE_HALF: win->w = libaroma_wm()->w / 2; break;
        case LIBAROMA_SIZE_THIRD: win->w = libaroma_wm()->w / 3; break;
        case LIBAROMA_SIZE_QUARTER: win->w = libaroma_wm()->w / 4; break;
        default: win->w = abs(win->rw);
      }
    }
    if (win->rh<=0){
      switch (win->rh){
        case LIBAROMA_SIZE_FULL: win->h = libaroma_wm()->h; break;
        case LIBAROMA_SIZE_HALF: win->h = libaroma_wm()->h / 2; break;
        case LIBAROMA_SIZE_THIRD: win->h = libaroma_wm()->h / 3; break;
        case LIBAROMA_SIZE_QUARTER: win->h = libaroma_wm()->h / 4; break;
        default: win->h = abs(win->rh);
      }
    }
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
 * Function    : libaroma_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new window
 */
LIBAROMA_WINDOWP libaroma_window(
  char * bg_theme_name,
  int x, int y, int w, int h
){
  __CHECK_WM(NULL);
  LIBAROMA_WINDOWP win = (LIBAROMA_WINDOWP) malloc(sizeof(LIBAROMA_WINDOW));
  /* zero values */
  win->childn = 0;
  if (bg_theme_name){
    snprintf(win->theme_bg,256,"%s",bg_theme_name);
  }
  else{
    snprintf(win->theme_bg,256,"%s","window");
  }
  win->bg       = NULL;
  win->dc       = NULL;
  win->wmc      = NULL;
  win->childs   = NULL;
  win->focused  = NULL;
  win->touched  = NULL;
  win->lock_sync= 0;
  win->active   =0;
  win->thread_manager=0;
  
  win->rx = x;
  win->ry = y;
  win->rw = w;
  win->rh = h;
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
  LIBAROMA_MSG _msg;
  libaroma_window_process_event(win,
    libaroma_wm_compose(&_msg, LIBAROMA_MSG_WIN_INACTIVE, NULL, 0, 0));
  
  /* delete childs */
  int i;
  if (win->childn>0){
    for (i=0;i<win->childn;i++){
      libaroma_control_free(win->childs[i]);
    }
    free(win->childs);
  }
  if (win->bg){
    libaroma_canvas_free(win->bg);
  }
  if (win->wmc){
    libaroma_canvas_free(win->wmc);
  }
  if (win->dc){
    libaroma_canvas_free(win->dc);
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
  /* draw background */
  if (win->bg!=NULL){
    libaroma_canvas_free(win->bg);
  }
  int w = win->w;
  int h = win->h;
  win->bg = libaroma_canvas(w,h);
  libaroma_grad(win->bg,0,0,w,h,
    libaroma_wm_get_color("window"),
    libaroma_wm_get_color("window_gradient"));
  libaroma_wm_draw_theme(
      win->bg, 
      win->theme_bg,
      0,0,w,h,NULL);
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
  }
  if (win->wmc!=NULL){
    libaroma_canvas_free(win->wmc);
  }
  win->wmc= libaroma_wm_canvas(x, y, w, h);
  if (win->wmc==NULL){
    ALOGW("window_ready cannot allocate workspace drawing canvas");
    return 0;
  }
  win->dc = libaroma_canvas(w,h);
  if (win->dc==NULL){
    libaroma_canvas_free(win->wmc);
    ALOGW("window_ready cannot allocate drawing canvas");
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
    return ((win==libaroma_wm_get_active_window())?1:0);
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
    if (ctl->rx<0){
      switch (ctl->rx){
        case LIBAROMA_POS_HALF: ctl->x = win->w / 2; break;
        case LIBAROMA_POS_1P3: ctl->x = win->w / 3; break;
        case LIBAROMA_POS_2P3: ctl->x = win->w * 2 / 3; break;
        case LIBAROMA_POS_1P4: ctl->x = win->w / 4; break;
        case LIBAROMA_POS_3P4: ctl->x = win->w * 3 / 4; break;
        default: ctl->x = abs(ctl->rx);
      }
    }
    if (ctl->ry<0){
      switch (ctl->ry){
        case LIBAROMA_POS_HALF: ctl->y = win->h / 2; break;
        case LIBAROMA_POS_1P3: ctl->y = win->h / 3; break;
        case LIBAROMA_POS_2P3: ctl->y = win->h * 2 / 3; break;
        case LIBAROMA_POS_1P4: ctl->y = win->h / 4; break;
        case LIBAROMA_POS_3P4: ctl->y = win->h * 3 / 4; break;
        default: ctl->y = abs(ctl->ry);
      }
    }
    if (ctl->rw<=0){
      switch (ctl->rw){
        case LIBAROMA_SIZE_FULL: ctl->w = win->w; break;
        case LIBAROMA_SIZE_HALF: ctl->w = win->w / 2; break;
        case LIBAROMA_SIZE_THIRD: ctl->w = win->w / 3; break;
        case LIBAROMA_SIZE_QUARTER: ctl->w = win->w / 4; break;
        default: ctl->w = abs(ctl->rw);
      }
    }
    if (ctl->rh<=0){
      switch (ctl->rh){
        case LIBAROMA_SIZE_FULL: ctl->h = win->h; break;
        case LIBAROMA_SIZE_HALF: ctl->h = win->h / 2; break;
        case LIBAROMA_SIZE_THIRD: ctl->h = win->h / 3; break;
        case LIBAROMA_SIZE_QUARTER: ctl->h = win->h / 4; break;
        default: ctl->h = abs(ctl->rh);
      }
    }
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
    if (ctl->message){
      LIBAROMA_MSG _msg;
      ctl->message(ctl, libaroma_wm_compose(
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
    if (ctl->focus!=NULL){
      if (win->focused==ctl){
        return ctl;
      }
      if (ctl->focus(ctl,1)){
        if (win->focused){
          win->focused->focus(win->focused,0);
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
      if (win->childs[i]->focus!=NULL){
        return libaroma_window_setfocus(win,win->childs[i]);
      }
    }
  }
  return NULL;
} /* End of libaroma_window_setfocus */

/*
 * Function    : _libaroma_window_thread_manager
 * Return Value: static void *
 * Descriptions: window thread manager
 */
static void * _libaroma_window_thread_manager(void * cookie) {
  LIBAROMA_WINDOWP win = (LIBAROMA_WINDOWP) cookie;
  ALOGV("begin window thread manager...");
  int i;
  byte have_high_prio_thread = 0;
  byte on_high_prio_thread = 0;
  int looped_n=0;
  byte use_wait;
  while(win->active){
    /* run child thread process */
    use_wait=1;
    long waitf=libaroma_tick();
    if (win->active==1){
      if (looped_n!=win->childn){
        have_high_prio_thread=0;
        looped_n=win->childn;
        for (i=0;i<win->childn;i++){
          if (win->childs[i]->thread!=NULL){
            if (win->childs[i]->high_prio_thread){
              have_high_prio_thread = 1;
              break;
            }
          }
        }
      }
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
      for (i=0;i<win->childn;i++){
        if (win->childs[i]->thread!=NULL){
          if (have_high_prio_thread&&on_high_prio_thread){
            if (win->childs[i]->high_prio_thread){
              win->childs[i]->thread(win->childs[i]);
              use_wait=0;
            }
          }
          else{
            win->childs[i]->thread(win->childs[i]);
          }
        }
      }
      on_high_prio_thread = !on_high_prio_thread;
    }
    /* 60hz sleep */
    if (use_wait){
      if ((waitf=(libaroma_tick()-waitf))<16){
        if (waitf<0) waitf=0;
        libaroma_sleep(16-waitf);
      }
    }
  }
  ALOGV("end window thread manager...");
  return NULL;
} /* End of _libaroma_window_thread_manager */

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
  if (!win->lock_sync){
    if (!libaroma_window_isactive(win)){
      ALOGW("libaroma_window_sync win is not active window");
      return 0;
    }
    if (win->dc==NULL){
      ALOGW("window_invalidate dc is null");
      return 0;
    }
    
    /* draw drawing canvas into workspace canvas */
    libaroma_draw_ex(
      win->wmc,
      win->dc,
      x, y, x, y, w, h,
      0, 0xff
    );
    
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
  if (!libaroma_window_isactive(win)){
    ALOGW("window_invalidate win is not active window");
    return 0;
  }
  if (win->dc==NULL){
    ALOGW("window_invalidate dc is null");
    return 0;
  }
  
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
  /*
  {
    // set initial focus
    libaroma_window_setfocus(win, NULL);
  }
  */
  if ((!animation)||(duration<50)){
    return libaroma_wm_set_active_window(win);
  }
  win->lock_sync = 1;
  if (libaroma_wm_set_active_window(win)){
    win->active=2;
    long start = libaroma_tick();
    int delta = 0;
    LIBAROMA_CANVASP back = libaroma_canvas(win->w, win->h);
    libaroma_draw(back, win->wmc, 0, 0, 0);
    while ((delta=libaroma_tick()-start)<duration){
      float state = ((float) delta)/((float) duration);
      if (state>=1.0){
        break;
      }
      long waitf = libaroma_tick();
      switch (animation){
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
                    win->wmc,
                    back,
                    0, 0, win->w - (win->w - w), 0, win->w - w, win->h,
                    0, 0xff
                  );
                }
              }
              libaroma_draw_ex(
                win->wmc,
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
                    win->wmc,
                    back,
                    w, 0, 0, 0, win->w - w, win->h,
                    0, 0xff
                  );
                }
              }
              libaroma_draw_ex(
                win->wmc,
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
      /* 60hz sleep */
      if ((waitf=(libaroma_tick()-waitf))<16){
        if (waitf<0) waitf=0;
        libaroma_sleep(16-(waitf));
      }
    }
    libaroma_canvas_free(back);
    
    /* sync view now */
    win->lock_sync = 0;
    win->active=1;
    libaroma_window_sync(win, 0, 0, win->w, win->h);
    return 1;
  }
  win->lock_sync = 0;
  return 0;
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
} /* End of libaroma_window_calculate_pos */

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
  dword ret = 0;
  switch (msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        /* set current window size */
        _libaroma_window_ready(win);
        
        /* send active/resize message to child */
        int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
        for (i=0;i<win->childn;i++){
          win->childs[i]->message(win->childs[i], msg);
        }
        
        /* start thread manager */
        if (msg->msg==LIBAROMA_MSG_WIN_ACTIVE){
          win->active=1;
          pthread_create(
            &win->thread_manager,
            NULL,
            _libaroma_window_thread_manager,
            (voidp) win);
          
          struct sched_param params;
          params.sched_priority = sched_get_priority_max(SCHED_FIFO);
          pthread_setschedparam(win->thread_manager, SCHED_FIFO, &params);
          
        }
      }
      break;
    case LIBAROMA_MSG_WIN_INACTIVE:
      {
        /* stop thread manager */
        win->active=0;
        pthread_join(win->thread_manager, NULL);
        win->thread_manager = 0;
        
        /* send inactive message to child */
        int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
        for (i=0;i<win->childn;i++){
          win->childs[i]->message(win->childs[i], msg);
        }
      }
      break;
    case LIBAROMA_MSG_WIN_MEASURED:
      {
        /* remeasured all childs */
        int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
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
            ret=win->touched->message(win->touched, msg);
          } 
        }
        else if (win->touched!=NULL){
          if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
            if (win->touched->message){
              ret=win->touched->message(win->touched, msg);
            }
          }
          else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
            if (win->touched->message){
              ret=win->touched->message(win->touched, msg);
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
