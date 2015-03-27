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
 * Filename    : ctl_progress.h
 * Description : progress control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 29/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_progress_h__
#define __libaroma_ctl_progress_h__

/*
 * LIBAROMA_CTL_PROGRESS_* - progress type
 */
#define LIBAROMA_CTL_PROGRESS_DETERMINATE   0x0
#define LIBAROMA_CTL_PROGRESS_INDETERMINATE 0x1
#define LIBAROMA_CTL_PROGRESS_QUERY         0x2
#define LIBAROMA_CTL_PROGRESS_CIRCULAR      0x4

/*
 * Function    : libaroma_ctl_progress
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create new progress control
 */
LIBAROMA_CONTROLP libaroma_ctl_progress(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    byte type,
    int max,
    int value
);

/*
 * Function    : libaroma_ctl_progress_type
 * Return Value: byte
 * Descriptions: set progress type
 */
byte libaroma_ctl_progress_type(
    LIBAROMA_CONTROLP ctl,
    byte type
);

/*
 * Function    : libaroma_ctl_progress_value
 * Return Value: byte
 * Descriptions: set progress value
 */
byte libaroma_ctl_progress_value(
    LIBAROMA_CONTROLP ctl,
    int value
);

/*
 * Function    : libaroma_ctl_progress_max
 * Return Value: byte
 * Descriptions: set progress max value
 */
byte libaroma_ctl_progress_max(
    LIBAROMA_CONTROLP ctl,
    int max
);

#endif /* __libaroma_ctl_progress_h__ */
