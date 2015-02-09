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

#define _LIBAROMA_CTL_BUTTON_SIGNATURE 0x03
#define _LIBAROMA_CTL_BUTTON_HOLD_TIMING 400
#define _LIBAROMA_CTL_BUTTON_ANI_TIMING 600

/*
 * Structure   : __LIBAROMA_CTL_BUTTON
 * Typedef     : _LIBAROMA_CTL_BUTTON, * _LIBAROMA_CTL_BUTTONP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_BUTTON _LIBAROMA_CTL_BUTTON;
typedef struct __LIBAROMA_CTL_BUTTON * _LIBAROMA_CTL_BUTTONP;
struct __LIBAROMA_CTL_BUTTON{
  char * text;
  byte touched;
  byte state;
  byte drawed_state;
  int touch_x;
  int touch_y;
  long touch_start;
  float anistate;
  LIBAROMA_CANVASP rest_canvas;
  LIBAROMA_CANVASP push_canvas;
  LIBAROMA_CANVASP hold_canvas;
};

/*
 * Function    : _libaroma_ctl_button_internal_draw
 * Return Value: void
 * Descriptions: internal button draw
 */
void _libaroma_ctl_button_internal_draw(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_BUTTONP me = (_LIBAROMA_CTL_BUTTONP) ctl->internal;
  if (me->rest_canvas!=NULL){
    libaroma_canvas_free(me->rest_canvas);
    me->rest_canvas=NULL;
  }
  if (me->push_canvas!=NULL){
    libaroma_canvas_free(me->push_canvas);
    me->push_canvas=NULL;
  }
  if (me->hold_canvas!=NULL){
    libaroma_canvas_free(me->hold_canvas);
    me->hold_canvas=NULL;
  }
  me->rest_canvas = libaroma_canvas(ctl->w,ctl->h);
  me->push_canvas = libaroma_canvas(ctl->w,ctl->h);
  me->hold_canvas = libaroma_canvas(ctl->w,ctl->h);
  libaroma_control_erasebg(ctl,me->rest_canvas);
  libaroma_control_erasebg(ctl,me->push_canvas);
  libaroma_control_erasebg(ctl,me->hold_canvas);
  
  int ix = libaroma_dp(4);
  int iy = libaroma_dp(6);
  int iw = ctl->w-ix*2;
  int ih = ctl->h-iy*2;
  
  /* buttons */
  LIBAROMA_CANVASP btn_canvas = libaroma_canvas_ex(iw,ih,1);
  LIBAROMA_CANVASP btn_canvas_p = libaroma_canvas_ex(iw,ih,1);
  libaroma_canvas_setcolor(btn_canvas,0,0);
  libaroma_canvas_setcolor(btn_canvas_p,0,0);
  libaroma_gradient(btn_canvas,
    0,0,
    ctl->w-libaroma_dp(8),
    ctl->h-libaroma_dp(12),
    libaroma_wm_get_color("control"),
    libaroma_wm_get_color("control_gradient"),
    libaroma_dp(2),
    0x1111
  );
  libaroma_gradient(btn_canvas_p,
    0,0,
    ctl->w-libaroma_dp(8),
    ctl->h-libaroma_dp(12),
    RGB(446699),
    RGB(446699),
    libaroma_dp(2),
    0x1111
  );
  
  /* shadow */
  int shadow_sz_r = libaroma_dp(1);
  int shadow_sz_p = libaroma_dp(4);
  LIBAROMA_CANVASP shadow_r=libaroma_blur_ex(btn_canvas,
    shadow_sz_r,1,RGB(000000)
  );
  LIBAROMA_CANVASP shadow_p=libaroma_blur_ex(btn_canvas_p,
    shadow_sz_p,1,RGB(000000)
  );
  libaroma_draw_opacity(
    me->rest_canvas,shadow_r,
    ix-shadow_sz_r, iy-shadow_sz_r+libaroma_dp(1), 1, 
    0x30
  );
  libaroma_draw_opacity(
    me->push_canvas,shadow_p,
    ix-shadow_sz_p, iy-shadow_sz_p+libaroma_dp(2), 1, 
    0x50
  );
  libaroma_draw_opacity(
    me->hold_canvas,shadow_p,
    ix-shadow_sz_p, iy-shadow_sz_p+libaroma_dp(2), 1, 
    0x40
  );
  
  /* draw text */
  LIBAROMA_TEXT textp = libaroma_text(
    me->text,
    libaroma_wm_get_color("control_text"),
    iw - libaroma_dp(16),
    LIBAROMA_FONT(0,4)|
    LIBAROMA_TEXT_SINGLELINE|
    LIBAROMA_TEXT_CENTER|
    LIBAROMA_TEXT_FIXED_INDENT|
    LIBAROMA_TEXT_FIXED_COLOR|
    LIBAROMA_TEXT_NOHR,
    120
  );
  int y = ih/2 - libaroma_text_height(textp)/2;
  libaroma_text_draw(btn_canvas,textp,libaroma_dp(12),y);
  libaroma_text_draw(btn_canvas_p,textp,libaroma_dp(12),y);
  libaroma_draw(me->rest_canvas, btn_canvas, ix, iy, 1);
  libaroma_draw(me->push_canvas, btn_canvas_p, ix, iy, 1);
  
  libaroma_canvas_setcolor(btn_canvas_p,0,0);
  libaroma_gradient(btn_canvas_p,
    0,0,
    ctl->w-libaroma_dp(8),
    ctl->h-libaroma_dp(12),
    RGB(6688aa),
    RGB(6688aa),
    libaroma_dp(2),
    0x1111
  );
  libaroma_text_draw(btn_canvas_p,textp,libaroma_dp(12),y);
  libaroma_draw(me->hold_canvas, btn_canvas_p, ix, iy, 1);
  libaroma_text_free(textp);
  
  /* cleanup */
  libaroma_canvas_free(shadow_r);
  libaroma_canvas_free(shadow_p);
  libaroma_canvas_free(btn_canvas);
  libaroma_canvas_free(btn_canvas_p);
  
} /* End of _libaroma_ctl_button_internal_draw */

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
    _LIBAROMA_CTL_BUTTON_SIGNATURE, _LIBAROMA_CTL_BUTTONP, 
  );
  if (me->rest_canvas==NULL){
    _libaroma_ctl_button_internal_draw(ctl);
    if (me->rest_canvas==NULL){
      return;
    }
  }
  libaroma_control_erasebg(ctl,c);
  if (me->state==0){
    libaroma_draw(c, me->rest_canvas, 0, 0, 0);
  }
  else if (me->state==1){
    float ani_val = me->anistate * 2;
    if (ani_val<1){
      float swiftout_state = libaroma_cubic_bezier_swiftout(ani_val);
      libaroma_draw(c, me->rest_canvas, 0, 0, 0);
      libaroma_draw_mask_circle(
        c, 
        me->push_canvas, 
        me->touch_x, me->touch_y, 
        me->touch_x, me->touch_y, 
        ctl->w * swiftout_state,
        0xff * swiftout_state
      );
    }
    else if (me->drawed_state==3){
      ani_val-=1;
      float swiftout_state = libaroma_cubic_bezier_swiftout(ani_val);
      libaroma_draw(c, me->push_canvas, 0, 0, 0);
      libaroma_draw_opacity(c, me->rest_canvas, 0, 0, 0, 0xff*swiftout_state);
    }
    else{
      libaroma_draw(c, me->push_canvas, 0, 0, 0);
    }
  }
  else if (me->state==2){
    float ani_val = me->anistate;
    if (ani_val<1){
      float swiftout_state = libaroma_cubic_bezier_swiftout(ani_val);
      libaroma_draw(c, me->push_canvas, 0, 0, 0);
      libaroma_draw_mask_circle(
        c, 
        me->hold_canvas, 
        me->touch_x, me->touch_y, 
        me->touch_x, me->touch_y, 
        ctl->w * swiftout_state,
        0xff * swiftout_state
      );
    }
    else{
      libaroma_draw(c, me->hold_canvas, 0, 0, 0);
    }
  }
} /* End of _libaroma_ctl_button_draw */

/*
 * Function    : _libaroma_ctl_button_thread
 * Return Value: static void *
 * Descriptions: control thread callback
 */
void _libaroma_ctl_button_thread(LIBAROMA_CONTROLP ctl) {
  _LIBAROMA_CTL_BUTTONP me = (_LIBAROMA_CTL_BUTTONP) ctl->internal;
  if ((me->state==0)&&(me->drawed_state!=0)){
    me->drawed_state=0;
    libaroma_control_draw(ctl,1);
  }
  else if ((me->state==1)&&(me->drawed_state!=1)) {
    float nowstate=0.0;
    long diff = libaroma_tick() - me->touch_start;
    if (diff>_LIBAROMA_CTL_BUTTON_HOLD_TIMING){
      nowstate=1.0;
    }
    else{
      nowstate = ((float) diff)/
        ((float) _LIBAROMA_CTL_BUTTON_HOLD_TIMING);
    }
    if (me->anistate!=nowstate){
      me->anistate=nowstate;
      if (me->state==1){
        libaroma_control_draw(ctl,1);
      }
    }
    if (me->anistate>=1.0){
      if (me->drawed_state==3){
        me->drawed_state=0;
        me->state=0;
        me->touch_start=0;
      }
      else{
        me->drawed_state=1;
        me->state=2;
        me->touch_start=libaroma_tick();
      }
    }
  }
  else if ((me->touched)&&(me->state==2)&&(me->drawed_state!=2)){
    float nowstate=0.0;
    long diff = libaroma_tick() - me->touch_start;
    if (diff>_LIBAROMA_CTL_BUTTON_ANI_TIMING){
      nowstate=1.0;
    }
    else{
      nowstate = ((float) diff)/
        ((float) _LIBAROMA_CTL_BUTTON_ANI_TIMING);
    }
    if (me->anistate!=nowstate){
      me->anistate=nowstate;
      if (me->state==2){
        libaroma_control_draw(ctl,1);
      }
    }
    if (me->anistate>=1.0){
      me->drawed_state=2;
      libaroma_window_post_command(
        LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK, 1, ctl->id)
      );
    }
  }
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
    _LIBAROMA_CTL_BUTTON_SIGNATURE, _LIBAROMA_CTL_BUTTONP, 
  );
  
  if (me->rest_canvas!=NULL){
    libaroma_canvas_free(me->rest_canvas);
    me->rest_canvas=NULL;
  }
  if (me->push_canvas!=NULL){
    libaroma_canvas_free(me->push_canvas);
    me->push_canvas=NULL;
  }
  if (me->hold_canvas!=NULL){
    libaroma_canvas_free(me->hold_canvas);
    me->hold_canvas=NULL;
  }
  free(me->text);
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
    _LIBAROMA_CTL_BUTTON_SIGNATURE, _LIBAROMA_CTL_BUTTONP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_TOUCH:
      {
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          me->touch_x=x;
          me->touch_y=y;
          me->touch_start=libaroma_tick();
          me->anistate=0.0;
          me->drawed_state=0;
          me->state=1;
          me->touched=1;
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
          byte no_command = ((me->drawed_state==2)||(!me->touched))?1:0;
          me->touched=0;
          if (me->drawed_state==2){
            me->state=0;
          }
          else{
            me->state=1;
            me->drawed_state=3;
          }
          if (!no_command){
            if ((x>=0)&&(y>=0)&&(x<ctl->w)&&(y<ctl->h)){
              return LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK, 0, ctl->id);
            }
          }
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
          if (me->touched){
            if (!((x>=0)&&(y>=0)&&(x<ctl->w)&&(y<ctl->h))) {
              me->touched=0;
              if (me->drawed_state==2){
                me->state=0;
              }
              else{
                me->state=1;
                me->drawed_state=3;
              }
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
    char * text
){
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      _LIBAROMA_CTL_BUTTON_SIGNATURE, id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(48), /* min size */
      _libaroma_ctl_button_msg,
      _libaroma_ctl_button_draw,
      NULL,
      _libaroma_ctl_button_destroy,
      _libaroma_ctl_button_thread
    );
  
  /* init internal data */
  _LIBAROMA_CTL_BUTTONP me = (_LIBAROMA_CTL_BUTTONP)
      malloc(sizeof(_LIBAROMA_CTL_BUTTON));
  
  /* set internal data */
  me->text = strdup(text);
  me->state= 0; /* rest */
  
  me->drawed_state=0;
  me->touch_x=0;
  me->touch_y=0;
  me->touch_start=0;
  me->anistate=0.0;
  me->touched=0;
  
  me->rest_canvas=NULL;
  me->push_canvas=NULL;
  me->hold_canvas=NULL;
  
  /* attach internal data & return*/
  ctl->internal = (voidp) me;
  return libaroma_window_attach(win,ctl);
} /* End of libaroma_ctl_button */

#endif /* __libaroma_ctl_button_c__ */
