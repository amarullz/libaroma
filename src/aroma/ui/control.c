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
 * Filename    : control.c
 * Description : control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_control_c__
#define __libaroma_control_c__
#include <aroma_internal.h>
#include "ui_internal.h"

/*
 * Function    : libaroma_control_new
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create primitive control
 */
LIBAROMA_CONTROLP libaroma_control_new(
  word id,
  int x, int y, int w, int h,
  int minw, int minh,
  voidp internal,
  LIBAROMA_CONTROL_HANDLERP handler,
  LIBAROMA_WINDOWP win
){
  if (handler==NULL){
    return NULL;
  }
  LIBAROMA_CONTROLP ret = (LIBAROMA_CONTROLP)
    calloc(sizeof(LIBAROMA_CONTROL),1);
  if (!ret){
    ALOGW("window_control_new cannot allocating memory");
    return NULL;
  }
  ret->minw = minw;
  ret->minh = minh;
  ret->rx = x;
  ret->ry = y;
  ret->rw = w;
  ret->rh = h;
  ret->id = id;
  ret->handler = handler;
  ret->internal = internal;
  
  if (win){
    return libaroma_window_attach(win,ret);
  }
  return ret;
} /* End of libaroma_control_new */


byte libaroma_window_measure_size(LIBAROMA_WINDOWP win);
byte _libaroma_window_ready(LIBAROMA_WINDOWP win);
/*
 * Function    : libaroma_control_resize
 * Return Value: byte
 * Descriptions: resize control
 */
byte libaroma_control_resize(
  LIBAROMA_CONTROLP ctl,
  int x, int y, int w, int h
){
  if (!ctl){
    return 0;
  }
  ctl->rx = x;
  ctl->ry = y;
  ctl->rw = w;
  ctl->rh = h;
  if (ctl->window){
    LIBAROMA_WINDOWP win=ctl->window;
    while (win->parent){
      win=win->parent;
    }
    if (libaroma_window_measure_size(win)){
      if (!_libaroma_window_ready(win)){
        return 0;
      }
    }
  }
  libaroma_control_draw(ctl,1);
  return 1;
} /* End of libaroma_control_resize */

/*
 * Function    : libaroma_control_draw_flush
 * Return Value: byte
 * Descriptions: draw control into window
 */
byte libaroma_control_draw_flush(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP canvas,
  byte sync
){
  if (ctl==NULL){
    ALOGW("window_control_draw ctl is null");
    return 0;
  }
  if (ctl->window==NULL){
    ALOGW("window_control_draw ctl doesn't have window");
    return 0;
  }
  LIBAROMA_WINDOWP win = ctl->window;
  if (win->handler!=NULL){
    if (win->handler->control_draw_flush!=NULL){
      return win->handler->control_draw_flush(
        win, ctl, canvas, sync
      );
    }
  }
  if (win->dc==NULL){
    ALOGW("window_control_draw window dc uninitialized");
    return 0;
  }
  if (sync){
    int sx = ctl->x;
    int sy = ctl->y;
    libaroma_window_sync(
      win, sx, sy, ctl->w, ctl->h
    );
  }
  return 1;
} /* End of libaroma_control_draw_flush */

/*
 * Function    : libaroma_control_erasebg
 * Return Value: byte
 * Descriptions: erase control background
 */
byte libaroma_control_erasebg(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP canvas
){
  if (ctl==NULL){
    ALOGW("window_control_erasebg ctl is null");
    return 0;
  }
  if (ctl->window==NULL){
    ALOGW("window_control_erasebg ctl doesn't have window");
    return 0;
  }
  LIBAROMA_WINDOWP win = ctl->window;
  if (win->handler!=NULL){
    if (win->handler->control_erasebg!=NULL){
      return win->handler->control_erasebg(
        win, ctl, canvas
      );
    }
  }
  if (win->bg==NULL){
    ALOGW("window_control_erasebg window bg uninitialized");
    return 0;
  }
  libaroma_draw_ex(
    canvas,
    win->bg,
    0, 0, ctl->x, ctl->y, ctl->w, ctl->h,
    0, 0xff
  );
  return 1;
} /* End of libaroma_control_erasebg */

/*
 * Function    : libaroma_control_isvisible
 * Return Value: byte
 * Descriptions: check if control visible
 */
byte libaroma_control_isvisible(LIBAROMA_CONTROLP ctl){
  if (ctl==NULL){
    ALOGW("window_control_dc ctl is null");
    return 0;
  }
  if (ctl->window==NULL){
    ALOGW("window_control_dc ctl doesn't have window");
    return 0;
  }
  LIBAROMA_WINDOWP win = ctl->window;
  if (win->handler!=NULL){
    if (win->handler->control_isvisible!=NULL){
      return win->handler->control_isvisible(
        win, ctl
      );
    }
  }
  int sx = ctl->x;
  int sy = ctl->y;
  if (sx+ctl->w<0){
    return 0;
  }
  if (sx>win->w){
    return 0;
  }
  if (sy+ctl->h<0){
    return 0;
  }
  if (sy>win->h){
    return 0;
  }
  return 1;
} /* End of libaroma_control_isvisible */

/*
 * Function    : libaroma_control_draw_begin
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: begin control ondraw
 */
LIBAROMA_CANVASP libaroma_control_draw_begin(
  LIBAROMA_CONTROLP ctl){
  if (!libaroma_window_isactive(ctl->window)||
      !libaroma_control_isvisible(ctl)){
    return NULL;
  }
  LIBAROMA_WINDOWP win = ctl->window;
  if (win->handler!=NULL){
    if (win->handler->control_draw_begin!=NULL){
      return win->handler->control_draw_begin(
        win, ctl
      );
    }
  }
  if (win->dc==NULL){
    return NULL;
  }
  LIBAROMA_CANVASP c = libaroma_canvas_area(
    win->dc,
    ctl->x, ctl->y, ctl->w, ctl->h
  );
  return c;
} /* End of libaroma_control_draw_begin */

/*
 * Function    : libaroma_control_draw_end
 * Return Value: void
 * Descriptions: end control ondraw
 */
void libaroma_control_draw_end(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CANVASP c, byte sync
){
  if (sync){
    libaroma_control_draw_flush(ctl, c, sync);
  }
  libaroma_canvas_free(c);
} /* End of libaroma_control_draw_end */

/*
 * Function    : libaroma_control_draw
 * Return Value: byte
 * Descriptions: draw control
 */
byte libaroma_control_draw(
  LIBAROMA_CONTROLP ctl, byte sync
){
  LIBAROMA_CANVASP c = libaroma_control_draw_begin(ctl);
  if (c!=NULL){
    if (ctl->handler->draw!=NULL){
      ctl->handler->draw(ctl,c);
    }
    libaroma_control_draw_end(ctl, c, sync);
    return 1;
  }
  return 0;
} /* End of libaroma_control_draw */

/*
 * Function    : libaroma_control_free
 * Return Value: byte
 * Descriptions: free control
 */
byte libaroma_control_free(
  LIBAROMA_CONTROLP ctl
){
  if (!ctl){
    return 0;
  }
  if (ctl->handler->destroy){
    ctl->handler->destroy(ctl);
  }
  free(ctl);
  return 1;
} /* End of libaroma_control_free */



#endif /* __libaroma_control_c__ */


