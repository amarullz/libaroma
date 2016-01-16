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
 * Filename    : ctl_button.h
 * Description : button control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_button_h__
#define __libaroma_ctl_button_h__

#define LIBAROMA_CTL_BUTTON_FLAT      0x0
#define LIBAROMA_CTL_BUTTON_RAISED    0x1
#define LIBAROMA_CTL_BUTTON_COLORED   0x2
#define LIBAROMA_CTL_BUTTON_DISABLED  0x4
#define LIBAROMA_CTL_BUTTON_CIRCLE    0x8

/*
 * Function    : libaroma_ctl_button
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_button(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    const char * text,
    byte button_style,
    word button_color
);

int libaroma_ctl_button_width(const char * text);

/*
 * Function    : libaroma_ctl_button_style
 * Return Value: byte
 * Descriptions: set button style
 */
byte libaroma_ctl_button_style(
    LIBAROMA_CONTROLP ctl,
    byte button_style,
    word button_color
);

/*
 * Function    : libaroma_ctl_button_text
 * Return Value: byte
 * Descriptions: set button text
 */
byte libaroma_ctl_button_text(
    LIBAROMA_CONTROLP ctl,
    const char * text
);

/*
 * Function    : libaroma_ctl_button_disable
 * Return Value: byte
 * Descriptions: set button disable state
 */
byte libaroma_ctl_button_disable(
    LIBAROMA_CONTROLP ctl,
    byte is_disable
);

/*
 * Function    : libaroma_ctl_button_is_disabled
 * Return Value: byte
 * Descriptions: check if button is disabled
 */
byte libaroma_ctl_button_is_disabled(LIBAROMA_CONTROLP ctl);

#endif /* __libaroma_ctl_button_h__ */
