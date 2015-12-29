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
 * Filename    : text_chunk.c
 * Description : text chunk parser engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_chunk_c__
#define __libaroma_text_chunk_c__

/*
 * Function    : _libaroma_text_parse
 * Return Value: _LIBAROMA_TEXTCHUNKP
 * Descriptions: prepare text parsing data
 */
_LIBAROMA_TEXTCHUNKP _libaroma_text_parse(
  const char * txt,
  byte rules,
  byte pflags,
  word color,
  byte font,
  int max_width,
  byte linespacing) {
    
  _LIBAROMA_TEXTCHUNKP chunk =
    (_LIBAROMA_TEXTCHUNKP) calloc(sizeof(_LIBAROMA_TEXTCHUNK),1);
  
  /* linespacing */
  if (linespacing < 100) {
    linespacing = 120;
  }
  
  /* state */
  chunk->curr_state.flags = pflags;
  chunk->curr_state.font = font;
  chunk->curr_state.color = color;
  chunk->curr_state.img_data = NULL;
  chunk->curr_state.linespacing = linespacing;
  chunk->last_res|=_LIBAROMA_TEXTCHUNK_RETURN_NEWLINE;
  memcpy(
    &chunk->next_state,
    &chunk->curr_state,
    sizeof(_LIBAROMA_TEXTCHUNK_STATE)
  );
  
  /* data */
  chunk->text = _libaroma_text_parse_strdup(txt);
  chunk->rules = rules;
  chunk->def_flags = pflags;
  chunk->def_color = color;
  chunk->def_font = font;
  chunk->max_width = max_width;
  chunk->def_linespacing = linespacing;
  /* processing state */
  chunk->state = _LIBAROMA_TEXTCHUNK_STATE_OK;
  return chunk;
} /* End of _libaroma_text_parse */

/*
 * Function    : _libaroma_text_parse_free
 * Return Value: void
 * Descriptions: cleanup text parse data
 */
void _libaroma_text_parse_free(
    _LIBAROMA_TEXTCHUNKP chunk) {
  if (chunk->text != NULL) {
    free(chunk->text);
  }
  /* free pending group */
  if (chunk->next_group != NULL) {
    _libaroma_text_group_free(chunk->next_group, 1);
  }
  /* free pending line data */
  if (chunk->pending_data != NULL) {
    if (chunk->pending_data->type == _LIBAROMA_TEXTSPAN_IMAGE) {
      _LIBAROMA_TEXTSPAN_IMGP imgspan = (_LIBAROMA_TEXTSPAN_IMGP)
        chunk->pending_data->param;
      libaroma_canvas_free(imgspan->canvas);
      free(imgspan);
    }
    free(chunk->pending_data);
    chunk->pending_data = NULL;
  }
  /* free floating images data */
  if (chunk->imagesdata != NULL) {
    free(chunk->imagesdata);
    chunk->imagesdata = NULL;
  }
  /* free chunk */
  free(chunk);
} /* End of _libaroma_text_parse_free */

/*
 * Function    : _libaroma_text_parse_next
 * Return Value: byte
 * Descriptions: parse next chunk
 */
byte _libaroma_text_parse_next(
    _LIBAROMA_TEXTCHUNKP chunk,
    char * buf) {
  /* prepare buffer and return flags */
  buf[0] = 0;
  byte result_flag = _LIBAROMA_TEXTCHUNK_RETURN_OK;
  
  /* Check if any image_data that unreleased yet - to make sure */
  if (chunk->curr_state.img_data != NULL) {
    /* It's stupid if it didn't released by function
      that called it in previous sequence */
    ALOGW("curr_state.img_data didn't freed on previous sequence!!!");
    free(chunk->curr_state.img_data);
    chunk->curr_state.img_data = NULL;
  }
  
  /* prepare next chunk state */
  memcpy(
    &chunk->curr_state,
    &chunk->next_state,
    sizeof(_LIBAROMA_TEXTCHUNK_STATE));

  /* reset next chunk state line flags */
  _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(chunk->next_state.lflags, 0);
  chunk->next_state.img_data = NULL;
  
  /* check current state (for img & hr tags) */
  byte curr_lflags = _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(
    chunk->curr_state.lflags);
  
  if (
      (curr_lflags & _LIBAROMA_TEXTCHUNK_LINE_IMAGE)||
      (curr_lflags & _LIBAROMA_TEXTCHUNK_LINE_HORIZLINE)) {
    result_flag |= _LIBAROMA_TEXTCHUNK_RETURN_TAG;
    return result_flag;
  }
  else if (curr_lflags & _LIBAROMA_TEXTCHUNK_LINE_NEWLINE) {
    if ((chunk->last_res & _LIBAROMA_TEXTCHUNK_RETURN_NEWLINE) == 0) {
      result_flag |= _LIBAROMA_TEXTCHUNK_RETURN_NEWLINE;
      return result_flag;
    }
  }
  /* eof */
  if (chunk->text == NULL) {
    return _LIBAROMA_TEXTCHUNK_RETURN_EOF;
  }
  int len = strlen(chunk->text);
  if (len < 1) {
    return _LIBAROMA_TEXTCHUNK_RETURN_EOF;
  }
  
  /* local variables */
  char * cur = chunk->text;
  char   chr = *cur;
  int  bufn  = 0;
  
  /* characters loop */
  while (chr) {
    /* seek to next character ? */
    byte seek = 1;
    /* check current character */
    switch (chr) {
      case '<': {
          /* tag token */
          if ((cur > chunk->text) && (*(cur - 1) == '\\')) {
            if (bufn > 0) {
              buf[bufn - 1] = '<';
            }
          }
          else {
            cur++;
            seek = 0;
            char * tok = strpbrk(cur, ">");
            if (tok) {
              *tok = 0;
              /* is it string resource ?? */
              if (cur[0] == '~') {
                /* string resource */
                char * string_val = libaroma_lang_get(cur + 1);
                if (string_val == NULL) {
                  string_val = _libaroma_text_parse_strdup(cur + 1);
                }
                _libaroma_text_change_current(chunk, tok + 1);
                if (string_val != NULL) {
                  _libaroma_text_concat_pre(&chunk->text, string_val);
                }
                cur = chunk->text;
                free(string_val);
              }
              else {
                byte tag_res = _libaroma_text_parse_tag(
                  cur,
                  chunk->rules,
                  chunk->def_flags,
                  chunk->def_color,
                  chunk->def_font,
                  chunk);
                if (tag_res != 0) {
                  _libaroma_text_change_current(chunk, tok + 1);
                  buf[bufn] = 0;
                  result_flag |=
                    ((bufn>0)?_LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF:0);
                  return result_flag;
                }
                else {
                  *tok = '>';
                  buf[bufn++] = '<';
                }
              }
            }
            else {
              /* parse error */
              buf[bufn++] = '<';
            }
          }
        }
        break;
      case ' ':
      case '\t':
      case '\n': {
          /* whitespace token */
          if (chr == '\n') {
            result_flag |= _LIBAROMA_TEXTCHUNK_RETURN_NEWLINE;
          }
          else {
            result_flag |= 
              (
                (chr == ' ')?
                  _LIBAROMA_TEXTCHUNK_RETURN_SPACE:
                  _LIBAROMA_TEXTCHUNK_RETURN_TAB
              );
          }
          _libaroma_text_change_current(chunk, cur + 1);
          buf[bufn] = 0;
          result_flag |= 
            ((bufn > 0)?_LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF:0);
          return result_flag;
        }
        break;
      case '\r': /* ignore this characters */
        break;
      default: {
          /* save character */
          buf[bufn++] = chr;
        }
        break;
    }
    if (seek) {
      cur++;
    }
    /* max buff */
    if (bufn>=_LIBAROMA_TEXTCHUNK_MAX_BUF-1) {
      result_flag |= _LIBAROMA_TEXTCHUNK_RETURN_MAXBUF;
      _libaroma_text_change_current(chunk, cur);
      buf[bufn] = 0;
      result_flag |=
        ((bufn > 0)?_LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF:0);
      return result_flag;
    }
    chr = *cur;
  }
  
  /* is end of string */
  if (bufn > 0) {
    /*result_flag |= _LIBAROMA_TEXTCHUNK_RETURN_EOF;*/
    _libaroma_text_change_current(chunk, cur);
    buf[bufn] = 0;
    result_flag |= (bufn > 0) ? _LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF : 0;
    return result_flag;
  }
  result_flag = 0;
  return result_flag;
} /* End of _libaroma_text_parse_next */

#endif /* __libaroma_text_chunk_c__ */
