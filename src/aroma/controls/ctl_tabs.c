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
 * Filename    : ctl_tabs.c
 * Description : Tabs control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 30/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_tabs_c__
#define __libaroma_ctl_tabs_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

#define _LIBAROMA_CTL_TABS_HOLD_TIMING 300
#define _LIBAROMA_CTL_TABS_ANI_TIMING 500

/* HANDLER */
dword _libaroma_ctl_tabs_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_tabs_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_tabs_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_tabs_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_tabs_handler={
  message:_libaroma_ctl_tabs_msg,
  draw:_libaroma_ctl_tabs_draw,
  focus:NULL,
  destroy:_libaroma_ctl_tabs_destroy,
  thread:_libaroma_ctl_tabs_thread
};

void _libaroma_ctl_tabs_pager_onscroll(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CONTROLP pager,
  int cx, int fw, int pw, int tp
);
void _libaroma_ctl_tabs_pager_onscroll_finish(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CONTROLP pager, int page_number
);
static LIBAROMA_CTL_PAGER_CONTROLLER_HANDLER _libaroma_ctl_tabs_pager_handler={
  onscroll:_libaroma_ctl_tabs_pager_onscroll,
  onscroll_finish:_libaroma_ctl_tabs_pager_onscroll_finish
};

/*
 * Structure   : __LIBAROMA_CTL_TABS
 * Typedef     : _LIBAROMA_CTL_TABS, * _LIBAROMA_CTL_TABSP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_TABS _LIBAROMA_CTL_TABS;
typedef struct __LIBAROMA_CTL_TABS * _LIBAROMA_CTL_TABSP;
struct __LIBAROMA_CTL_TABS{
  LIBAROMA_MUTEX mutex;
  LIBAROMA_CANVASP rest_canvas;
  LIBAROMA_CANVASP push_canvas;
  LIBAROMA_CTL_PAGER_CONTROLLER controller;
  char ** texts;
  int * textw;
  int textn;
  int pagen;
  word selcolor;
  word bgcolor;
  
  LIBAROMA_CANVASP change_dc;
  long change_start;
  float change_state;
  
  byte forcedraw;
  int draw_x;
  int req_x;
  int request_x;
  int active_x;
  int active_w;
  int active_page;
  
  byte no_auto_scroll;
  byte allow_scroll;
  int touched_id;
  int velocity;
  int touch_x;
  int touch_scroll_x;
  
  LIBAROMA_RIPPLE ripple;
  LIBAROMA_FLING fling;
  int hpad; /* horizontal padding */
  int left_pad; /* left horizontal padding */
};

/*
 * Function    : _libaroma_ctl_tabs_indicator_x
 * Return Value: int
 * Descriptions: get item x position
 */
int _libaroma_ctl_tabs_indicator_x(LIBAROMA_CONTROLP ctl, int pageno){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  int i;
  int curr_x = me->left_pad+me->hpad;
  for (i=0;i<me->pagen;i++){
    if (i==pageno){
      return curr_x;
    }
    curr_x+=me->textw[i]+libaroma_dp(24);
  }
  return 0;
} /* End of _libaroma_ctl_tabs_indicator_x */

/*
 * Function    : _libaroma_ctl_tabs_calc_x
 * Return Value: int
 * Descriptions: calculate req_x
 */
int _libaroma_ctl_tabs_calc_x(LIBAROMA_CONTROLP ctl,byte force){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  if ((!me->no_auto_scroll)||(force)){
    int center_c = me->active_x + (me->active_w>>1);
    int draw_x = center_c - (ctl->w >> 1);
    if (draw_x<0){
      draw_x=0;
    }
    if (draw_x>me->rest_canvas->w-ctl->w){
      draw_x=me->rest_canvas->w-ctl->w;
    }
    if ((abs(draw_x-me->req_x)>libaroma_dp(24))||(force)){
      me->request_x = draw_x;
    }
    else{
      me->request_x = -1;
      me->req_x=draw_x;
    }
  }
  return 0;
} /* End of _libaroma_ctl_tabs_calc_x */

void _libaroma_ctl_tabs_pager_onscroll(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CONTROLP pager, 
  int cx, int fw, int pw, int tp
){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP,
  );
  libaroma_mutex_lock(me->mutex);
  int target_page = floor(cx / pw);
  if ((target_page>=0)&&(target_page<me->pagen)){
    int add_x   = cx-(target_page * pw);
    float state = ((float) add_x) / ((float) pw);
    int tw = me->textw[target_page]+libaroma_dp(24);
    int rw = tw;
    int diff_w = 0;
    me->active_w = tw;
    
    /* set width */
    if (me->active_page<=target_page){
      if (target_page<me->pagen-1){
        rw = me->textw[target_page+1]+libaroma_dp(24);
        diff_w = (rw-tw) * state;
        me->active_w = tw + diff_w;
      }
    }
    else {
      if (target_page<me->pagen-1){
        rw = me->textw[target_page+1]+libaroma_dp(24);
        diff_w = (tw-rw) * state;
        me->active_w = tw - diff_w;
      }
    }
    /* calculate x position */
    int tx = _libaroma_ctl_tabs_indicator_x(ctl,target_page);
    me->active_x = tx+state*tw;
    _libaroma_ctl_tabs_calc_x(ctl,0);
    me->forcedraw=1;
  }
  me->active_page = tp;
  libaroma_mutex_unlock(me->mutex);
}
void _libaroma_ctl_tabs_pager_onscroll_finish(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CONTROLP pager, int page_number
){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP,
  );
  libaroma_mutex_lock(me->mutex);
  if ((page_number>=0)&&(page_number<me->pagen)){
    me->active_x = _libaroma_ctl_tabs_indicator_x(ctl,page_number);
    me->active_w = me->textw[page_number]+libaroma_dp(24);
    me->active_page = page_number;
    _libaroma_ctl_tabs_calc_x(ctl,1);
    me->no_auto_scroll=0;
    me->forcedraw=1;
  }
  libaroma_mutex_unlock(me->mutex);
}

/*
 * Function    : _libaroma_ctl_tabs_pager_pos_x
 * Return Value: int
 * Descriptions: get page index by x
 */
int _libaroma_ctl_tabs_pager_pos_x(LIBAROMA_CONTROLP ctl, int x){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, -1
  );
  int i;
  int curr_x = me->left_pad+me->hpad;
  int xshow = x + me->draw_x;
  for (i=0;i<me->pagen;i++){
    int itw = me->textw[i] + libaroma_dp(24);
    if ((xshow>=curr_x)&&(xshow<curr_x+itw)){
      return i;
    }
    curr_x+=itw;
  }
  return -1;
} /* End of _libaroma_ctl_tabs_pager_pos_x */

/*
 * Function    : _libaroma_ctl_tabs_internal_draw
 * Return Value: void
 * Descriptions: internal drawing
 */
void _libaroma_ctl_tabs_internal_draw(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_TABSP me = (_LIBAROMA_CTL_TABSP) ctl->internal;
  if (ctl->window==NULL){
    return;
  }
  
  byte isactive=0;
  if (ctl->window->active){
    isactive=1;
  }
  if ((isactive)&&(me->change_start==1)){
    me->change_start=libaroma_tick();
    me->change_state=0;
  }
  else{
    me->change_start=0;
    me->change_state=0;
  }
  
  int i;
  LIBAROMA_CANVASP rest_canvas=NULL;
  LIBAROMA_CANVASP push_canvas=NULL;
  libaroma_mutex_lock(me->mutex);
  LIBAROMA_TEXT * texts = NULL;
  
  word pushtxt_color = libaroma_color_isdark(me->bgcolor)?0xffff:0;
  word resttxt_color = libaroma_alpha(me->bgcolor,pushtxt_color,153);
  
  int active_page = 0;
  int page_n = me->textn;
  if (me->controller.pager){
    page_n=libaroma_ctl_pager_get_pages(me->controller.pager);
    active_page=libaroma_ctl_pager_get_active_page(me->controller.pager);
  }
  
  if ((active_page>=page_n)||(active_page<0)){
    active_page=0;
  }
  
  int show_w = ctl->w;
  me->pagen = page_n;
  int sum_w = me->left_pad+(me->hpad*2);
  int max_w = (show_w-sum_w) / MAX(1,MIN(3,page_n));
  int sum_pad = libaroma_dp(24) * page_n;
  if (me->textw){
    free(me->textw);
    me->textw=NULL;
  }
  if (page_n>0){
    texts = calloc(sizeof(LIBAROMA_TEXT),page_n);
    me->textw = calloc(sizeof(int),page_n);
    int * itextw= calloc(sizeof(int),page_n);
    for (i=0;i<page_n;i++){
      char * text = "TABS";
      if (i<me->textn){
        text=me->texts[i];
      }
      texts[i] = libaroma_text(
        text,resttxt_color,
        max_w-libaroma_dp(24),
        LIBAROMA_FONT(0,3)|
        LIBAROMA_TEXT_SINGLELINE|((page_n<=3)?LIBAROMA_TEXT_CENTER:0)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_BOLD|
        LIBAROMA_TEXT_NOHR,
        100
      );
      if (page_n>3){
        me->textw[i]=
          libaroma_text_line_info(texts[i],0,LIBAROMA_TEXTLINE_INFO_RIGHT);
      }
      else{
        me->textw[i]=max_w-libaroma_dp(24);
      }
      itextw[i]=me->textw[i];
      sum_w += me->textw[i];
    }
    
    /* add width */
    if (sum_w<show_w-sum_pad){
      int adds = (show_w-sum_pad) - sum_w;
      int additems = ceil(((float) adds) / ((float) page_n));
      for (i=0;i<page_n;i++){
        me->textw[i]+=additems;
        sum_w+=additems;
        /* fix size */
        if (sum_w>show_w-sum_pad){
          int diff = (show_w-sum_pad)-sum_w;
          sum_w-=diff;
          me->textw[i]-=diff;
        }
      }
    }
    
    int cw = sum_w + sum_pad;
    int ch = ctl->h;
    rest_canvas = libaroma_canvas(cw, ch);
    push_canvas = libaroma_canvas(cw, ch);
    libaroma_canvas_setcolor(rest_canvas, me->bgcolor, 0xff);
    libaroma_canvas_setcolor(push_canvas, me->bgcolor, 0xff);
    
    /* draw texts */
    int xpos = me->left_pad+me->hpad;
    for (i=0;i<page_n;i++){
      int itw = me->textw[i] + libaroma_dp(24);
      int itx = (itw>>1) - (itextw[i]>>1);
      int y = (ch>>1) - ((libaroma_text_height(texts[i])>>1)+libaroma_dp(1));
      libaroma_text_draw_color(
        rest_canvas,texts[i], xpos+itx, y, resttxt_color
      );
      libaroma_text_draw_color(
        push_canvas,texts[i], xpos+itx, y, pushtxt_color
      );
      xpos+=itw;
    }
    
    /* set canvas */
    if (me->rest_canvas!=NULL){
      libaroma_canvas_free(me->rest_canvas);
      me->rest_canvas=NULL;
    }
    if (me->push_canvas!=NULL){
      libaroma_canvas_free(me->push_canvas);
      me->push_canvas=NULL;
    }
    me->rest_canvas = rest_canvas;
    me->push_canvas = push_canvas;
    
    /* cleanup */
    for (i=0;i<page_n;i++){
      libaroma_text_free(texts[i]);
    }
    
    /* save indicator */
    me->active_x=_libaroma_ctl_tabs_indicator_x(ctl,active_page);
    me->active_w=me->textw[active_page]+libaroma_dp(24);
    me->active_page = active_page;
    free(texts);
    free(itextw);
  }
  else{
    if (me->rest_canvas!=NULL){
      libaroma_canvas_free(me->rest_canvas);
      me->rest_canvas=NULL;
    }
    if (me->push_canvas!=NULL){
      libaroma_canvas_free(me->push_canvas);
      me->push_canvas=NULL;
    }
  }
  me->forcedraw=1;
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_tabs_internal_draw */
static void * _libaroma_ctl_tabs_req_internal_draw_thread(void * ctl){
  _libaroma_ctl_tabs_internal_draw((LIBAROMA_CONTROLP) ctl);
  return NULL;
}
void _libaroma_ctl_tabs_req_internal_draw(LIBAROMA_CONTROLP ctl){
  LIBAROMA_THREAD pp;
  libaroma_thread_create(
    &pp,_libaroma_ctl_tabs_req_internal_draw_thread,(void *) ctl);
  libaroma_thread_detach(pp);
}

/*
 * Function    : _libaroma_ctl_tabs_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_tabs_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 
  );
  
  libaroma_mutex_lock(me->mutex);
  if ((me->rest_canvas==NULL)||(me->forcedraw==2)){
    libaroma_mutex_unlock(me->mutex);
    _libaroma_ctl_tabs_internal_draw(ctl);
    libaroma_mutex_lock(me->mutex);
    if (me->rest_canvas==NULL){
      libaroma_mutex_unlock(me->mutex);
      return;
    }
  }
  me->forcedraw = 0;
  
  if ((me->change_start>1)&&(me->change_state<1)){
    if (!me->change_dc){
      me->change_dc = libaroma_canvas(c->w,c->h);
      if (me->change_dc){
        libaroma_draw(me->change_dc,c,0,0,0);
      }
    }
  }
  else if (me->change_dc){
    libaroma_canvas_free(me->change_dc);
    me->change_dc=NULL;
  }
  
  libaroma_control_erasebg(ctl,c);
  me->draw_x=me->req_x;
  int ax = me->active_x - me->draw_x;
  int aw = me->active_w;
  libaroma_draw_ex(
    c, me->rest_canvas, 
    0, 0,
    me->draw_x, 0,
    c->w, c->h,
    0, 0xff
  );
  if (me->active_page>=0){
    /* active page */
    int touched_x = _libaroma_ctl_tabs_indicator_x(ctl,me->active_page);
    if (touched_x>=0){
      int touched_w = me->textw[me->active_page]+libaroma_dp(24);
      int xstart = touched_x - me->draw_x;
      int xend = xstart + touched_w;
      if ((xstart<c->w)&&(xend>0)){
        libaroma_draw_ex(c, 
          me->push_canvas,
          xstart, 0,
          touched_x, 0,
          touched_w, c->h,
          0, 0xff
        );
      }
    }
  }
  
  if (me->touched_id>=0){
    int touched_x = _libaroma_ctl_tabs_indicator_x(ctl,me->touched_id);
    if (touched_x>=0){
      int touched_w = me->textw[me->touched_id]+libaroma_dp(24);
      LIBAROMA_CANVASP cc = libaroma_canvas_area(
        (me->active_page==me->touched_id)?me->push_canvas:me->rest_canvas,
          touched_x, 0, touched_w, c->h
      );
      LIBAROMA_CANVASP tc = libaroma_canvas(touched_w, cc->h);
      libaroma_draw(tc, cc, 0, 0, 0);
      int ripple_i = 0;
      int ripple_p = 0;
      while(libaroma_ripple_loop(&me->ripple,&ripple_i,&ripple_p)){
        int x=touched_x;
        int y=0;
        int size=0;
        byte push_opacity=0;
        byte ripple_opacity=180;
        if (libaroma_ripple_calculation(
          &me->ripple, touched_w, c->h, &push_opacity, &ripple_opacity,
          &x, &y, &size, ripple_p
        )){
          libaroma_draw_rect(
            tc,0,0,cc->w,cc->h,
            me->selcolor, push_opacity
          );
          libaroma_draw_circle(
            tc,me->selcolor,x,y,size,MAX(0,ripple_opacity-(ripple_opacity*0.5))
          );
          libaroma_draw_ex(
            c,tc,
            touched_x-me->draw_x,0,
            0,0,
            tc->w,tc->h,
            0,0xff);
        }
      }
      libaroma_canvas_free(cc);
      libaroma_canvas_free(tc);
    }
  }
  
  /* draw indicator */
  libaroma_draw_rect(
    c,
    ax, c->h-libaroma_dp(2), aw, libaroma_dp(2),
    me->selcolor, 0xff
  );
  
  if ((me->change_start>1)&&(me->change_state<1)){
    if (me->change_dc){
      float xstate = libaroma_cubic_bezier_swiftout(me->change_state);
      libaroma_draw_opacity(
        c, me->change_dc, 0, 0, 0, 0xff * (1-xstate)
      );
    }
  }
  
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_tabs_draw */

/*
 * Function    : _libaroma_ctl_tabs_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_tabs_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  byte is_draw = me->forcedraw;
  libaroma_mutex_lock(me->mutex);
  
  if (me->change_start>1){
    float nowstate=libaroma_control_state(me->change_start, 200);
    if (nowstate>=1){
      is_draw = 1;
      me->change_state=0;
      me->change_start=0;
      if (me->change_dc){
        libaroma_canvas_free(me->change_dc);
        me->change_dc=NULL;
      }
    }
    else if (me->change_state!=nowstate){
      is_draw = 1;
      me->change_state=nowstate;
    }
  }
  
  
  if (me->request_x!=-1){
    /* direct request */
    if (me->request_x!=me->req_x){
      int move_sz = ((me->request_x-me->req_x)*64)>>8;
      if (abs(move_sz)<2){
        if (move_sz<0){
          move_sz=-1;
        }
        else{
          move_sz=1;
        }
      }
      int target_sz = me->req_x+move_sz;
      if (target_sz==me->request_x){
        target_sz=me->request_x;
        me->request_x=-1;
      }
      me->req_x=target_sz;
    }
    else{
      me->request_x=-1;
    }
    me->velocity=0;
  }
  else if ((me->velocity!=0)&&(!libaroma_ripple_istouched(&me->ripple))){
    me->velocity=(me->velocity*246)>>8;
    if ((abs(me->velocity)<256)||(libaroma_ripple_istouched(&me->ripple))) {
      /* ended */
      me->velocity = 0;
      is_draw=1;
    }
    else{
      /* still on fling */
      int scroll_x = (me->velocity>>8) + me->req_x;
      if (scroll_x>=me->rest_canvas->w-ctl->w){
        scroll_x=me->rest_canvas->w-ctl->w;
        me->velocity = 0;
        is_draw=1;
      }
      if (scroll_x<=0){
        scroll_x=0;
        me->velocity = 0;
        is_draw=1;
      }
      if (scroll_x!=me->req_x){
        me->req_x=scroll_x;
        is_draw=1;
      }
    }
    if (me->request_x!=-1){
      me->request_x=-1;
    }
  }
  if (me->touched_id>=0){
    byte res = libaroma_ripple_thread(&me->ripple, 180);
    if (res&LIBAROMA_RIPPLE_REDRAW){
      is_draw = 1;
    }
    if (res&LIBAROMA_RIPPLE_RELEASED){
      me->touched_id=-1;
    }
  }
  if (me->draw_x!=me->req_x){
    is_draw=1;
  }
  libaroma_mutex_unlock(me->mutex);
  if (is_draw){
    return 1;
  }
  
  return 0;
} /* End of _libaroma_ctl_tabs_thread */

/*
 * Function    : _libaroma_ctl_tabs_free_texts
 * Return Value: byte
 * Descriptions: free texts
 */
byte _libaroma_ctl_tabs_free_texts(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  int i;
  if (me->textn>0){
    for (i=0;i<me->textn;i++){
      free(me->texts[i]);
    }
    free(me->texts);
    me->texts=NULL;
    me->textn=0;
  }
  return 1;
} /* End of _libaroma_ctl_tabs_free_texts */

/*
 * Function    : _libaroma_ctl_tabs_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_tabs_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 
  );
  libaroma_mutex_lock(me->mutex);
  
  /* remove controller from pager */
  if (me->controller.pager){
    libaroma_ctl_pager_set_controller(me->controller.pager, NULL);
  }
  
  /* free texts */
  _libaroma_ctl_tabs_free_texts(ctl);
  
  /* free canvases */
  if (me->rest_canvas!=NULL){
    libaroma_canvas_free(me->rest_canvas);
    me->rest_canvas=NULL;
  }
  if (me->push_canvas!=NULL){
    libaroma_canvas_free(me->push_canvas);
    me->push_canvas=NULL;
  }
  if (me->change_dc){
    libaroma_canvas_free(me->change_dc);
    me->change_dc=NULL;
  }
  if (me->textw){
    free(me->textw);
  }
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  free(me);
} /* End of _libaroma_ctl_tabs_destroy */

/*
 * Function    : _libaroma_ctl_tabs_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_tabs_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
    case LIBAROMA_MSG_WIN_INACTIVE:
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        libaroma_mutex_lock(me->mutex);
        me->forcedraw=1;
        libaroma_mutex_unlock(me->mutex);
      }
      break;
    case LIBAROMA_MSG_TOUCH:
      {
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          libaroma_fling_down(&me->fling, x);
          me->touch_x=x;
          me->touch_scroll_x = me->draw_x;
          me->touched_id=_libaroma_ctl_tabs_pager_pos_x(ctl,x);
          if (me->touched_id>=0){
            libaroma_ripple_down(&me->ripple,x+me->draw_x,y);
          }
          me->allow_scroll=2;
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
          if (me->allow_scroll==1){
            /*me->velocity = libaroma_fling_up(&me->fling, x);*/
            me->velocity=(libaroma_fling_up(&me->fling, x)*libaroma_px(18))/libaroma_dp(4);
            if (me->velocity){
              me->request_x=-1;
            }
          }
          else if ((y>=0)&&(y<ctl->h)&&(x>=0)&&(x<ctl->w)){
            if (me->touched_id>=0){
              if (me->controller.pager){
                int active_x = _libaroma_ctl_tabs_indicator_x(
                  ctl,me->touched_id);
                if (abs(active_x-me->active_x)>(ctl->w>>2)){
                  int active_w = me->textw[me->touched_id]+libaroma_dp(24);
                  int center_c = active_x + (active_w>>1);
                  int draw_x   = center_c - (ctl->w >> 1);
                  if (draw_x<0){
                    draw_x=0;
                  }
                  if (draw_x>me->rest_canvas->w-ctl->w){
                    draw_x=me->rest_canvas->w-ctl->w;
                  }
                  me->request_x = draw_x;
                  me->no_auto_scroll = 1;
                }
                libaroma_ripple_up(&me->ripple,180);
                libaroma_ctl_pager_set_active_page(
                  me->controller.pager, me->touched_id,0);
              }
            }
          }
          libaroma_ripple_cancel(&me->ripple);
          me->forcedraw = 1;
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
          byte first_allow_scroll=0;
          if (me->allow_scroll==2){
            int move_sz = me->touch_x - x;
            int scrdp=libaroma_dp(24);
            if (abs(move_sz)>=scrdp){
              me->allow_scroll=1;
              libaroma_ripple_cancel(&me->ripple);
              first_allow_scroll=1;
              me->forcedraw = 1;
            }
          }
          if ((me->allow_scroll==1)&&(me->touch_x!=x)){
            int move_sz = me->touch_x - x;
            int move_x = me->touch_scroll_x + move_sz;
            if (move_x<0){
              move_x=0;
            }
            if (move_x>me->rest_canvas->w-ctl->w){
              move_x=me->rest_canvas->w-ctl->w;
            }
            if ((first_allow_scroll)||(me->request_x!=-1)){
              me->request_x = move_x;
            }
            else{
              me->req_x = move_x;
            }
            me->touch_scroll_x = move_x;
            me->forcedraw = 1;
            
            /* set history */
            libaroma_fling_move(&me->fling, x);
            me->touch_x=x;
          }
          if ((y<0)||(y>=ctl->h)||(x<0)||(x>=ctl->w)){
            libaroma_ripple_cancel(&me->ripple);
            me->forcedraw = 1;
          }
          else{
            libaroma_ripple_move(&me->ripple, x+me->draw_x, y);
          }
        }
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_tabs_msg */

/*
 * Function    : libaroma_ctl_tabs
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_tabs(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    word bgcolor,
    word selcolor,
    int hpad,
    int left_pad
){
  /* init internal data */
  _LIBAROMA_CTL_TABSP me = (_LIBAROMA_CTL_TABSP)
      calloc(sizeof(_LIBAROMA_CTL_TABS),1);
  if (!me){
    ALOGW("libaroma_ctl_tabs alloc button memory failed");
    return NULL;
  }
  
  me->hpad=libaroma_window_measure_point(hpad);
  me->left_pad=libaroma_window_measure_point(left_pad);
  me->selcolor=selcolor;
  me->bgcolor=bgcolor;
  me->touched_id=-1;
  me->request_x=-1;
  
  /* set internal data */
  libaroma_mutex_init(me->mutex);
  
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(48), /* min size */
      (voidp) me,
      &_libaroma_ctl_tabs_handler,
      win
    );
  if (!ctl){
    free(me);
    return NULL;
  }
  
  me->controller.controller = ctl;
  me->controller.handler = &_libaroma_ctl_tabs_pager_handler;
  
  return ctl;
} /* End of libaroma_ctl_tabs */

/*
 * Function    : libaroma_ctl_tabs_set_pager
 * Return Value: byte
 * Descriptions: set pager
 */
byte libaroma_ctl_tabs_set_pager(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CONTROLP pager){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  libaroma_mutex_lock(me->mutex);
  libaroma_ctl_pager_set_controller(
    pager, &me->controller
  );
  libaroma_mutex_unlock(me->mutex);
  _libaroma_ctl_tabs_req_internal_draw(ctl);
  return 1;
} /* End of libaroma_ctl_tabs_set_pager */

/*
 * Function    : libaroma_ctl_tabs_set_texts
 * Return Value: byte
 * Descriptions: set tab texts
 */
byte libaroma_ctl_tabs_set_texts(LIBAROMA_CONTROLP ctl,
  char ** texts, int textn, byte update_now){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  int i;
  
  libaroma_mutex_lock(me->mutex);
  _libaroma_ctl_tabs_free_texts(ctl);
  
  me->texts=(char **) calloc(sizeof(char *),textn);
  if (!me->texts){
    me->textn=0;
    return 0;
  }
  /* copy texts */
  for (i=0;i<textn;i++){
    me->texts[i]=strdup(texts[i]);
  }
  me->textn=textn;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    _libaroma_ctl_tabs_req_internal_draw(ctl);
  }
  return 1;
} /* End of libaroma_ctl_tabs_set_texts */

/*
 * Function    : libaroma_ctl_bar_set_color
 * Return Value: byte
 * Descriptions: set color
 */
byte libaroma_ctl_tabs_set_color(LIBAROMA_CONTROLP ctl,
  word bgcolor, word selcolor, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_tabs_handler, _LIBAROMA_CTL_TABSP, 0
  );
  libaroma_mutex_lock(me->mutex);
  me->bgcolor = bgcolor;
  me->selcolor = selcolor;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    if (ctl->window!=NULL){
      if (me->change_dc){
        libaroma_canvas_free(me->change_dc);
        me->change_dc=NULL;
      }
      me->change_start = 1;
      me->change_state = 0;
      _libaroma_ctl_tabs_req_internal_draw(ctl);
    }
  }
  return 1;
} /* End of libaroma_ctl_bar_set_color */

#endif /* __libaroma_ctl_tabs_c__ */
