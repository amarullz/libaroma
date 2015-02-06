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

/*
 * Structure   : __LIBAROMA_CTL_BUTTON
 * Typedef     : _LIBAROMA_CTL_BUTTON, * _LIBAROMA_CTL_BUTTONP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_BUTTON _LIBAROMA_CTL_BUTTON;
typedef struct __LIBAROMA_CTL_BUTTON * _LIBAROMA_CTL_BUTTONP;
struct __LIBAROMA_CTL_BUTTON{
  char * text;
  byte state;
};

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
  libaroma_control_erasebg(ctl,c);
  
  int ix = libaroma_dp(4);
  int iy = libaroma_dp(6);
  int iw = ctl->w-ix*2;
  int ih = ctl->h-iy*2;
  
  LIBAROMA_CANVASP btn_canvas = libaroma_canvas_ex(iw,ih,1);
  libaroma_canvas_setcolor(btn_canvas,0,0);
    
  /* draw button */
  libaroma_gradient(btn_canvas,
    0,0,
    ctl->w-libaroma_dp(8),
    ctl->h-libaroma_dp(12),
    libaroma_wm_get_color(me->state?"highlight":"control"),
    libaroma_wm_get_color(me->state?"highlight_gradient":"control_gradient"),
    libaroma_dp(2),
    0x1111
  );
  int shadow_sz = libaroma_dp(me->state?4:2);
  LIBAROMA_CANVASP shadow=libaroma_blur_ex(btn_canvas,
    shadow_sz,1,RGB(000000)
  );
  libaroma_draw_opacity(
    c, shadow,
    ix-shadow_sz, iy-shadow_sz+libaroma_dp(1), 1, 
    (me->state?0x70:0x40)
  );
  libaroma_draw(c, btn_canvas, ix, iy, 1);
  libaroma_canvas_free(shadow);
  libaroma_canvas_free(btn_canvas);
  
  /* draw text */
  LIBAROMA_TEXT textp = libaroma_text(
    me->text,
    libaroma_wm_get_color(me->state?"highlight_text":"control_text"),
    ctl->w - libaroma_dp(24),
    LIBAROMA_FONT(0,4)|
    LIBAROMA_TEXT_SINGLELINE|
    LIBAROMA_TEXT_CENTER|
    LIBAROMA_TEXT_FIXED_INDENT|
    LIBAROMA_TEXT_FIXED_COLOR|
    LIBAROMA_TEXT_NOHR,
    120
  );
  int y = ctl->h/2 - libaroma_text_height(textp)/2;
  libaroma_text_draw(c,textp,libaroma_dp(12),y);
  libaroma_text_free(textp);
  
} /* End of _libaroma_ctl_button_draw */

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
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          me->state= 1;
          libaroma_control_draw(ctl,1);
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
          me->state=0;
          libaroma_control_draw(ctl,1);
          /* check position */
          int x = msg->x;
          int y = msg->y;
          libaroma_window_calculate_pos(NULL,ctl,&x,&y);
          if ((x>=0)&&(y>=0)&&(x<ctl->w)&&(y<ctl->h)){
            return LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK, 0, ctl->id);
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
      NULL // _libaroma_ctl_button_thread
    );
  
  /* init internal data */
  _LIBAROMA_CTL_BUTTONP me = (_LIBAROMA_CTL_BUTTONP)
      malloc(sizeof(_LIBAROMA_CTL_BUTTON));
  
  /* set internal data */
  me->text = strdup(text);
  me->state= 0; /* rest */
  
  /* attach internal data & return*/
  ctl->internal = (voidp) me;
  return libaroma_window_attach(win,ctl);
} /* End of libaroma_ctl_button */

#endif /* __libaroma_ctl_button_c__ */
