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
 * Filename    : ui_internal.h
 * Description : ui internal header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 07/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ui_internal_h__
#define __libaroma_ui_internal_h__

/* control check signature */
#define _LIBAROMA_CTL_CHECK(HANDLER, TYPE, RET) \
    if (ctl->handler!=&HANDLER){ return RET; } \
    TYPE me = (TYPE) ctl->internal

/*
 * Function    : libaroma_window_measure
 * Return Value: byte
 * Descriptions: measure control size
 */
byte libaroma_window_measure(LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_window_measure_calculate
 * Return Value: int
 * Descriptions: calculate measurement
 */
int libaroma_window_measure_calculate(
    int cv, int pos, int max, int is_size, int x);
    
/*
 * Function    : libaroma_window_attach
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: attach control into window
 */
LIBAROMA_CONTROLP libaroma_window_attach(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl);

/*
 * Function    : _libaroma_window_is_inside
 * Return Value: byte
 * Descriptions: check position coordinate
 */
byte _libaroma_window_is_inside(LIBAROMA_CONTROLP ctl, int x, int y);

/*
 * Function    : libaroma_window_process_event
 * Return Value: dword
 * Descriptions: process message
 */
dword libaroma_window_process_event(LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg);

/*
 * Function    : libaroma_window_sync
 * Return Value: byte
 * Descriptions: sync window canvas
 */
byte libaroma_window_sync(LIBAROMA_WINDOWP win, int x, int y, int w, int h);

/*
 * Function    : libaroma_window_invalidate
 * Return Value: byte
 * Descriptions: invalidate window drawing
 */
byte libaroma_window_invalidate(LIBAROMA_WINDOWP win, byte sync);

/*
 * Function    : libaroma_window_calculate_pos
 * Return Value: void
 * Descriptions: calculate screen position to window/control position
 */
void libaroma_window_calculate_pos(
  LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl,
  int * x, int * y
);

/*
 * Function    : libaroma_window_calculate_pos_abs
 * Return Value: void
 * Descriptions: calculate absolute screen position to top window position
 */
void libaroma_window_calculate_pos_abs(
  LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl,
  int * x, int * y
);

/*
 * Function    : libaroma_control_draw_flush
 * Return Value: byte
 * Descriptions: draw control into window
 */
byte libaroma_control_draw_flush(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP canvas,
  byte sync
);

/*
 * Function    : libaroma_control_draw_begin
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: begin control ondraw
 */
LIBAROMA_CANVASP libaroma_control_draw_begin(
  LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_control_draw_end
 * Return Value: void
 * Descriptions: end control ondraw
 */
void libaroma_control_draw_end(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CANVASP c, byte sync
);

#define libaroma_control_state(s,d) libaroma_duration_state(s,d)

#endif /* __libaroma_ui_internal_h__ */
