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
 * Filename    : ctl_button.c
 * Description : button control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ctl_button_c__
#define __libaroma_ctl_button_c__

#define _LIBAROMA_CTL_BUTTON_HOLD_TIMING 300
#define _LIBAROMA_CTL_BUTTON_ANI_TIMING 500

/* HANDLER */
dword _libaroma_ctl_button_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_button_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_button_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_button_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_button_handler={
  message:_libaroma_ctl_button_msg,
  draw:_libaroma_ctl_button_draw,
  focus:NULL,
  destroy:_libaroma_ctl_button_destroy,
  thread:_libaroma_ctl_button_thread
};

/*
 * Structure   : __LIBAROMA_CTL_BUTTON
 * Typedef     : _LIBAROMA_CTL_BUTTON, * _LIBAROMA_CTL_BUTTONP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_BUTTON _LIBAROMA_CTL_BUTTON;
typedef struct __LIBAROMA_CTL_BUTTON * _LIBAROMA_CTL_BUTTONP;
struct __LIBAROMA_CTL_BUTTON{
  char * text;
  byte style;
  byte isdark;
  word color;
  
  byte forcedraw;
  byte touched;
  byte holded;
  int touch_x;
  int touch_y;
  long touch_start;
  float touch_state;
  float release_state;
  long release_start;
  
  LIBAROMA_MUTEX mutex;
  LIBAROMA_CANVASP rest_canvas;
  LIBAROMA_CANVASP push_canvas;
};

/*
 * Function    : _libaroma_ctl_button_internal_draw
 * Return Value: void
 * Descriptions: internal button draw
 */
void _libaroma_ctl_button_internal_draw(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_BUTTONP me = (_LIBAROMA_CTL_BUTTONP) ctl->internal;
  if (ctl->window==NULL){
    return;
  }
  
  
  LIBAROMA_CANVASP rest_canvas=NULL;
  LIBAROMA_CANVASP push_canvas=NULL;
  
  byte is_disabled = (me->style&LIBAROMA_CTL_BUTTON_DISABLED)?1:0;
  rest_canvas = libaroma_canvas(ctl->w,ctl->h);
  if (!is_disabled){
    push_canvas = libaroma_canvas(ctl->w,ctl->h);
  }
  LIBAROMA_CANVASP bg = libaroma_canvas(ctl->w,ctl->h);
  libaroma_control_erasebg(ctl,rest_canvas);
  if (!is_disabled){
    libaroma_control_erasebg(ctl,push_canvas);
  }
  libaroma_control_erasebg(ctl,bg);
  
  int ix = libaroma_dp(4);
  int iy = libaroma_dp(6);
  int iw = ctl->w-ix*2;
  int ih = ctl->h-iy*2;
  
  if (me->style&LIBAROMA_CTL_BUTTON_COLORED) {
    me->isdark = libaroma_color_isdark(me->color);
  }
  else{
    me->isdark = libaroma_color_isdark(libaroma_wm_get_color("window"));
  }
  word push_color = me->isdark?RGB(eeeeee):RGB(222222);
  word text_color = me->isdark?0xffff:0;
  word rest_text_color = text_color;
  byte push_opa   = me->isdark?80:98;
  
  /* buttons */
  LIBAROMA_CANVASP btnmask = libaroma_canvas_ex(iw,ih,1);
  libaroma_canvas_setcolor(btnmask,0,0);
  libaroma_gradient(btnmask,
    0,0,
    ctl->w-libaroma_dp(8), ctl->h-libaroma_dp(12),
    0,0,
    libaroma_dp(2),
    0x1111
  );
  
  /* raised shadow */
  if (me->style&LIBAROMA_CTL_BUTTON_RAISED){
    int raised_sz;
    LIBAROMA_CANVASP raised_canvas;
    
    raised_sz = libaroma_dp(3);
    raised_canvas = libaroma_blur_ex(btnmask,
      raised_sz,1,RGB(000000)
    );
    libaroma_draw_opacity(
      rest_canvas,raised_canvas,
      ix-raised_sz,
      iy-raised_sz+libaroma_dp(1),
      1,0x30
    );
    libaroma_canvas_free(raised_canvas);
    
    if (!is_disabled){
      raised_sz = libaroma_dp(4);
      raised_canvas = libaroma_blur_ex(btnmask,
        raised_sz,1,RGB(000000)
      );
      libaroma_draw_opacity(
        push_canvas,raised_canvas,
        ix-raised_sz,
        iy-raised_sz+libaroma_dp(4),
        1,0x50
      );
      libaroma_canvas_free(raised_canvas);
    }
  }
  
  if (me->style&LIBAROMA_CTL_BUTTON_COLORED) {
    if (is_disabled){
      libaroma_draw_ex(btnmask,bg,0,0,ix,iy,btnmask->w,btnmask->h,0,0xff);
      libaroma_draw_rect(btnmask,0,0,btnmask->w,btnmask->h,
        me->isdark?0xffff:0,127);
    }
    else{
      libaroma_draw_rect(btnmask,0,0,btnmask->w,btnmask->h,me->color,0xff);
    }
    if (me->style&LIBAROMA_CTL_BUTTON_RAISED){
      libaroma_draw(rest_canvas, btnmask, ix, iy, 1);
    }
    else{
      rest_text_color = me->color;
    }
    if (!is_disabled){
      libaroma_draw_rect(btnmask,0,0,btnmask->w,btnmask->h,push_color,push_opa);
      libaroma_draw(push_canvas, btnmask, ix, iy, 1);
    }
  }
  else{
    if (me->style&LIBAROMA_CTL_BUTTON_RAISED){
      libaroma_draw_ex(btnmask,bg,0,0,ix,iy,btnmask->w,btnmask->h,0,0xff);
      libaroma_draw(rest_canvas, btnmask, ix, iy, 1);
    }
    if (!is_disabled){
      libaroma_draw_ex(btnmask,bg,0,0,ix,iy,btnmask->w,btnmask->h,0,0xff);
      libaroma_draw_rect(btnmask,0,0,btnmask->w,btnmask->h,push_color,push_opa);
      libaroma_draw(push_canvas, btnmask, ix, iy, 1);
    }
  }
  
  /* draw text */
  libaroma_mutex_lock(me->mutex);
  LIBAROMA_TEXT textp = libaroma_text(
    me->text,
    text_color,
    iw - libaroma_dp(16),
    LIBAROMA_FONT(0,4)|
    LIBAROMA_TEXT_SINGLELINE|
    LIBAROMA_TEXT_CENTER|
    LIBAROMA_TEXT_FIXED_INDENT|
    LIBAROMA_TEXT_FIXED_COLOR|
    LIBAROMA_TEXT_NOHR,
    120
  );
  libaroma_mutex_unlock(me->mutex);
  int y = ctl->h/2 - libaroma_text_height(textp)/2;
  
  if (is_disabled){
    rest_text_color=me->isdark?0xffff:0;
  }
  libaroma_text_draw_color(rest_canvas,textp,libaroma_dp(12)+ix,y,
    rest_text_color
  );
  
  if (!is_disabled){
    libaroma_text_draw(push_canvas,textp,libaroma_dp(12)+ix,y);
  }
  else{
    libaroma_draw_ex(rest_canvas,bg,0,0,0,0,ctl->w,ctl->h,0,
      me->isdark?171:189);
  }
  libaroma_text_free(textp);
  
  /* cleanup */
  libaroma_canvas_free(bg);
  libaroma_canvas_free(btnmask);
  
  /* save it */
  libaroma_mutex_lock(me->mutex);
  LIBAROMA_CANVASP rc=me->rest_canvas;
  LIBAROMA_CANVASP pc=me->push_canvas;
  me->rest_canvas=rest_canvas;
  me->push_canvas=push_canvas;
  if (rc!=NULL){
    libaroma_canvas_free(rc);
  }
  if (pc!=NULL){
    libaroma_canvas_free(pc);
  }
  me->forcedraw=1;
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_button_internal_draw */

static void * _libaroma_ctl_button_req_internal_draw_thread(void * ctl){
  _libaroma_ctl_button_internal_draw((LIBAROMA_CONTROLP) ctl);
  return NULL;
}
void _libaroma_ctl_button_req_internal_draw(LIBAROMA_CONTROLP ctl){
  pthread_t pp;
  pthread_create(&pp,NULL,_libaroma_ctl_button_req_internal_draw_thread,
    (void *) ctl);
  pthread_detach(pp);
}

/*
 * Function    : _libaroma_ctl_button_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_button_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 
  );
  libaroma_mutex_lock(me->mutex);
  if ((me->rest_canvas==NULL)||(me->forcedraw==2)){
    libaroma_mutex_unlock(me->mutex);
    _libaroma_ctl_button_internal_draw(ctl);
    libaroma_mutex_lock(me->mutex);
    if (me->rest_canvas==NULL){
      libaroma_mutex_unlock(me->mutex);
      return;
    }
  }
  me->forcedraw = 0;
  
  libaroma_control_erasebg(ctl,c);
  if (me->style&LIBAROMA_CTL_BUTTON_DISABLED){
    libaroma_draw(c, me->rest_canvas, 0, 0, 0);
  }
  else if ((me->touch_state>0)&&(me->release_state<1)) {
    float ripplestate = me->touch_state;
    float pst_state = MIN(me->touch_state*15,1);
    float cbz_state;
    if (me->release_state>0){
      ripplestate += (1.0-me->touch_state)*me->release_state;
    }
    cbz_state = libaroma_cubic_bezier_easein(ripplestate);
    float ropa  = (me->touched==1)?1:1-me->release_state;
    byte opa    = (0xff * pst_state) * ropa;
    int msize = MAX(MIN(ctl->w,ctl->h)>>1,libaroma_dp(5));
    int psize = MAX(ctl->w,ctl->h);
    psize+=(abs(me->touch_x-ctl->w/2)+abs(me->touch_y-ctl->h/2)) * 2;
    libaroma_draw(c, me->rest_canvas, 0, 0, 0);
    libaroma_draw_opacity(c, me->push_canvas, 0, 0, 2, 
      (byte) (me->isdark?(opa/2):(opa*0.75)));
    
    int rsize=psize * cbz_state;
    if (rsize<msize){
      opa = (opa * rsize) / msize;
    }
    rsize+=msize;
    libaroma_draw_mask_circle(
        c, 
        me->push_canvas, 
        me->touch_x, me->touch_y, 
        me->touch_x, me->touch_y, 
        rsize,
        opa
      );
  }
  else{
    libaroma_draw(c, me->rest_canvas, 0, 0, 0);
  }
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_button_draw */

/*
 * Function    : _libaroma_ctl_button_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_button_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 0
  );
  byte is_draw = me->forcedraw;
  if (!(me->style&LIBAROMA_CTL_BUTTON_DISABLED)){
    if ((me->touch_start)&&(me->touch_state<1)){
      float nowstate=libaroma_control_state(me->touch_start, 1500);
      if (me->touch_state!=nowstate){
        is_draw = 1;
        me->touch_state=nowstate;
      }
    }
    if (me->touched==1){
      if ((me->touch_state>=0.6)&&(!me->holded)){
        me->holded=1;
        libaroma_window_post_command(
          LIBAROMA_CMD_SET(LIBAROMA_CMD_HOLD, 0, ctl->id)
        );
      }
    }else if (me->touched==2){
      if (me->touch_state>=0.1){
        me->touched=0;
        me->touch_start=0;
        me->release_start=libaroma_tick();
        me->release_state=0.0;
      }
    }
    
    if (!me->touched&&me->release_start){
      float nowstate=libaroma_control_state(me->release_start, 300);
      if (me->release_state!=nowstate){
        is_draw = 1;
        me->release_state=nowstate;
      }
      if (me->release_state>=1){
        me->release_start=0;
        me->touch_start=0;
      }
    }
  }
  if (is_draw){
    return 1;
  }
  
  return 0;
} /* End of _libaroma_ctl_button_thread */

/*
 * Function    : _libaroma_ctl_button_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_button_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 
  );
  libaroma_mutex_lock(me->mutex);
  if (me->rest_canvas!=NULL){
    libaroma_canvas_free(me->rest_canvas);
    me->rest_canvas=NULL;
  }
  if (me->push_canvas!=NULL){
    libaroma_canvas_free(me->push_canvas);
    me->push_canvas=NULL;
  }
  if (me->text!=NULL){
    free(me->text);
  }
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  free(me);
} /* End of _libaroma_ctl_button_destroy */

/*
 * Function    : _libaroma_ctl_button_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_button_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_TOUCH:
      {
        if (me->style&LIBAROMA_CTL_BUTTON_DISABLED){
          /* no thing for disabled button */
          return 0;
        }
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          me->touch_x=x;
          me->touch_y=y;
          me->touch_start=libaroma_tick();
          me->touch_state=0.0;
          me->release_state=0.0;
          me->release_start=0;
          me->holded=0;
          me->touched=1;
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
          if (me->touched){
            if (!me->holded){
              libaroma_window_post_command(
                LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK, 0, ctl->id)
              );
            }
            me->touched=2;
          }
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
          if (me->touched){
            if (!((x>=0)&&(y>=0)&&(x<ctl->w)&&(y<ctl->h))) {
              me->touched=2;
            }
          }
        }
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_button_msg */

/*
 * Function    : libaroma_ctl_button
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_button(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    char * text,
    byte button_style,
    word button_color
){
  /* init internal data */
  _LIBAROMA_CTL_BUTTONP me = (_LIBAROMA_CTL_BUTTONP)
      malloc(sizeof(_LIBAROMA_CTL_BUTTON));
  if (!me){
    ALOGW("libaroma_ctl_button alloc button memory failed");
    return NULL;
  }
  memset(me,0,sizeof(_LIBAROMA_CTL_BUTTON));
  
  /* set internal data */
  libaroma_mutex_init(me->mutex);
  me->text = strdup(text);
  me->style = button_style;
  me->color = button_color;
  
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(48), /* min size */
      (voidp) me,
      &_libaroma_ctl_button_handler,
      win
    );
  if (!ctl){
    if (me->text!=NULL){
      free(me->text);
    }
    free(me);
    return NULL;
  }
  return ctl;
} /* End of libaroma_ctl_button */

/*
 * Function    : libaroma_ctl_button_style
 * Return Value: byte
 * Descriptions: set button style
 */
byte libaroma_ctl_button_style(
    LIBAROMA_CONTROLP ctl,
    byte button_style,
    word button_color
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 0
  );
  me->style = button_style;
  me->color = button_color;
  _libaroma_ctl_button_req_internal_draw(ctl);
  return 1;
} /* End of libaroma_ctl_button_style */

/*
 * Function    : libaroma_ctl_button_text
 * Return Value: byte
 * Descriptions: set button text
 */
byte libaroma_ctl_button_text(
    LIBAROMA_CONTROLP ctl,
    char * text
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 0
  );
  libaroma_mutex_lock(me->mutex);
  if (me->text!=NULL){
    free(me->text);
  }
  me->text = strdup(text);
  libaroma_mutex_unlock(me->mutex);
  _libaroma_ctl_button_req_internal_draw(ctl);
  return 1;
} /* End of libaroma_ctl_button_text */

/*
 * Function    : libaroma_ctl_button_disable
 * Return Value: byte
 * Descriptions: set button disable state
 */
byte libaroma_ctl_button_disable(
    LIBAROMA_CONTROLP ctl,
    byte is_disable
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 0
  );
  if (is_disable){
    me->style |= LIBAROMA_CTL_BUTTON_DISABLED;
  }
  else{
    me->style &= ~LIBAROMA_CTL_BUTTON_DISABLED;
  }
  _libaroma_ctl_button_req_internal_draw(ctl);
  return 1;
} /* End of libaroma_ctl_button_disable */

/*
 * Function    : libaroma_ctl_button_is_disabled
 * Return Value: byte
 * Descriptions: check if button is disabled
 */
byte libaroma_ctl_button_is_disabled(LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_button_handler, _LIBAROMA_CTL_BUTTONP, 0
  );
  if (me->style&LIBAROMA_CTL_BUTTON_DISABLED){
    return 1;
  }
  return 0;
} /* End of libaroma_ctl_button_is_disabled */


#endif /* __libaroma_ctl_button_c__ */
