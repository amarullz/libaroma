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
 * Filename    : runtime.c
 * Description : libaroma runtime monitoring
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_runtime_c__
#define __libaroma_runtime_c__

/*
 * Structure   : _LIBAROMA_RUNTIME
 * Typedef     : LIBAROMA_RUNTIME, * LIBAROMA_RUNTIMEP
 * Descriptions: runtime pid structure
 */
typedef struct _LIBAROMA_RUNTIME LIBAROMA_RUNTIME;
typedef struct _LIBAROMA_RUNTIME * LIBAROMA_RUNTIMEP;
struct _LIBAROMA_RUNTIME{
  pid_t parent;
  pid_t monitor;
  pid_t me;
};

/*
 * Variable    : _libaroma_runtime
 * Type        : LIBAROMA_RUNTIME
 * Descriptions: runtime pid storage
 */
static LIBAROMA_RUNTIME _libaroma_runtime = { 0, 0, 0 };

/*
 * Function    : libaroma_runtime
 * Return Value: LIBAROMA_RUNTIMEP
 * Descriptions: Get runtime variable
 */
LIBAROMA_RUNTIMEP libaroma_runtime() {
  return &_libaroma_runtime;
} /* End of libaroma_runtime */

/*
 * Function    : libaroma_runtime_mute_parent
 * Return Value: void
 * Descriptions: Pause parent process
 */
void libaroma_runtime_mute_parent() {
  kill(_libaroma_runtime.parent, 19);
} /* End of libaroma_runtime_mute_parent */


/*
 * Function    : libaroma_runtime_continue_parent
 * Return Value: void
 * Descriptions: Continue parent process
 */
void libaroma_runtime_continue_parent() {
  kill(_libaroma_runtime.parent, 18);
} /* End of libaroma_runtime_continue_parent */

/*
 * Function    : libaroma_runtime_init
 * Return Value: void
 * Descriptions: Init libaroma runtime
 */
void libaroma_runtime_init() {
  _libaroma_runtime.parent   = getppid();  /* root */
  _libaroma_runtime.monitor  = getpid();   /* monitor */
  _libaroma_runtime.me       = fork();     /* child - fork */
  
  if (_libaroma_runtime.me == 0) {
    _libaroma_runtime.me = getpid();
    ALOGS("RUNTIME: Application @%i",_libaroma_runtime.me);
    return; /* start application */
  }
  else if (_libaroma_runtime.me < 0) {
    ALOGE("RUNTIME: Cannot Start Application Instance...");
    ALOGV("RUNTIME: Make sure to continue parent(%i)...",
        _libaroma_runtime.parent);
    libaroma_runtime_continue_parent();
    ALOGI("RUNTIME: Halting...");
    _exit(-1); /* error */
  }
  
  ALOGS("RUNTIME: MONITORING(R:%i, M:%i, A:%i)",
      _libaroma_runtime.parent,
      _libaroma_runtime.monitor,
      _libaroma_runtime.me
      );

  int status;
  waitpid(_libaroma_runtime.me, &status, 0);
  ALOGV("RUNTIME: Make sure to continue parent(%i)...",
      _libaroma_runtime.parent);
  libaroma_runtime_continue_parent();
  ALOGS("RUNTIME: Exit Status (%i)", status);
  _exit(0);
} /* End of libaroma_runtime_init */

#endif /* __libaroma_runtime_c__ */
