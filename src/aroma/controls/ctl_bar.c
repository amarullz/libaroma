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
 * Filename    : ctl_bar.c
 * Description : bar control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 01/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_bar_c__
#define __libaroma_ctl_bar_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

#define _LIBAROMA_CTL_BAR_CHANGE_TITLE          0x1
#define _LIBAROMA_CTL_BAR_CHANGE_COLOR          0x2
#define _LIBAROMA_CTL_BAR_CHANGE_TOOLS          0x4
#define _LIBAROMA_CTL_BAR_CHANGE_ICON           0x8
#define _LIBAROMA_CTL_BAR_CHANGE_TITLE_TOOLS    0x10

/* HANDLER */
dword _libaroma_ctl_bar_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_bar_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_bar_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_bar_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_bar_handler={
  message:_libaroma_ctl_bar_msg,
  draw:_libaroma_ctl_bar_draw,
  focus:NULL,
  destroy:_libaroma_ctl_bar_destroy,
  thread:_libaroma_ctl_bar_thread
};

/*
 * Structure   : __LIBAROMA_CTL_BAR
 * Typedef     : _LIBAROMA_CTL_BAR, * _LIBAROMA_CTL_BARP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_BAR _LIBAROMA_CTL_BAR;
typedef struct __LIBAROMA_CTL_BAR * _LIBAROMA_CTL_BARP;
struct __LIBAROMA_CTL_BAR{
  char * title;
  char * subtitle;
  word bgcolor;
  word selcolor;
  word itemcolor;
  
  /* positions */
  int text_gap;
  int title_x;
  int title_w;
  int tools_x;
  byte force_draw;
  
  long change_start;
  float change_state;
  byte change_flags;
  
  LIBAROMA_CANVASP tdc;
  LIBAROMA_CANVASP dc;
  LIBAROMA_CANVASP icon;
  byte icon_flags;
  byte icon_ismask;
  word menu_id;
  byte title_touchable;
  
  /* touch state */
  byte touched_switch;
  byte touched_state;
  int touch_bound_x;
  int touch_bound_w;
  
  LIBAROMA_RIPPLE ripple;
  LIBAROMA_CTL_BAR_TOOLSP tools;
  LIBAROMA_MUTEX mutex;
};

/*
 * Function    : libaroma_ctl_bar_tools
 * Return Value: LIBAROMA_CTL_BAR_TOOLP
 * Descriptions: new bar tools
 */
LIBAROMA_CTL_BAR_TOOLSP libaroma_ctl_bar_tools(int count){
  if (count<1){
    return NULL;
  }
  if (count>4){
    ALOGW("bar_tools max count is 4. Set for 4 items...");
    count=4;
  }
  LIBAROMA_CTL_BAR_TOOLSP tools = (LIBAROMA_CTL_BAR_TOOLSP)
    calloc(sizeof(LIBAROMA_CTL_BAR_TOOLS),1);
  if (!tools){
    return NULL;
  }
  tools->n = count;
  tools->tools = (LIBAROMA_CTL_BAR_TOOLP)
    calloc(sizeof(LIBAROMA_CTL_BAR_TOOL), count);
  if (!tools->tools){
    free(tools);
    return NULL;
  }
  return tools;
} /* End of libaroma_ctl_bar_tools */

/*
 * Function    : _libaroma_ctl_bar_tools_item_free
 * Return Value: void
 * Descriptions: free item
 */
void _libaroma_ctl_bar_tools_item_free(LIBAROMA_CTL_BAR_TOOLP tool){
  if (tool){
    if (tool->title){
      free(tool->title);
      tool->title=NULL;
    }
    if (tool->icon){
      if (tool->icon_flags&LIBAROMA_CTL_BAR_TOOL_ICON_FREE){
        libaroma_canvas_free(tool->icon);
      }
      tool->icon=NULL;
    }
    tool->icon_flags=0;
    tool->id=0;
  }
} /* End of _libaroma_ctl_bar_tools_item_free */

/*
 * Function    : libaroma_ctl_bar_tools_free
 * Return Value: byte
 * Descriptions: free tools
 */
byte libaroma_ctl_bar_tools_free(LIBAROMA_CTL_BAR_TOOLSP tools){
  if (!tools){
    return 0;
  }
  if (tools->tools){
    int i;
    for (i=0;i<tools->n;i++){
      _libaroma_ctl_bar_tools_item_free(&tools->tools[i]);
    }
    free(tools->tools);
  }
  free(tools);
  return 1;
} /* End of libaroma_ctl_bar_tools_free */

/*
 * Function    : libaroma_ctl_bar_tools_set
 * Return Value: byte
 * Descriptions: set tool content
 */
byte libaroma_ctl_bar_tools_set(
  LIBAROMA_CTL_BAR_TOOLSP tools,
  int index,
  byte id,
  char * title,
  LIBAROMA_CANVASP icon,
  byte flags
){
  if (!tools){
    return 0;
  }
  if ((index>=tools->n)||(index<0)){
    return 0;
  }
  
  byte prevchecked = (tools->tools[index].icon_flags&
    LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED)?1:0;
  _libaroma_ctl_bar_tools_item_free(&tools->tools[index]);
  tools->tools[index].id=id;
  if (title){
    tools->tools[index].title = strdup(title);
  }
  if (icon){
    if (flags&LIBAROMA_CTL_BAR_TOOL_ICON_SHARED){
      tools->tools[index].icon = icon;
      tools->tools[index].icon_flags = LIBAROMA_CTL_BAR_TOOL_ICON_SHARED;
    }
    else{
      int icosz=libaroma_dp(24);
      tools->tools[index].icon = libaroma_canvas_ex(
        icosz, icosz, 1
      );
      if (tools->tools[index].icon){
        memset(tools->tools[index].icon->alpha,0,tools->tools[index].icon->s);
        libaroma_draw_scale_smooth(
          tools->tools[index].icon, icon,
          0, 0, icosz, icosz,
          0, 0, icon->w, icon->h
        );
        tools->tools[index].icon_flags = LIBAROMA_CTL_BAR_TOOL_ICON_FREE;
      }
      if (flags&LIBAROMA_CTL_BAR_TOOL_ICON_FREE){
        libaroma_canvas_free(icon);
      }
    }
  }
  if (flags&LIBAROMA_CTL_BAR_TOOL_SWITCH){
    tools->tools[index].icon_flags |= LIBAROMA_CTL_BAR_TOOL_SWITCH;
    if (flags&LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED){
      tools->tools[index].icon_flags |= LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED;
      if (!prevchecked){
        tools->tools[index].icon_flags |= LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED;
      }
    }
    else if (prevchecked){
      tools->tools[index].icon_flags |= LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED;
    }
  }
  return 1;
} /* End of libaroma_ctl_bar_tools_set */

/*
 * Function    : _libaroma_ctl_bar_draw_switch
 * Return Value: byte
 * Descriptions: draw switch
 */
byte _libaroma_ctl_bar_draw_switch(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP cv,
  int i, byte erasebg,
  float state, byte draw_handle
){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  if (me->tools){
    if ((i>=0)&&(i<me->tools->n)){
      LIBAROMA_CTL_BAR_TOOLP t = &me->tools->tools[i];
      if (t->icon_flags&LIBAROMA_CTL_BAR_TOOL_SWITCH){
        byte checked=(t->icon_flags&LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED)?1:0;
        int xpos = (i * libaroma_dp(48)) + me->tools_x + libaroma_dp(24);
        int ypos = cv->h>>1;
        
        if (erasebg){
          libaroma_draw_rect(
            cv,
            xpos-libaroma_dp(24), 0,
            libaroma_dp(48), cv->h,
            me->bgcolor, 0xff
          );
        }
        
        byte is_dark = libaroma_color_isdark(me->bgcolor); 
        word mcolor = is_dark?0xffff:0;
        word scolor = is_dark?0:0xffff;
        word h_color_rest   = libaroma_alpha(me->bgcolor,mcolor,
          is_dark?0x30:0x10);
        word h_color_active = me->selcolor;
        word b_color_rest   = libaroma_alpha(me->bgcolor,scolor,160);
        word b_color_active = libaroma_alpha(me->bgcolor,me->selcolor,160);
        word iccl = checked?h_color_rest:h_color_active;
        word bc0=checked?b_color_rest:b_color_active;
        word bc1=checked?b_color_active:b_color_rest;
        word hc0=checked?h_color_rest:h_color_active;
        word hc1=checked?h_color_active:h_color_rest;
        word bc = libaroma_alpha(bc0,bc1,state*0xff);
        word hc = libaroma_alpha(hc0,hc1,state*0xff);
        int b_width       = libaroma_dp(34);
        int b_height      = libaroma_dp(14);
        float selrelstate = checked?state:1-state;
        int base_x        = xpos-(b_width>>1);
        int h_sz          = libaroma_dp(20);
        int base_w        = b_width - h_sz;
        int h_draw_x      = base_x + round(base_w*selrelstate);
        int h_draw_y      = ypos-(h_sz>>1);
        int rsz = libaroma_dp(1);
        
        /* tracker */
        libaroma_gradient_ex1(cv,
          xpos-(b_width>>1), ypos-(b_height>>1),
          b_width, b_height, bc, bc, (b_height>>1),0x1111,
          0xff,0xff, 0
        );
        
        if (draw_handle){
          int vhsz=h_sz+libaroma_dp(16);
          libaroma_gradient_ex1(cv,
            h_draw_x-libaroma_dp(8),
            h_draw_y-libaroma_dp(8),
            vhsz, 
            vhsz, 
            me->selcolor,me->selcolor,
            (vhsz>>1),0x1111, 
            (0x35*draw_handle)>>8,
            (0x35*draw_handle)>>8,
            0
          );
        }
        
        /* shadow */
        LIBAROMA_CANVASP bmask = libaroma_canvas_ex(h_sz,h_sz,1);
        libaroma_canvas_setcolor(bmask,0,0);
        libaroma_gradient(bmask,0,0,h_sz,h_sz,0,0,h_sz>>1,0x1111);
        LIBAROMA_CANVASP scv = libaroma_blur_ex(bmask,rsz,1,0);
        libaroma_canvas_free(bmask);
        libaroma_draw_opacity(cv,scv,h_draw_x-rsz,h_draw_y,3,0x60);
        libaroma_canvas_free(scv);
        
        /* handle */
        libaroma_gradient_ex1(cv,
          h_draw_x, h_draw_y, h_sz, h_sz, hc,hc,
          (h_sz>>1),0x1111, 0xff,0xff, 0
        );
        
        /* overlay icon */
        if (t->icon){
          int ico_sz = libaroma_dp(16);
          LIBAROMA_CANVASP ic = libaroma_canvas_ex(ico_sz,ico_sz,1);
          if (ic){
            memset(ic->alpha,0,ic->s);
            libaroma_draw_scale_smooth(
              ic, me->tools->tools[i].icon,
              0, 0, ico_sz, ico_sz,
              0, 0,
              me->tools->tools[i].icon->w, 
              me->tools->tools[i].icon->h
            );
            libaroma_draw_mask(
              cv, ic, h_draw_x+libaroma_dp(2), h_draw_y+libaroma_dp(2),
              iccl, 0xff
            );
            libaroma_canvas_free(ic);
          }
        }
        return 1;
      }
    }
  }
  return 0;
} /* End of _libaroma_ctl_bar_draw_switch */

/*
 * Function    : _libaroma_ctl_bar_internal_draw
 * Return Value: void
 * Descriptions: internal button draw
 */
void _libaroma_ctl_bar_internal_draw(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_BARP me = (_LIBAROMA_CTL_BARP) ctl->internal;
  libaroma_mutex_lock(me->mutex);
  
  int i;
  me->change_state=0;
  me->change_start=0;
  
  byte isactive=0;
  if (ctl->window){
    if (ctl->window->active){
      isactive=1;
    }
  }
  if ((isactive)&&(me->dc)){
    me->change_start=libaroma_tick();
  }
  
  if (me->tdc){
    libaroma_canvas_free(me->tdc);
    me->tdc=NULL;
  }
  
  me->tdc = libaroma_canvas(
    ctl->w, ctl->h
  );
  me->itemcolor = libaroma_color_isdark(me->bgcolor)?0xffff:0;
  libaroma_canvas_setcolor(me->tdc, me->bgcolor, 0xff);
  
  me->title_x = libaroma_dp(16);
  if ((me->icon)||(me->icon_flags)){
    if (me->icon){
      /* draw main icon */
      if (me->icon_ismask){
        libaroma_draw_mask(
          me->tdc, me->icon,
          libaroma_dp(16), libaroma_dp(16),
          me->itemcolor, 0xff
        );
      }
      else{
        libaroma_draw(
          me->tdc,
          me->icon,
          libaroma_dp(16), libaroma_dp(16),
          1
        );
      }
    }
    else{
      /* drawer or arrow */
      if ((me->icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW)||
        (me->icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER_TO_ARROW)){
        libaroma_art_arrowdrawer(
          me->tdc,1,0,
          libaroma_dp(16),
          libaroma_dp(16),
          libaroma_dp(24),
          me->itemcolor,
          0xff, 0, 0.5
        );
      }
      else if ((me->icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER)||
        (me->icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW_TO_DRAWER)){
        libaroma_art_arrowdrawer(
          me->tdc,1,1,
          libaroma_dp(16),
          libaroma_dp(16),
          libaroma_dp(24),
          me->itemcolor,
          0xff, 0, 0.5
        );
      }
    }
    me->title_x = libaroma_dp(me->text_gap);
  }
  
  int tools_w=0;
  int tools_r=libaroma_dp(4);
  if (me->menu_id){
    tools_r+=libaroma_dp(37);
    LIBAROMA_CANVASP menu_ic = libaroma_canvas_area(
      me->tdc, (ctl->w-tools_r)+libaroma_dp(13), libaroma_dp(16),
      libaroma_dp(12), libaroma_dp(24)
    );
    if (menu_ic){
      int bsz = libaroma_dp(4);
      libaroma_gradient(
        menu_ic,
        bsz,bsz,
        bsz,bsz,
        me->itemcolor,me->itemcolor,
        bsz,0x1111
      );
      libaroma_gradient(
        menu_ic,
        bsz,libaroma_dp(10),
        bsz,bsz,
        me->itemcolor,me->itemcolor,
        bsz,0x1111
      );
      libaroma_gradient(
        menu_ic,
        bsz,libaroma_dp(16),
        bsz,bsz,
        me->itemcolor,me->itemcolor,
        bsz,0x1111
      );
      libaroma_canvas_free(menu_ic);
    }
  }
  if (me->tools!=NULL){
    tools_w = me->tools->n * libaroma_dp(48);
  }
  
  /* title width */
  me->title_w = ctl->w - (me->title_x+tools_w+tools_r+libaroma_dp(2));
  me->tools_x = ctl->w - (tools_r+tools_w);
  
  /* draw tools */
  if (me->tools!=NULL){
    int icosz = libaroma_dp(24);
    for (i=0;i<me->tools->n;i++){
      int x = (i * libaroma_dp(48)) + me->tools_x + libaroma_dp(13);
      if (me->tools->tools[i].icon_flags&LIBAROMA_CTL_BAR_TOOL_SWITCH){
        if (!(me->tools->tools[i].icon_flags&
            LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED)){
          _libaroma_ctl_bar_draw_switch(
            ctl,me->tdc,i,0,1,0
          );
        }
      }
      else if (me->tools->tools[i].icon){
        LIBAROMA_CANVASP ic = me->tools->tools[i].icon;
        byte is_new=0;
        if (me->tools->tools[i].icon_flags&LIBAROMA_CTL_BAR_TOOL_ICON_SHARED){
          ic = libaroma_canvas_ex(icosz,icosz,1);
          if (ic){
            is_new=1;
            memset(ic->alpha,0,ic->s);
            libaroma_draw_scale_smooth(
              ic, me->tools->tools[i].icon,
              0, 0, icosz, icosz,
              0, 0,
              me->tools->tools[i].icon->w, 
              me->tools->tools[i].icon->h
            );
          }
        }
        if (ic){
          if(me->icon_ismask){
            libaroma_draw_mask(
              me->tdc, ic,
              x, libaroma_dp(16),
              me->itemcolor, 0xff
            );
          }
          else{
            libaroma_draw(
              me->tdc, ic, x, libaroma_dp(16), 1
            );
          }
        }
        if (is_new){
          if (ic){
            libaroma_canvas_free(ic);
          }
        }
      }
    }
  }
  
  LIBAROMA_TEXT textp = NULL;
  LIBAROMA_TEXT textps= NULL;
  /* prepare title */
  if (me->title){
     textp = libaroma_text(
      me->title,
      me->itemcolor,
      me->title_w,
      LIBAROMA_FONT(0,6)|
      LIBAROMA_TEXT_SINGLELINE|
      LIBAROMA_TEXT_LEFT|
      LIBAROMA_TEXT_BOLD|
      LIBAROMA_TEXT_FIXED_INDENT|
      LIBAROMA_TEXT_FIXED_COLOR|
      LIBAROMA_TEXT_NOHR,
      100
    );
  }
  /* prepare subtitle */
  if (me->subtitle){
     textps = libaroma_text(
      me->subtitle,
      me->itemcolor,
      me->title_w,
      LIBAROMA_FONT(0,2)|
      LIBAROMA_TEXT_SINGLELINE|
      LIBAROMA_TEXT_LEFT|
      LIBAROMA_TEXT_FIXED_INDENT|
      LIBAROMA_TEXT_FIXED_COLOR|
      LIBAROMA_TEXT_NOHR,
      100
    );
  }
  
  int textp_h = 0;
  int texts_h = 0;
  if (textp){
    textp_h = libaroma_text_height(textp);
    texts_h+= textp_h;
  }
  if (textps){
    texts_h+= libaroma_text_height(textps);
  }
  int start_text_y = (ctl->h>>1)-((texts_h>>1)+libaroma_dp(2));
  
  if (textp){
    libaroma_text_draw_color(
      me->tdc,textp,
      me->title_x,
      start_text_y,
      me->itemcolor
    );
    libaroma_text_free(textp);
  }
  if (textps){
    libaroma_text_draw_color(
      me->tdc,textps,
      me->title_x,
      start_text_y+textp_h,
      me->itemcolor
    );
    libaroma_text_free(textps);
  }
  
  
  if ((!isactive)||(me->dc==NULL)){
    if (me->dc!=NULL){
      libaroma_canvas_free(me->dc);
    }
    me->dc=me->tdc;
    me->tdc=NULL;
  }
  me->force_draw=1;
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_bar_internal_draw */

static void * _libaroma_ctl_bar_req_internal_draw_thread(void * ctl){
  _libaroma_ctl_bar_internal_draw((LIBAROMA_CONTROLP) ctl);
  return NULL;
}
/*
 * Function    : libaroma_ctl_bar_update
 * Return Value: byte
 * Descriptions: Update bar drawing
 */
byte libaroma_ctl_bar_update(LIBAROMA_CONTROLP ctl){
  if (ctl->window){
    if (ctl->window->active){
      LIBAROMA_THREAD pp;
      libaroma_thread_create(
        &pp,_libaroma_ctl_bar_req_internal_draw_thread,(void *) ctl);
      libaroma_thread_detach(pp);
    }
  }
  return 1;
} /* End of libaroma_ctl_bar_update */

/*
 * Function    : _libaroma_ctl_bar_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_bar_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 
  );
  libaroma_mutex_lock(me->mutex);
  me->force_draw=0;
  if (me->dc==NULL){
    libaroma_mutex_unlock(me->mutex);
    _libaroma_ctl_bar_internal_draw(ctl);
    libaroma_mutex_lock(me->mutex);
    if (me->dc==NULL){
      libaroma_mutex_unlock(me->mutex);
      return;
    }
  }
  if (me->dc){
    
    if ((me->change_state<1)&&(me->change_state>0)&&(me->tdc)){
      float xstate = libaroma_cubic_bezier_swiftout(me->change_state);
      libaroma_draw(c, me->dc, 0, 0, 0);
      int h = (c->h * xstate);
      int y = (c->h>>1) - (h>>1);
        
      if (me->change_flags&_LIBAROMA_CTL_BAR_CHANGE_COLOR){
        /* find switch */
        if (me->tools!=NULL){
          int i;
          for (i=0;i<me->tools->n;i++){
            if (me->tools->tools[i].icon_flags&LIBAROMA_CTL_BAR_TOOL_SWITCH){
              if (me->tools->tools[i].icon_flags&
                LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED){
                _libaroma_ctl_bar_draw_switch(
                  ctl,me->tdc,i, 1, xstate, 0
                );
              }
            }
          }
        }
        /* whole */
        libaroma_draw_opacity(
          c, me->tdc, 0, 0, 0, 0xff * xstate
        );
      }
      else{
        if (me->change_flags&_LIBAROMA_CTL_BAR_CHANGE_TITLE){
          libaroma_draw_scale_nearest(
            c, me->tdc,
            me->title_x, y, me->title_w, h,
            me->title_x, 0, me->title_w, me->tdc->h
          );
        }
        else if (me->change_flags&_LIBAROMA_CTL_BAR_CHANGE_TITLE_TOOLS){
          libaroma_draw_ex(
            c, me->tdc,
            me->title_x, (c->h>>1)-(h>>1),
            me->title_x, (c->h>>1)-(h>>1),
            me->title_w, h,
            0, 0xff
          );
        }
        if (me->change_flags&_LIBAROMA_CTL_BAR_CHANGE_TOOLS){
          int tools_w = c->w - me->tools_x;
          libaroma_draw_scale_nearest(
            c, me->tdc,
            me->tools_x, y, tools_w, h,
            me->tools_x, 0, tools_w, me->tdc->h
          );
        }
        /* find switch */
        if (me->tools!=NULL){
          int i;
          for (i=0;i<me->tools->n;i++){
            if (me->tools->tools[i].icon_flags&LIBAROMA_CTL_BAR_TOOL_SWITCH){
              if (me->tools->tools[i].icon_flags&
                LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED){
                _libaroma_ctl_bar_draw_switch(
                  ctl, c,i, 1, xstate, 0
                );
              }
            }
          }
        }
        if (me->change_flags&_LIBAROMA_CTL_BAR_CHANGE_ICON){
          if (me->icon){
            int icon_w = libaroma_dp(me->text_gap);
            libaroma_draw_scale_nearest(
              c, me->tdc,
              0, y, icon_w, h,
              0, 0, icon_w, me->tdc->h
            );
          }
        }
      }
      if (me->change_flags&_LIBAROMA_CTL_BAR_CHANGE_ICON){
        if (me->icon){
        }
        else if (me->icon_flags){
          if (me->icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER_TO_ARROW){
            libaroma_draw_rect(
              c,
              libaroma_dp(16), libaroma_dp(16),
              libaroma_dp(24),libaroma_dp(24),
              c->data[0], 0xff
            );
            libaroma_art_arrowdrawer(
              c,xstate,0,
              libaroma_dp(16),
              libaroma_dp(16),
              libaroma_dp(24),
              me->itemcolor,
              0xff, 0, 0.5
            );
          }
          else if (me->icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW_TO_DRAWER){
            libaroma_draw_rect(
              c,
              libaroma_dp(16), libaroma_dp(16),
              libaroma_dp(24),libaroma_dp(24),
              c->data[0], 0xff
            );
            libaroma_art_arrowdrawer(
              c,xstate,1,
              libaroma_dp(16),
              libaroma_dp(16),
              libaroma_dp(24),
              me->itemcolor,
              0xff, 0, 0.5
            );
          }
          else {
            int icon_w = libaroma_dp(me->text_gap);
            LIBAROMA_CANVASP crc = libaroma_canvas(
              icon_w, c->h);
            if (crc){
              libaroma_canvas_setcolor(crc,c->data[0],0);
              if (me->icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER){
                libaroma_art_arrowdrawer(
                  crc,1,1,libaroma_dp(16),libaroma_dp(16),libaroma_dp(24),
                  me->itemcolor,
                  0xff, 0, 0.5
                );
              }
              else if (me->icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW){
                libaroma_art_arrowdrawer(
                  crc,1,0,libaroma_dp(16),libaroma_dp(16),libaroma_dp(24),
                  me->itemcolor,
                  0xff, 0, 0.5
                );
              }
              libaroma_draw_scale_nearest(
                c, crc,
                0, y, icon_w, h,
                0, 0, icon_w, crc->h
              );
              libaroma_canvas_free(crc);
            }
          }
        }
      }
    }
    else {
      if (me->change_state==1){
        if (me->tdc){
          libaroma_canvas_free(me->dc);
          me->dc=me->tdc;
          me->tdc=NULL;
          
          /* drawer or arrow */
          if ((!me->icon)&&(me->icon_flags)) {
            if ((me->icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW)||
              (me->icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER_TO_ARROW)){
              libaroma_art_arrowdrawer(
                me->dc,1,0,
                libaroma_dp(16),
                libaroma_dp(16),
                libaroma_dp(24),
                me->itemcolor,
                0xff, 0, 0.5
              );
            }
            else if ((me->icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER)||
              (me->icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW_TO_DRAWER)){
              libaroma_art_arrowdrawer(
                me->dc,1,1,
                libaroma_dp(16),
                libaroma_dp(16),
                libaroma_dp(24),
                me->itemcolor,
                0xff, 0, 0.5
              );
            }
          }
          
          /* find switch */
          if (me->tools!=NULL){
            int i;
            for (i=0;i<me->tools->n;i++){
              if (me->tools->tools[i].icon_flags&LIBAROMA_CTL_BAR_TOOL_SWITCH){
                _libaroma_ctl_bar_draw_switch(
                  ctl, me->dc,i, 1, 1, 0
                );
                /* remove changed flags */
                me->tools->tools[i].icon_flags
                  &=~LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED;
              }
            }
          }
        }
        me->change_start = 0;
        me->change_state = 0;
        me->change_flags = 0;
      }
      libaroma_draw(c, me->dc, 0, 0, 0);
    }
    
    if (me->touched_state){
      if (me->touched_switch){
        if ((libaroma_ripple_current(&me->ripple,touch_state)>0)&&
            (libaroma_ripple_current(&me->ripple,release_state)<1)) {
          int switch_id = me->touched_state-10;
          if (switch_id>=0){
            if (me->tools){
              if (switch_id<me->tools->n){
                float outstate = 1.0-libaroma_cubic_bezier_swiftout(
                  MIN(MAX(0,(
                    libaroma_ripple_current(&me->ripple,release_state)-0.5)
                    *2),1)
                );
                if (me->touched_switch>=2){
                  float xstate = libaroma_cubic_bezier_swiftout(
                    MIN(libaroma_ripple_current(&me->ripple,release_state)*2,1)
                  );
                  _libaroma_ctl_bar_draw_switch(
                    ctl, c, switch_id, 1, xstate, 0xff * outstate
                  );
                  if (me->touched_switch!=3){
                    me->touched_switch=3;
                    _libaroma_ctl_bar_draw_switch(
                      ctl, me->dc,switch_id, 1, 1, 0
                    );
                  }
                }
                else{
                  _libaroma_ctl_bar_draw_switch(
                    ctl, c, switch_id, 1, 1, 0xff * outstate
                  );
                }
              }
            }
          }
        }
      }
      else{
        int ripple_i = 0;
        int ripple_p = 0;
        while(libaroma_ripple_loop(&me->ripple,&ripple_i,&ripple_p)){
          int x=me->touch_bound_x;
          int y=0;
          int size=0;
          byte push_opacity=0;
          byte ripple_opacity=0x80;
          int bound_w = me->touch_bound_w+libaroma_dp(16);
          if (libaroma_ripple_calculation(
            &me->ripple, bound_w, ctl->h, &push_opacity, &ripple_opacity,
            &x, &y, &size, ripple_p
          )){
            x-=libaroma_dp(8);
            int center_x = me->touch_bound_x+(me->touch_bound_w>>1);
            int center_y = c->h>>1;
            int copy_l = center_x - bound_w;
            int copy_r = center_x + bound_w;
            if (copy_l<0){
              copy_l = 0;
            }
            if (copy_r>c->w){
              copy_r = c->w;
            }
            libaroma_draw_circle(
              c, me->selcolor, center_x, center_y, bound_w, push_opacity
            );
            int copy_w = copy_r - copy_l;
            LIBAROMA_CANVASP rdc = NULL;
            if (copy_w>0){
              rdc = libaroma_canvas(copy_w,c->h);
              if (rdc){
                libaroma_draw_ex(rdc,c,0,0,copy_l,0,rdc->w, rdc->h, 0, 0xff);
                libaroma_draw_circle(
                  rdc, me->selcolor, center_x-copy_l, center_y,
                  bound_w, ripple_opacity
                );
              }
            }
            if (rdc){
              libaroma_draw_mask_circle(c, rdc, 
                me->touch_bound_x+x, y, 
                me->touch_bound_x+x-copy_l, y, size, 0xff);
              libaroma_canvas_free(rdc);
            }
          }
        }
      }
    }
  }
  else{
    libaroma_control_erasebg(ctl,c);
  }
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_bar_draw */

/*
 * Function    : _libaroma_ctl_bar_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_bar_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  byte is_draw = me->force_draw;
  
  /* changed */
  if (me->change_start>0){
    float nowstate=libaroma_control_state(me->change_start, 200);
    if (nowstate>=1){
      is_draw = 1;
      me->change_state=1;
    }
    else if (me->change_state!=nowstate){
      is_draw = 1;
      me->change_state=nowstate;
    }
  }
  
  byte res = libaroma_ripple_thread(&me->ripple, 0);
  if (res){
    if (res&LIBAROMA_RIPPLE_REDRAW){
      is_draw = 1;
    }
    if (res&LIBAROMA_RIPPLE_HOLDED){
      /* send window message */
      if (me->touched_state<10){
        libaroma_window_post_command(
          LIBAROMA_CMD_SET(LIBAROMA_CMD_HOLD,me->touched_state,ctl->id)
        );
      }
      else{
        int tools_id = me->touched_state-10;
        byte sstate=(me->tools->tools[tools_id].icon_flags&
              LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED)?1:0;
        libaroma_window_post_command_ex(
          LIBAROMA_CMD_SET(LIBAROMA_CMD_HOLD,me->touched_state,ctl->id),
          sstate, me->tools->tools[tools_id].id, tools_id, NULL
        );
      }
    }
    if (res&LIBAROMA_RIPPLE_RELEASED){
      me->touched_state = 0;
      me->touch_bound_x = 0;
      me->touch_bound_w = 0;
      me->touched_switch = 0;
    }
  }
  return is_draw;
} /* End of _libaroma_ctl_bar_thread */

/*
 * Function    : _libaroma_ctl_bar_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_bar_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 
  );
  libaroma_mutex_lock(me->mutex);
  if (me->dc!=NULL){
    libaroma_canvas_free(me->dc);
    me->dc=NULL;
  }
  if (me->tdc!=NULL){
    libaroma_canvas_free(me->tdc);
    me->tdc=NULL;
  }
  if (me->title!=NULL){
    free(me->title);
  }
  if (me->subtitle!=NULL){
    free(me->subtitle);
  }
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  free(me);
} /* End of _libaroma_ctl_bar_destroy */

/*
 * Function    : _libaroma_ctl_bar_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_bar_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
    case LIBAROMA_MSG_WIN_INACTIVE:
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        libaroma_mutex_lock(me->mutex);
        me->force_draw=1;
        libaroma_mutex_unlock(me->mutex);
      }
      break;
    case LIBAROMA_MSG_TOUCH:
      {
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          me->touched_state = 0;
          me->touch_bound_x = 0;
          me->touch_bound_w = 0;
          me->touched_switch = 0;
          if ((x<me->title_x)&&(x>=0)){
            if ((me->icon)||(me->icon_flags)){
              /* main item touched */
              me->touched_state = 1;
              me->touch_bound_x = 0-libaroma_dp(8);
              me->touch_bound_w = me->title_x;
            }
          }
          else if ((x>=me->title_x)&&(x<me->tools_x)){
            /* text touched */
            if (me->title_touchable){
              me->touched_state = 2;
              me->touch_bound_x = me->title_x-libaroma_dp(16);
              me->touch_bound_w = me->title_w+libaroma_dp(32);
            }
          }
          else if ((x>=me->tools_x)&&(x<ctl->w)) {
            int tools_width = 0;
            if (me->tools){
              tools_width = me->tools->n * libaroma_dp(48);
            }
            if (x<me->tools_x+tools_width){
              /* tools touched */
              int tool_x = x-me->tools_x;
              int tool_id = floor(tool_x / libaroma_dp(48));
              if (me->tools){
                if ((tool_id>=0)&&(tool_id<me->tools->n)){
                  me->touched_state = 10 + tool_id;
                  me->touch_bound_x = me->tools_x+(tool_id*libaroma_dp(48));
                  me->touch_bound_w = libaroma_dp(48);
                  if (me->tools->tools[tool_id].icon_flags&
                    LIBAROMA_CTL_BAR_TOOL_SWITCH){
                    me->touched_switch=1;
                  }
                }
              }
            }
            else if (me->menu_id){
              /* menu touched */
              me->touched_state = 3;
              me->touch_bound_x = me->tools_x + tools_width;
              me->touch_bound_w = libaroma_dp(48);
            }
          }
          if (me->touched_state){
            libaroma_ripple_down(&me->ripple,x,y);
          }
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
          byte res = libaroma_ripple_up(&me->ripple,0);
          if ((res&LIBAROMA_RIPPLE_TOUCHED)&&
              (!(res&LIBAROMA_RIPPLE_HOLDED))){
            if (me->touched_switch){
              int switch_id = me->touched_state-10;
              if (switch_id>=0){
                if (me->tools){
                  if (switch_id<me->tools->n){
                    if (me->tools->tools[switch_id].icon_flags&
                    LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED){
                      me->tools->tools[switch_id].icon_flags&=
                        ~LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED;
                      me->touched_switch=2;
                    }
                    else{
                      me->tools->tools[switch_id].icon_flags|=
                        LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED;
                      me->touched_switch=2;
                    }
                  }
                }
              }
            }
            
            /* send window message */
            if (me->touched_state<10){
              libaroma_window_post_command(
                LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK,me->touched_state,ctl->id)
              );
            }
            else{
              int tools_id = me->touched_state-10;
              byte sstate=(me->tools->tools[tools_id].icon_flags&
                    LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED)?1:0;
              libaroma_window_post_command_ex(
                LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK,me->touched_state,ctl->id),
                sstate, me->tools->tools[tools_id].id, tools_id, NULL
              );
            }
          }
        }
        else if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
          if (libaroma_ripple_istouched(&me->ripple)){
            if (!((x>=0)&&(x>=me->touch_bound_x)&&(y>=0)&&(x<ctl->w)&&
              (x<me->touch_bound_x+me->touch_bound_w)&&(y<ctl->h))) {
              libaroma_ripple_cancel(&me->ripple);
            }
            else{
              libaroma_ripple_move(&me->ripple, x, y);
            }
          }
        }
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_bar_msg */

/*
 * Function    : libaroma_ctl_bar
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_bar(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    char * title,
    word bgcolor,
    word selcolor
){
  /* init internal data */
  _LIBAROMA_CTL_BARP me = (_LIBAROMA_CTL_BARP)
      calloc(sizeof(_LIBAROMA_CTL_BAR),1);
  if (!me){
    ALOGW("libaroma_ctl_bar alloc button memory failed");
    return NULL;
  }
  
  /* set internal data */
  libaroma_mutex_init(me->mutex);
  if (title){
    me->title = strdup(title);
  }
  me->text_gap = 60;
  me->bgcolor = bgcolor;
  me->selcolor = selcolor;
  
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(56), /* min size */
      (voidp) me,
      &_libaroma_ctl_bar_handler,
      win
    );
  if (!ctl){
    if (me->title!=NULL){
      free(me->title);
    }
    free(me);
    return NULL;
  }
  return ctl;
} /* End of libaroma_ctl_bar */

/*
 * Function    : libaroma_ctl_bar_set_title
 * Return Value: byte
 * Descriptions: set title
 */
byte libaroma_ctl_bar_set_title(LIBAROMA_CONTROLP ctl,
  char * title, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  if (me->title!=NULL){
    free(me->title);
    me->title=NULL;
  }
  if (title){
    me->title=strdup(title);
  }
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TITLE;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_title */

/*
 * Function    : libaroma_ctl_bar_set_textgap
 * Return Value: byte
 * Descriptions: set text gap
 */
byte libaroma_ctl_bar_set_textgap(LIBAROMA_CONTROLP ctl,
  byte wide, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  if (wide){
    me->text_gap = 72;
  }
  else{
    me->text_gap = 60;
  }
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_COLOR;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_textgap */


/*
 * Function    : libaroma_ctl_bar_set_subtitle
 * Return Value: byte
 * Descriptions: set subtitle
 */
byte libaroma_ctl_bar_set_subtitle(LIBAROMA_CONTROLP ctl,
  char * subtitle, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  if (me->subtitle!=NULL){
    free(me->subtitle);
    me->subtitle=NULL;
  }
  if (subtitle){
    me->subtitle=strdup(subtitle);
  }
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TITLE;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_subtitle */

/*
 * Function    : libaroma_ctl_bar_set_color
 * Return Value: byte
 * Descriptions: set color
 */
byte libaroma_ctl_bar_set_color(LIBAROMA_CONTROLP ctl,
  word bgcolor, word selcolor, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  me->bgcolor = bgcolor;
  me->selcolor = selcolor;
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_COLOR;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_color */

/*
 * Function    : libaroma_ctl_bar_set_menuid
 * Return Value: byte
 * Descriptions: set menu message id, set 0 to disable menu
 */
byte libaroma_ctl_bar_set_menuid(LIBAROMA_CONTROLP ctl,
  word menu_id, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  me->menu_id = menu_id;
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TOOLS;
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TITLE_TOOLS;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_menuid */

/*
 * Function    : libaroma_ctl_bar_set_tools
 * Return Value: byte
 * Descriptions: set tools
 */
byte libaroma_ctl_bar_set_tools(LIBAROMA_CONTROLP ctl,
  LIBAROMA_CTL_BAR_TOOLSP tools, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  int prev_tools_n = 0;
  if (me->tools){
    prev_tools_n=me->tools->n;
  }
  me->tools=tools;
  int new_tools_n = 0;
  if (me->tools){
    new_tools_n=me->tools->n;
  }
  me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TOOLS;
  if (new_tools_n!=prev_tools_n){
    me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TITLE_TOOLS;
  }
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_tools */

/*
 * Function    : libaroma_ctl_bar_set_icon_mask
 * Return Value: byte
 * Descriptions: set tools
 */
byte libaroma_ctl_bar_set_icon_mask(LIBAROMA_CONTROLP ctl,
  byte ismask, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  me->icon_ismask=ismask;
  me->change_flags |=
    _LIBAROMA_CTL_BAR_CHANGE_TOOLS|_LIBAROMA_CTL_BAR_CHANGE_ICON;
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_icon_mask */

/*
 * Function    : libaroma_ctl_bar_set_icon_mask
 * Return Value: byte
 * Descriptions: set tools
 */
byte libaroma_ctl_bar_set_touchable_title(LIBAROMA_CONTROLP ctl,
  byte touchable){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  me->title_touchable=(touchable?1:0);
  libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of libaroma_ctl_bar_set_icon_mask */

/*
 * Function    : libaroma_ctl_bar_set_icon
 * Return Value: byte
 * Descriptions: set main icon
 */
byte libaroma_ctl_bar_set_icon(LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP icon, byte free, byte type, byte update_now){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_bar_handler, _LIBAROMA_CTL_BARP, 0
  );
  libaroma_mutex_lock(me->mutex);
  byte fold_icon=1;
  if (me->icon){
    libaroma_canvas_free(me->icon);
    fold_icon=0;
  }
  if (me->icon_flags){
    fold_icon=0;
  }
  me->icon=NULL;
  byte prev_icon_flags = me->icon_flags;
  me->icon_flags=0;
  
  if (icon){
    int icosz=libaroma_dp(24);
    me->icon = libaroma_canvas_ex(
      icosz, icosz, 1
    );
    if (me->icon){
      memset(me->icon->alpha,0,me->icon->s);
      libaroma_draw_scale_smooth(
        me->icon, icon,
        0, 0, icosz, icosz,
        0, 0, icon->w, icon->h
      );
      me->icon_flags = 0;
    }
    if (free){
      libaroma_canvas_free(icon);
    }
  }
  else if (type){
    if ((type==LIBAROMA_CTL_BAR_ICON_DRAWER)&&
        ((prev_icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW)||
         (prev_icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER_TO_ARROW))){
      type = LIBAROMA_CTL_BAR_ICON_ARROW_TO_DRAWER;
    }
    else if ((type==LIBAROMA_CTL_BAR_ICON_ARROW)&&
        ((prev_icon_flags==LIBAROMA_CTL_BAR_ICON_DRAWER)||
         (prev_icon_flags==LIBAROMA_CTL_BAR_ICON_ARROW_TO_DRAWER))){
      type = LIBAROMA_CTL_BAR_ICON_DRAWER_TO_ARROW;
    }
    me->icon_flags = type;
  }
  if ((me->icon)||(me->icon_flags)){
    me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_ICON;
    if (fold_icon){
      me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TITLE_TOOLS;
    }
  }
  else{
    me->change_flags |= _LIBAROMA_CTL_BAR_CHANGE_TITLE_TOOLS;
  }
  libaroma_mutex_unlock(me->mutex);
  if (update_now){
    libaroma_ctl_bar_update(ctl);
  }
  return 1;
} /* End of libaroma_ctl_bar_set_icon */

#endif /* __libaroma_ctl_bar_c__ */
