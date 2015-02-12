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
 * Filename    : ctl_scroll.c
 * Description : scroll control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 12/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ctl_scroll_c__
#define __libaroma_ctl_scroll_c__

#define _LIBAROMA_CTL_SCROLL_SIGNATURE 0x40
#define _LIBAROMA_CTL_SCROLL_HISTORY   10
#define _LIBAROMA_CTL_SCROLL_MAX_CACHE 20000

/*
 * Structure   : __LIBAROMA_CTL_SCROLL
 * Typedef     : _LIBAROMA_CTL_SCROLL, * _LIBAROMA_CTL_SCROLLP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_SCROLL _LIBAROMA_CTL_SCROLL;
typedef struct __LIBAROMA_CTL_SCROLL * _LIBAROMA_CTL_SCROLLP;
struct __LIBAROMA_CTL_SCROLL{
  /* drawing items */
  LIBAROMA_CANVASP client_canvas;
  word color_bg;
  
  /* scrolling items */
  int scroll_y;
  int client_h;
  int draw_y;
  int drawed_scroll_y;
  int synced_scroll_y;
  byte draw_state;
  
  /* touch event */
  int touch_x;
  int touch_y;
  int touch_scroll_y;
  
  /* fling items */
  byte touched;
  double velocity;
  int allow_scroll;
  int prev_point[_LIBAROMA_CTL_SCROLL_HISTORY];
  long prev_time[_LIBAROMA_CTL_SCROLL_HISTORY];
  int prevn;
  
  
  /* client data */
  LIBAROMA_CTL_SCROLL_CLIENT client;
};

/*
 * Function    : _libaroma_ctl_scroll_updatecache
 * Return Value: byte
 * Descriptions: update cache drawing
 */
byte _libaroma_ctl_scroll_updatecache(LIBAROMA_CONTROLP ctl, int move_sz){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  
  int move_value=0;
  int cvhsz = me->client_canvas->h / 3;
  
  if (move_sz<0){
    /* draw bottom */
    move_value = 0-cvhsz;
    if (move_value>move_sz){
      move_value=move_sz;
    }
    if (me->drawed_scroll_y-move_value<0){
      move_value=0-me->drawed_scroll_y;
    }
  }
  else if (move_sz>0){
    move_value = cvhsz;
    if (move_value<move_sz){
      move_value=move_sz;
    }
    if (me->drawed_scroll_y+move_value+ctl->h>me->client_h){
      move_value=(me->client_h-ctl->h)-me->drawed_scroll_y;
    }
    if (move_value<0){
      move_value=0;
    }
  }
  
  if (me->draw_state==10){
    me->draw_state=0;
    
    /* force redraw all */
    libaroma_draw_rect( /* erase bg */
      me->client_canvas,
      0, 0,
      me->client_canvas->w, me->client_canvas->h,
      me->color_bg, 0xff
    );
    if (me->client.draw!=NULL){
      me->client.draw(
        ctl, &me->client, me->client_canvas,
        0,me->scroll_y,me->client_canvas->w,me->client_canvas->h
      );
    }
    me->draw_y = me->scroll_y;
    me->drawed_scroll_y = me->scroll_y;
    return 1;
  }
  else if (move_value>0){
    /* request top cache */
    int redraw_height   = move_value;
    int move_height     = me->client_canvas->h - redraw_height;
    int redraw_scroll_y = me->draw_y-redraw_height;
    
    /* moving */
    int i;
    int redraw_pos  = redraw_height*me->client_canvas->l;
    int redraw_sz   = 2*me->client_canvas->w;
    for (i=move_height-1;i>=0;i--){
      int pos = i*me->client_canvas->l;
      memcpy(
        me->client_canvas->data+pos+redraw_pos,
        me->client_canvas->data+pos,
        redraw_sz
      );
    }
    
    /* set redraw canvas */
    LIBAROMA_CANVASP redraw_canvas = libaroma_canvas_area(
      me->client_canvas, 0, 0, me->client_canvas->w, redraw_height
    );
    libaroma_draw_rect( /* erase bg */
      redraw_canvas,
      0, 0, redraw_canvas->w, redraw_canvas->h,
      me->color_bg, 0xff
    );
    if (me->client.draw!=NULL){
      me->client.draw(
        ctl, &me->client, redraw_canvas,
        0, redraw_scroll_y, redraw_canvas->w, redraw_height
      );
    }
    libaroma_canvas_free(redraw_canvas);
    
    /* update position */
    me->draw_y -= redraw_height;
    me->drawed_scroll_y = me->scroll_y;
    
    return 1;
  }
  else if (move_value<0){
    /* request bottom cache */
    int redraw_height   = abs(move_value);
    int move_height     = me->client_canvas->h - redraw_height;
    int redraw_y        = move_height;
    int redraw_scroll_y = me->draw_y+redraw_y+redraw_height;
    
    /* moving */
    int i;
    int redraw_pos  = redraw_height*me->client_canvas->l;
    int redraw_sz   = 2*me->client_canvas->w;
    for (i=0;i<move_height;i++){
      int pos = i*me->client_canvas->l;
      memcpy(
        me->client_canvas->data+pos,
        me->client_canvas->data+pos+redraw_pos,
        redraw_sz
      );
    }
    
    /* set redraw canvas */
    LIBAROMA_CANVASP redraw_canvas = libaroma_canvas_area(
      me->client_canvas, 0, redraw_y, me->client_canvas->w, redraw_height
    );
    libaroma_draw_rect( /* erase bg */
      redraw_canvas,
      0, 0, redraw_canvas->w, redraw_canvas->h,
      me->color_bg, 0xff
    );
    if (me->client.draw!=NULL){
      me->client.draw(
        ctl, &me->client, redraw_canvas,
        0, redraw_scroll_y, redraw_canvas->w, redraw_height
      );
    }
    libaroma_canvas_free(redraw_canvas);
    
    /* update position */
    me->draw_y += redraw_height;
    me->drawed_scroll_y = me->scroll_y;
    return 1;
  }
  return 0;
} /* End of _libaroma_ctl_scroll_updatecache */

/*
 * Function    : _libaroma_ctl_scroll_updatescroll
 * Return Value: byte
 * Descriptions: update scroll positions
 */
byte _libaroma_ctl_scroll_updatescroll(LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  if (me->draw_state==10){
    return _libaroma_ctl_scroll_updatecache(ctl, 0);
  }
  else if (me->draw_state){
    me->draw_state=0;
    if (me->scroll_y!=me->drawed_scroll_y){
      int move_sz = me->drawed_scroll_y-me->scroll_y;
      int draw_y  = (me->drawed_scroll_y-me->draw_y) - move_sz;
      if (draw_y<0){
        return _libaroma_ctl_scroll_updatecache(ctl,move_sz);
      }
      if (draw_y+ctl->h>me->client_canvas->h){
        return _libaroma_ctl_scroll_updatecache(ctl,move_sz);
      }
      me->drawed_scroll_y = me->scroll_y;
    }
  }
  return 1;
} /* End of _libaroma_ctl_scroll_updatescroll */

/*
 * Function    : _libaroma_ctl_scroll_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_scroll_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 
  );
  if (me->client.signature){
    if (ctl->h>me->client_h){
      libaroma_draw_rect( /* erase bg */
        c,0,0,c->w,c->h,me->color_bg,0xff
      );
    }
    
    if (me->client_canvas!=NULL){
      if (me->draw_state){
        _libaroma_ctl_scroll_updatescroll(ctl);
      }
      
      /* draw cache */
      libaroma_draw_ex(
        c,me->client_canvas,
        0,0,0,(me->drawed_scroll_y-me->draw_y),ctl->w,ctl->h,
        0,0xff);
    }
    me->synced_scroll_y=me->drawed_scroll_y;
  }
  else{
    libaroma_draw_rect(
      c,0,0,c->w,c->h,me->color_bg,0xff
    );
  }
} /* End of _libaroma_ctl_scroll_draw */

/*
 * Function    : _libaroma_ctl_scroll_thread
 * Return Value: static void *
 * Descriptions: control thread callback
 */
void _libaroma_ctl_scroll_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 
  );
  if (me->client.signature){
    /* run client thread */
    if (me->client.thread!=NULL){
      if (me->client.thread(ctl,&me->client)){
        me->synced_scroll_y=-1;
      }
    }
    /* on fling */
    if ((me->velocity!=0)&&(!me->touched)){
      me->velocity*=0.93;
      if ((abs(me->velocity) < 1)||(me->touched)) {
        /* ended */
        me->velocity = 0;
        me->synced_scroll_y=-1;
      }
      else{
        /* still on fling */
        int max_scroll_y = me->client_h-ctl->h;
        int scroll_y = round(me->velocity) + me->scroll_y;
        if (scroll_y>=max_scroll_y){
          scroll_y=max_scroll_y;
          me->velocity = 0;
          me->synced_scroll_y=-1;
        }
        if (scroll_y<=0){
          scroll_y=0;
          me->velocity = 0;
          me->synced_scroll_y=-1;
        }
        if (scroll_y!=me->scroll_y){
          libaroma_ctl_scroll_set_pos(ctl, scroll_y);
        }
      }
    }
    if ((me->synced_scroll_y!=me->drawed_scroll_y)||(me->draw_state)){
      libaroma_control_draw(ctl,1);
    }
  }
} /* End of _libaroma_ctl_scroll_thread */

/*
 * Function    : _libaroma_ctl_scroll_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_scroll_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 
  );
  /* destroy client */
  if (me->client.destroy!=NULL){
    me->client.destroy(ctl,&me->client);
  }
  if (me->client_canvas!=NULL){
    libaroma_canvas_free(me->client_canvas);
    me->client_canvas=NULL;
  }
  free(me);
} /* End of _libaroma_ctl_scroll_destroy */

/*
 * Function    : _libaroma_ctl_scroll_touch_handler
 * Return Value: dword
 * Descriptions: touch message handler
 */
dword _libaroma_ctl_scroll_touch_handler(
    LIBAROMA_CONTROLP ctl, LIBAROMA_MSGP msg,int x, int y, byte state){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  switch(state){
    case LIBAROMA_HID_EV_STATE_DOWN:{
      /* set fling value */
      me->allow_scroll=2;
      me->touched=1;
      me->velocity=0;
      me->prevn=1;
      me->prev_point[0]=y;
      me->prev_time[0]=libaroma_tick();
      
      /* save touch value */
      me->touch_x=x;
      me->touch_y=y;
      me->touch_scroll_y = me->scroll_y;
    }
    break;
    case LIBAROMA_HID_EV_STATE_UP:{
      if ((!me->allow_scroll)&&(0)){
        /* child touch event */
      }
      else if (me->touched){
        int current_point = (y==0)?me->prev_point[me->prevn-1]:y;
        long current_time = libaroma_tick();
        int first_point   = me->prev_point[0];
        long first_time   = me->prev_time[0];
        if (current_time-first_time<1) {
          first_time--;
        }
        if (current_time-first_time<=400) {
          int diff = first_point - current_point;
          long time = current_time - first_time;
          me->touched=0;
          me->velocity = ((double) diff/(((double) time)/14))*4;
        }
      }
      
      /* reset */
      me->allow_scroll=0;
      me->touched=0;
      me->touch_x=0;
      me->touch_y=0;
    }
    break;
    case LIBAROMA_HID_EV_STATE_MOVE:{
      /* check minimal move to trigger scroll */
      if (me->allow_scroll==2){
        if (abs(me->touch_y-y)>=libaroma_dp(5)){
          me->allow_scroll = 1;
        }
        else{
          me->allow_scroll = 0;
        }
      }
      /* start scrolling process */
      if (me->allow_scroll){
        if (me->touched) {
          int mv = 0;
          int scroll_y=me->scroll_y;
          
          /* save points & times */
          long ctick = libaroma_tick();
          int  prev_point = me->prev_point[me->prevn-1];
          mv = prev_point - y;
          me->prevn++;
          if (me->prevn>_LIBAROMA_CTL_SCROLL_HISTORY){
            int i;
            for (i=1;i<_LIBAROMA_CTL_SCROLL_HISTORY;i++){
              me->prev_point[i-1]=me->prev_point[i];
              me->prev_time[i-1]=me->prev_time[i];
            }
            me->prevn--;
          }
          me->prev_point[me->prevn-1]=y;
          me->prev_time[me->prevn-1]=ctick;
          
          int max_scroll_y=me->client_h-ctl->h;
          if (max_scroll_y<0){
            max_scroll_y=0;
          }
          
          /* standard scrolling */
          if ((scroll_y<0)&&(mv<0)){
            /* stop */
            scroll_y = 0;
          }
          else if ((scroll_y>max_scroll_y)&&(mv>0)) {
            scroll_y = max_scroll_y;
          }
          else {
            scroll_y += mv;
          }
          
          /* scroll is changed */
          if (scroll_y!=me->scroll_y){
            libaroma_ctl_scroll_set_pos(ctl, scroll_y);
          }
        }
      }
    }
    break;
  }
  return 0;
} /* End of _libaroma_ctl_scroll_touch_handler */

/*
 * Function    : _libaroma_ctl_scroll_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_scroll_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check 
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );*/
  switch(msg->msg){
    case LIBAROMA_MSG_TOUCH:
      {
        /* touch handler */
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        return _libaroma_ctl_scroll_touch_handler(
          ctl,msg,x,y,msg->state
        );
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_scroll_msg */

/*
 * Function    : libaroma_ctl_scroll
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create scroll control
 */
LIBAROMA_CONTROLP libaroma_ctl_scroll(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h
){
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      _LIBAROMA_CTL_SCROLL_SIGNATURE, id,
      x, y, w, h,
      libaroma_dp(96),libaroma_dp(96), /* min size */
      _libaroma_ctl_scroll_msg,
      _libaroma_ctl_scroll_draw,
      NULL,
      _libaroma_ctl_scroll_destroy,
      _libaroma_ctl_scroll_thread
    );
  
  /* init internal data */
  _LIBAROMA_CTL_SCROLLP me = (_LIBAROMA_CTL_SCROLLP)
      malloc(sizeof(_LIBAROMA_CTL_SCROLL));
  
  /* set internal data */
  me->client_canvas = NULL;
  me->synced_scroll_y = -1;
  me->draw_state = 0;
  me->scroll_y = 0;
  me->client_h = 0;
  me->draw_y=0;
  me->drawed_scroll_y=0;
  me->color_bg = RGB(ffffff);
  me->client.signature=0;
  me->client.internal=NULL;
  me->client.message=NULL;
  me->client.draw=NULL;
  me->client.destroy=NULL;
  me->client.thread=NULL;
  
  /* touch state */
  me->touch_x=0;
  me->touch_y=0;
  
  /* reset fling */
  me->touched = 0;
  me->velocity = 0;
  me->prevn = 0;
  me->allow_scroll = 0;
  me->prev_point[0] = 0;
  me->prev_time[0] = 0;
  
  /* attach internal data & return*/
  ctl->high_prio_thread=1;
  ctl->internal = (voidp) me;
  return libaroma_window_attach(win,ctl);
} /* End of libaroma_ctl_scroll */

/*
 * Function    : libaroma_ctl_scroll_set_height
 * Return Value: byte
 * Descriptions: set scroll height
 */
byte libaroma_ctl_scroll_set_height(LIBAROMA_CONTROLP ctl, int h){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  me->client_h = h;
  
  if (me->client_h<1){
    if (me->client_canvas!=NULL){
      libaroma_canvas_free(me->client_canvas);
      me->client_canvas=NULL;
    }
  }
  else{
    /* max 3x control height */
    int valid_height = h;
    if (valid_height>_LIBAROMA_CTL_SCROLL_MAX_CACHE){
      valid_height=_LIBAROMA_CTL_SCROLL_MAX_CACHE;
    }
    LIBAROMA_CANVASP new_client_canvas = libaroma_canvas(ctl->w,valid_height);
    LIBAROMA_CANVASP old_canvas = me->client_canvas;
    me->client_canvas = new_client_canvas;
    if (old_canvas!=NULL){
      libaroma_canvas_free(old_canvas);
    }
  }
  me->synced_scroll_y=-1;
  libaroma_ctl_scroll_set_pos(ctl,me->scroll_y);
  me->draw_state = 10; /* force recalculate */
  return 1;
} /* End of libaroma_ctl_scroll_set_height */

/*
 * Function    : libaroma_ctl_scroll_set_pos
 * Return Value: byte
 * Descriptions: set scroll position
 */
byte libaroma_ctl_scroll_set_pos(LIBAROMA_CONTROLP ctl, int scroll_y){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  int req_scroll_y = scroll_y;
  if (req_scroll_y>me->client_h-ctl->h){
    req_scroll_y = me->client_h-ctl->h;
  }
  if (req_scroll_y<0){
    req_scroll_y=0;
  }
  if (me->scroll_y!=req_scroll_y){
    me->scroll_y=req_scroll_y;
    me->draw_state = 2;
  }
  return 1;
} /* End of libaroma_ctl_scroll_set_pos */

/*
 * Function    : libaroma_ctl_scroll_set_client
 * Return Value: byte
 * Descriptions: set client handler
 */
byte libaroma_ctl_scroll_set_client(
    LIBAROMA_CONTROLP ctl,
    voidp internal,
    byte signature,
    LIBAROMA_CTL_SCROLLCB_MESSAGE message,
    LIBAROMA_CTL_SCROLLCB_DRAW draw,
    LIBAROMA_CTL_SCROLLCB_DESTROY destroy,
    LIBAROMA_CTL_SCROLLCB_THREAD thread
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client.destroy!=NULL){
    me->client.destroy(ctl,&me->client);
  }
  me->client.signature=signature;
  me->client.internal=internal;
  me->client.message=message;
  me->client.draw=draw;
  me->client.destroy=destroy;
  me->client.thread=thread;
  me->synced_scroll_y=-1;
  me->draw_state = 10; /* force recalculate */
  return 1;
} /* End of libaroma_ctl_scroll_set_client */

/*
 * Function    : libaroma_ctl_scroll_is_visible
 * Return Value: byte
 * Descriptions: is this area visible?
 */
byte libaroma_ctl_scroll_is_visible(
   LIBAROMA_CONTROLP ctl, int y, int h
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  int bottom = y+h;
  int client_top = me->scroll_y - me->draw_y;
  int client_bottom = client_top + me->client_canvas->h;
  if (((y>=client_top)&&(y<client_bottom))||
      ((bottom>client_top)&&(bottom<=client_bottom))) {
    return 1;
  }
  return 0;
} /* End of libaroma_ctl_scroll_is_visible */

/*
 * Function    : libaroma_ctl_scroll_sync
 * Return Value: byte
 * Descriptions: sync client drawing
 */
byte libaroma_ctl_scroll_sync(
   LIBAROMA_CONTROLP ctl, 
   LIBAROMA_CANVASP canvas,
   int x, int y, int w, int h,
   byte erase
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  if (x<0){
    x=0;
  }
  if ((w<1)||(x+w>me->client_canvas->w)){
    w=me->client_canvas->w-x;
  }
  int top=y;
  int bottom = y+h;
  int client_top = me->scroll_y - me->draw_y;
  int client_bottom = client_top + me->client_canvas->h;
  int start_y = 0;
  if (top<client_top){
    start_y = client_top-top;
    top = client_top;
  }
  if (bottom>client_bottom){
    bottom=client_bottom;
  }
  int dy = top - client_top;
  int dh = (bottom - client_bottom) - dy;
  if (dh>0){
    if (erase){
      libaroma_draw_rect(
        me->client_canvas, x, dy, w, dh,
        me->color_bg, 0xff
      );
    }
    libaroma_draw_ex(
      me->client_canvas, canvas,
      x, dy, 0, start_y, w, dh, 1, 0xff
    );
    
    return 1;
  }
  return 0;
} /* End of libaroma_ctl_scroll_sync */

/* TEST SCROLL CONTROL */
void _libaroma_ctl_testscroll_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    LIBAROMA_CANVASP cv,
    int x, int y, int w, int h){
  int pos = floor(y/80);
  int cnt = ceil(h/80) + ceil(y/80) - pos;
  int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i=0;i<=cnt;i++){
    int item_y = (i+pos) * 80;
    char text[128];
    snprintf(text,128,"Scrolling Test %i",i+pos);
    LIBAROMA_CANVASP item_cv = libaroma_canvas(w,80);
    libaroma_canvas_setcolor(item_cv,RGB(ffffff),255);
    libaroma_draw_text(
      item_cv,
      text,
      20,
      5,
      RGB(557799),
      w-40,
      LIBAROMA_FONT(0,4)|
      LIBAROMA_TEXT_SINGLELINE|
      LIBAROMA_TEXT_CENTER|
      LIBAROMA_TEXT_FIXED_INDENT|
      LIBAROMA_TEXT_FIXED_COLOR|
      LIBAROMA_TEXT_NOHR,
      120);
    int ddy=item_y-y;
    if (ddy>=0){
      libaroma_draw(cv,item_cv,0,ddy,0);
    }
    else{
      libaroma_draw_ex(cv,item_cv,0,0,0,0-ddy,item_cv->w,item_cv->h+ddy,0,0xff);
    }
    libaroma_canvas_free(item_cv);
  }
  
}

LIBAROMA_CONTROLP libaroma_ctl_testscroll(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h
){
  LIBAROMA_CONTROLP ctl = libaroma_ctl_scroll(
    win, id, x, y, w, h
  );
  libaroma_ctl_scroll_set_client(
    ctl, NULL, 1,
    NULL,
    _libaroma_ctl_testscroll_draw,
    NULL,
    NULL
  );
  libaroma_ctl_scroll_set_height(ctl, 16000);
  return ctl;
}

#endif /* __libaroma_ctl_scroll_c__ */
