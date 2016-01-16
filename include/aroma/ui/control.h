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
 * Filename    : control.h
 * Description : window control manager
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 28/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_control_h__
#define __libaroma_control_h__

typedef struct {
  dword (*message)(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
  void (*draw)(LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
  byte (*focus)(LIBAROMA_CONTROLP, byte);
  void (*destroy)(LIBAROMA_CONTROLP);
  byte (*thread)(LIBAROMA_CONTROLP);
} LIBAROMA_CONTROL_HANDLER, * LIBAROMA_CONTROL_HANDLERP;

/*
 * Structure   : _LIBAROMA_CONTROL
 * Typedef     : LIBAROMA_CONTROL, * LIBAROMA_CONTROLP
 * Descriptions: control structure
 */
struct _LIBAROMA_CONTROL{
  word id;
  voidp internal;
  LIBAROMA_WINDOWP window;
  LIBAROMA_COLORSETP colorset;
  
  /* px measured */
  int x;
  int y;
  int w;
  int h;
  
  /* requested */
  int rx;
  int ry;
  int rw;
  int rh;
  
  /* measured size */
  int left;
  int top;
  int width;
  int height;
  
  /* minimum control size */
  int minw;
  int minh;
  
  /* callbacks */
  LIBAROMA_CONTROL_HANDLERP handler;
};

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
);

/*
 * Function    : libaroma_control_erasebg
 * Return Value: byte
 * Descriptions: erase control background
 */
byte libaroma_control_erasebg(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP canvas
);

/*
 * Function    : libaroma_control_isvisible
 * Return Value: byte
 * Descriptions: check if control visible
 */
byte libaroma_control_isvisible(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_control_draw
 * Return Value: byte
 * Descriptions: draw control
 */
byte libaroma_control_draw(
  LIBAROMA_CONTROLP ctl, byte sync
);

/*
 * Function    : libaroma_control_free
 * Return Value: byte
 * Descriptions: free control
 */
byte libaroma_control_free(
  LIBAROMA_CONTROLP ctl
);

/*
 * Function    : libaroma_control_resize
 * Return Value: byte
 * Descriptions: resize control
 */
byte libaroma_control_resize(
  LIBAROMA_CONTROLP ctl,
  int x, int y, int w, int h
);

#endif /* __libaroma_control_h__ */
