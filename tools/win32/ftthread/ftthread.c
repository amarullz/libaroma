#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include <pthread.h>
#include <ft2build.h>
#include FT_FREETYPE_H

#define DIE(msg) do { fprintf (stderr, msg"\n"); abort (); } while (0)
#define DIE_FT(msg) do { fprintf (stderr, msg": %s\n", ft_err_msg(error)); abort (); } while (0)

#undef __FTERRORS_H__
#define STRINGIFY(s) #s
#define FT_ERRORDEF( e, v, s )  { e, STRINGIFY(e)": "s"." },
#define FT_ERROR_START_LIST     {
#define FT_ERROR_END_LIST       { 0, 0 } };
const struct
{
  int          err_code;
  const char*  err_msg;
} ft_errors[] =
#include FT_ERRORS_H

static const char *
ft_err_msg(FT_Error err)
{
  int i;
  for (i = 0; i < (&ft_errors)[1] - ft_errors; i++)
    if (ft_errors[i].err_code == err)
      return ft_errors[i].err_msg;
  return "bad / unknown error";
}



#define MAX_NUM_THREADS 4096

const char *font_file = NULL;
int num_iters = 100;
int ppem = 100;
int load_flags = 0;
FT_Error error;

pthread_mutex_t lock;
FT_Library ft_library;

static FT_Face
create_face (void)
{
  FT_Face face = NULL;

  pthread_mutex_lock (&lock);
  if ((error = FT_New_Face (ft_library, font_file, 0, &face)))
    DIE_FT ("Failed creating face");
  pthread_mutex_unlock (&lock);

  if ((error = FT_Set_Pixel_Sizes (face, ppem, ppem)))
    DIE_FT ("FT_Set_Char_Size failed");

  return face;
}

static void
destroy_face (FT_Face face)
{
  pthread_mutex_lock (&lock);
  FT_Done_Face (face);
  pthread_mutex_unlock (&lock);
}

static void *
draw_thread (void *arg)
{
  int i;
  FT_Face face = NULL;
  arg = arg;

  for (i = 0; i < num_iters; i++)
  {
    if (!face)
      face = create_face ();

    if ((error = FT_Load_Glyph (face, i % face->num_glyphs, load_flags)))
      DIE_FT ("FT_Load_Glyph failed");

    if (i % 1000 == 0)
    {
      destroy_face (face);
      face = create_face ();
    }
  }

  if (face)
    destroy_face (face);

  return NULL;
}

int
main (int argc, char **argv)
{
  int num_threads = 100;
  pthread_t threads[MAX_NUM_THREADS];
  int i;

  if (argc < 2)
  {
    fprintf (stderr,
	     "usage: ftthread fontfile.ttf [numthreads] [numiters] [ppem] [loadflags-hex]\n"
	     "\n"
	     "numthreads, numiters, and ppem default to 100.\n\n"
	     "loadflags defaults to 0.  Values are in hex.\n"
	     "Useful flags to logically or:\n"
	     "NO_HINTING=2\nRENDER=4\nFORCE_AUTOHINT=20\nMONOCHROME=1000\n"
	     "NO_AUTOHINT=8000\nCOLOR=100000\n"
	     );
    exit (1);
  }
  font_file = argv[1];
  if (argc > 2)
    num_threads = atoi (argv[2]);
  if (argc > 3)
    num_iters = atoi (argv[3]);
  if (argc > 4)
    ppem = atoi (argv[4]);
  if (argc > 5)
    load_flags = strtol (argv[5], NULL, 16);

  assert (num_threads <= MAX_NUM_THREADS);

  pthread_mutex_init (&lock, NULL);
  FT_Init_FreeType (&ft_library);

  for (i = 0; i < num_threads; i++)
  {
    if (pthread_create (&threads[i], NULL, draw_thread, NULL) != 0)
      DIE ("pthread_create() failed");
  }

  for (i = 0; i < num_threads; i++)
  {
    if (pthread_join (threads[i], NULL) != 0)
      DIE ("pthread_join() failed");
  }

  FT_Done_FreeType (ft_library);
  pthread_mutex_destroy (&lock);

  return 0;
}