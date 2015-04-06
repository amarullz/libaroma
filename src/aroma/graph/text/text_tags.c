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
 * Filename    : text_tags.c
 * Description : aroma markup tag parser
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_tags_c__
#define __libaroma_text_tags_c__

/*
 * Function    : _libaroma_text_parse_tag
 * Return Value: byte
 * Descriptions: process tag
 */
byte _libaroma_text_parse_tag(
    const char * tag,
    byte rules,
    byte pflags,
    word color,
    byte font,
    _LIBAROMA_TEXTCHUNKP chunk){
  int tagn = strlen(tag);
  if (tagn < 0) {
    return 0;
  }
  if (tag[0] != '/') {
    /* open tags */
    if (tagn == 1) {
      /* single character */
      switch (tag[0]) {
        case 'b':
          chunk->next_state.flags |= _LIBAROMA_TEXTCHUNK_BOLD;
          break;
        case 'i':
          chunk->next_state.flags |= _LIBAROMA_TEXTCHUNK_ITALIC;
          break;
        case 'u':
          chunk->next_state.flags |= _LIBAROMA_TEXTCHUNK_UNDERLINE;
          break;
        case 's':
          chunk->next_state.flags |= _LIBAROMA_TEXTCHUNK_STRIKEOUT;
          break;
        case 'q':
        case '*': {
            if ((_LIBAROMA_TEXT_FIXED_INDENT & rules) == 0) {
              byte current_indent = 
                _LIBAROMA_TEXTCHUNK_LINE_GETINDENT(chunk->next_state.lflags);
              if (current_indent < 8) {
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                current_indent++;
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                if (tag[0] == '*') {
                  chunk->state |= _LIBAROMA_TEXTCHUNK_STATE_BULLET;
                }
                _LIBAROMA_TEXTCHUNK_LINE_SETINDENT(
                  chunk->next_state.lflags, current_indent);
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
              }
            }
            return 1;
          }
          break;
        default: {
            return 0;
          }
          break;
      }
      return 1;
    }
    else {
      /* multi characters */
      switch (tag[0]) {
        case '#': {
            /* color */
            if ((_LIBAROMA_TEXT_FIXED_COLOR&rules) == 0) {
              chunk->next_state.color = libaroma_rgb_from_string(tag);
            }
            return 1;
          }
          break;
        case 'a': {
            if (_libaroma_text_compare(tag, "align=")) {
              if ((_LIBAROMA_TEXT_FIXED_ALIGN & rules) == 0) {
                /* alignment */
                const char * align_val = tag + 6;
                if (strcmp(align_val, "left") == 0) {
                  _LIBAROMA_TEXTCHUNK_ALIGN_SET(
                    chunk->next_state.flags, _LIBAROMA_TEXTCHUNK_ALIGN_LEFT);
                }
                else if (strcmp(align_val, "center") == 0) {
                  _LIBAROMA_TEXTCHUNK_ALIGN_SET(
                    chunk->next_state.flags, _LIBAROMA_TEXTCHUNK_ALIGN_CENTER);
                }
                else if (strcmp(align_val, "right") == 0) {
                  _LIBAROMA_TEXTCHUNK_ALIGN_SET(
                    chunk->next_state.flags, _LIBAROMA_TEXTCHUNK_ALIGN_RIGHT);
                }
                else if (strcmp(align_val, "justify") == 0) {
                  _LIBAROMA_TEXTCHUNK_ALIGN_SET(
                    chunk->next_state.flags, _LIBAROMA_TEXTCHUNK_ALIGN_JUSTIFY);
                }
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
              }
              return 1;
            }
          }
          break;
        case 'f': {
            if (_libaroma_text_compare(tag, "font=")) {
              if ((_LIBAROMA_TEXT_FIXED_FONT & rules) == 0) {
                /* font id */
                int font_id = strtoul(tag + 5, NULL, 0);
                if (font_id > _LIBAROMA_FONT_MAX_FACE-1) {
                  font_id = _LIBAROMA_FONT_MAX_FACE-1;
                }
                else if (font_id < 0) {
                  font_id = 0;
                }
                _LIBAROMA_TEXTCHUNK_SETFONTID(
                  chunk->next_state.font, (byte) font_id);
              }
              return 1;
            }
          }
          break;
        case 's': {
            if (_libaroma_text_compare(tag, "size=")) {
              if ((_LIBAROMA_TEXT_FIXED_SIZE & rules) == 0) {
                /* fontsize */
                int font_size = strtoul(tag + 5, NULL, 0);
                if (font_size > _LIBAROMA_FONT_MAX_FONTSIZE) {
                  font_size = _LIBAROMA_FONT_MAX_FONTSIZE;
                }
                else if (font_size < 0) {
                  font_size = 0;
                }
                _LIBAROMA_TEXTCHUNK_SETFONTSIZE(
                  chunk->next_state.font, (byte) font_size);
              }
              return 1;
            }
          }
          break;
        case 'l': {
            if (_libaroma_text_compare(tag, "linespacing=")) {
              if ((_LIBAROMA_TEXT_SINGLELINE&rules) == 0) {
                float linesize = strtof(tag + 12, NULL);
                if ((linesize < 1) || (linesize > 2.50)) {
                  linesize = ((float) chunk->def_linespacing) / 100.0;
                }
                chunk->next_state.linespacing = round(linesize * 100);
                byte line_flags  =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
              }
              return 1;
            }
          }
          break;
        case 'i': {
            if (_libaroma_text_compare(tag, "img=")) {
              if ((_LIBAROMA_TEXT_NOIMAGE & rules) == 0) {
                chunk->next_state.img_data =
                  _libaroma_text_parse_strdup(tag + 4);
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_IMAGE;
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
                return 2;
              }
              return 1;
            }
          }
          break;
        case 'h': {
            if (tag[1] == 'r') {
              if ((_LIBAROMA_TEXT_NOHR & rules) == 0) {
                /* hr */
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_HORIZLINE;
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
                return 2;
              }
              return 1;
            }
          }
          break;
      }
      return 0;
    }
  }
  else {
    /* close tags */
    if (tagn == 2) {
      /* single character */
      switch (tag[1]) {
        case 'b':
          chunk->next_state.flags &= ~_LIBAROMA_TEXTCHUNK_BOLD;
          break;
        case 'i':
          chunk->next_state.flags &= ~_LIBAROMA_TEXTCHUNK_ITALIC;
          break;
        case 'u':
          chunk->next_state.flags &= ~_LIBAROMA_TEXTCHUNK_UNDERLINE;
          break;
        case 's':
          chunk->next_state.flags &= ~_LIBAROMA_TEXTCHUNK_STRIKEOUT;
          break;
        case '#': {
            /* color */
            if ((_LIBAROMA_TEXT_FIXED_COLOR & rules) == 0) {
              chunk->next_state.color = color;
            }
            return 1;
          }
          break;
        case 'q':
        case '*': {
            if ((_LIBAROMA_TEXT_FIXED_INDENT & rules) == 0) {
              byte current_indent =
                _LIBAROMA_TEXTCHUNK_LINE_GETINDENT(chunk->next_state.lflags);
              if (current_indent > 0) {
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                current_indent--;
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                _LIBAROMA_TEXTCHUNK_LINE_SETINDENT(
                  chunk->next_state.lflags, current_indent);
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
              }
              return 1;
            }
            return 0;
          }
          break;
        default: {
            return 0;
          }
          break;
      }
      return 1;
    }
    else {
      /* multi characters */
      switch (tag[1]) {
        case 'a': {
            if (strcmp(tag, "/align") == 0) {
              if ((_LIBAROMA_TEXT_FIXED_ALIGN & rules) == 0) {
                /* reset alignment */
                _LIBAROMA_TEXTCHUNK_ALIGN_SET(
                  chunk->next_state.flags, (pflags & 0x03));
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
              }
              return 1;
            }
          }
          break;
        case 'l': {
            if (_libaroma_text_compare(tag, "/linespacing")) {
              if ((_LIBAROMA_TEXT_SINGLELINE & rules) == 0) {
                chunk->next_state.linespacing = chunk->def_linespacing;
                byte line_flags =
                  _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->next_state.lflags);
                line_flags |= _LIBAROMA_TEXTCHUNK_LINE_NEWLINE;
                _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(
                  chunk->next_state.lflags, line_flags);
              }
              return 1;
            }
          }
          break;
        case 'f': {
            if (strcmp(tag, "/font") == 0) {
              if ((_LIBAROMA_TEXT_FIXED_FONT & rules) == 0){
                _LIBAROMA_TEXTCHUNK_SETFONTID(
                  chunk->next_state.font, _LIBAROMA_TEXTCHUNK_GETFONTID(font));
              }
              return 1;
            }
          }
          break;
        case 's': {
            if (strcmp(tag, "/size") == 0) {
              if ((_LIBAROMA_TEXT_FIXED_SIZE & rules) == 0) {
                _LIBAROMA_TEXTCHUNK_SETFONTSIZE(
                  chunk->next_state.font, _LIBAROMA_TEXTCHUNK_GETFONTSIZE(font));
              }
              return 1;
            }
          }
          break;
      }
      return 0;
    }
  }
  return 0;
} /* End of _libaroma_text_parse_tag */



#endif /* __libaroma_text_tags_c__ */
