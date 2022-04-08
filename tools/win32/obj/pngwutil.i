# 1 "../../../libs/png/pngwutil.c"
# 1 "<command-line>"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "../../../libs/png/pngwutil.c"
# 14 "../../../libs/png/pngwutil.c"
# 1 "../../../libs/png/pngpriv.h" 1
# 44 "../../../libs/png/pngpriv.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 1 3 4
# 24 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\features.h" 1 3 4
# 378 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\features.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\cdefs.h" 1 3 4
# 385 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\cdefs.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\wordsize.h" 1 3 4
# 386 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\cdefs.h" 2 3 4
# 379 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\features.h" 2 3 4
# 402 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\features.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\gnu\\stubs.h" 1 3 4
# 10 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\gnu\\stubs.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\gnu\\stubs-hard.h" 1 3 4
# 11 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\gnu\\stubs.h" 2 3 4
# 403 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\features.h" 2 3 4
# 25 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4







# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 212 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 324 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 33 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4


# 95 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;



# 139 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

# 162 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 181 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 276 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}

# 372 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));
# 464 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));

# 513 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4

# 539 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4




extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));








# 562 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 712 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4





extern int system (const char *__command) ;

# 742 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
typedef int (*__compar_fn_t) (const void *, const void *);
# 752 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdlib-bsearch.h" 1 3 4
# 19 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdlib-bsearch.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;

  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 return (void *) __p;
    }

  return ((void *)0);
}
# 761 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4




extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 775 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;












extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 860 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4



extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));

# 955 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdlib-float.h" 1 3 4
# 24 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdlib-float.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}

# 956 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4
# 968 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4

# 45 "../../../libs/png/pngpriv.h" 2
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4





# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 33 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 2 3 4
# 44 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4


extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

# 64 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4


extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 96 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 127 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4


extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 211 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4

# 236 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 263 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 282 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 315 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 342 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 397 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));

# 411 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4


extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 451 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 632 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string.h" 1 3 4
# 633 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 2 3 4


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 1 3 4
# 79 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
typedef struct { unsigned char __arr[2]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR2;
typedef struct { unsigned char __arr[3]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR3;
typedef struct { unsigned char __arr[4]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR4;
typedef struct { unsigned char __arr[5]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR5;
typedef struct { unsigned char __arr[6]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR6;
typedef struct { unsigned char __arr[7]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR7;
typedef struct { unsigned char __arr[8]; } __attribute__ ((__packed__)) __STRING2_COPY_ARR8;
# 393 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern void *__rawmemchr (const void *__s, int __c);
# 945 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c1 (const char *__s, int __reject);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c1 (const char *__s, int __reject)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c2 (const char *__s, int __reject1,
         int __reject2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c2 (const char *__s, int __reject1, int __reject2)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c3 (const char *__s, int __reject1,
         int __reject2, int __reject3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c3 (const char *__s, int __reject1, int __reject2,
       int __reject3)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2 && __s[__result] != __reject3)
    ++__result;
  return __result;
}
# 1021 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c1 (const char *__s, int __accept);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c1 (const char *__s, int __accept)
{
  size_t __result = 0;

  while (__s[__result] == __accept)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c2 (const char *__s, int __accept1, int __accept2)
{
  size_t __result = 0;

  while (__s[__result] == __accept1 || __s[__result] == __accept2)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{
  size_t __result = 0;

  while (__s[__result] == __accept1 || __s[__result] == __accept2
  || __s[__result] == __accept3)
    ++__result;
  return __result;
}
# 1097 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c2 (const char *__s, int __accept1, int __accept2)
{

  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{

  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2
  && *__s != __accept3)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}
# 1147 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strtok_r_1c (char *__s, char __sep, char **__nextp);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strtok_r_1c (char *__s, char __sep, char **__nextp)
{
  char *__result;
  if (__s == ((void *)0))
    __s = *__nextp;
  while (*__s == __sep)
    ++__s;
  __result = ((void *)0);
  if (*__s != '\0')
    {
      __result = __s++;
      while (*__s != '\0')
 if (*__s++ == __sep)
   {
     __s[-1] = '\0';
     break;
   }
    }
  *__nextp = __s;
  return __result;
}
# 1179 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern char *__strsep_g (char **__stringp, const char *__delim);
# 1197 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_1c (char **__s, char __reject);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_1c (char **__s, char __reject)
{
  char *__retval = *__s;
  if (__retval != ((void *)0) && (*__s = (__extension__ (__builtin_constant_p (__reject) && !__builtin_constant_p (__retval) && (__reject) == '\0' ? (char *) __rawmemchr (__retval, __reject) : __builtin_strchr (__retval, __reject)))) != ((void *)0))
    *(*__s)++ = '\0';
  return __retval;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_2c (char **__s, char __reject1, char __reject2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_2c (char **__s, char __reject1, char __reject2)
{
  char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void *)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_3c (char **__s, char __reject1, char __reject2,
       char __reject3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_3c (char **__s, char __reject1, char __reject2, char __reject3)
{
  char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void *)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2 || *__cp == __reject3)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}
# 636 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 2 3 4
# 644 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4

# 46 "../../../libs/png/pngpriv.h" 2
# 72 "../../../libs/png/pngpriv.h"
# 1 "../../../libs/png/pnglibconf.h" 1
# 73 "../../../libs/png/pngpriv.h" 2
# 294 "../../../libs/png/pngpriv.h"
# 1 "../../../libs/png/png.h" 1
# 462 "../../../libs/png/png.h"
# 1 "../../../libs/png/pngconf.h" 1
# 52 "../../../libs/png/pngconf.h"
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 1 3 4
# 34 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\syslimits.h" 1 3 4






# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 1 3 4
# 168 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 1 3 4
# 143 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix1_lim.h" 1 3 4
# 160 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix1_lim.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\local_lim.h" 1 3 4
# 38 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\local_lim.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\linux\\limits.h" 1 3 4
# 39 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\local_lim.h" 2 3 4
# 161 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix1_lim.h" 2 3 4
# 144 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 2 3 4
# 169 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 2 3 4
# 8 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\syslimits.h" 2 3 4
# 35 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 2 3 4
# 53 "../../../libs/png/pngconf.h" 2
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 147 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 54 "../../../libs/png/pngconf.h" 2
# 67 "../../../libs/png/pngconf.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 1 3 4
# 29 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4




# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 34 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4

# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\types.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\wordsize.h" 1 3 4
# 28 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;




__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;







__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
# 121 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\typesizes.h" 1 3 4
# 122 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\types.h" 2 3 4


__extension__ typedef __u_quad_t __dev_t;
__extension__ typedef unsigned int __uid_t;
__extension__ typedef unsigned int __gid_t;
__extension__ typedef unsigned long int __ino_t;
__extension__ typedef __u_quad_t __ino64_t;
__extension__ typedef unsigned int __mode_t;
__extension__ typedef unsigned int __nlink_t;
__extension__ typedef long int __off_t;
__extension__ typedef __quad_t __off64_t;
__extension__ typedef int __pid_t;
__extension__ typedef struct { int __val[2]; } __fsid_t;
__extension__ typedef long int __clock_t;
__extension__ typedef unsigned long int __rlim_t;
__extension__ typedef __u_quad_t __rlim64_t;
__extension__ typedef unsigned int __id_t;
__extension__ typedef long int __time_t;
__extension__ typedef unsigned int __useconds_t;
__extension__ typedef long int __suseconds_t;

__extension__ typedef int __daddr_t;
__extension__ typedef int __key_t;


__extension__ typedef int __clockid_t;


__extension__ typedef void * __timer_t;


__extension__ typedef long int __blksize_t;




__extension__ typedef long int __blkcnt_t;
__extension__ typedef __quad_t __blkcnt64_t;


__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __u_quad_t __fsblkcnt64_t;


__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __u_quad_t __fsfilcnt64_t;


__extension__ typedef int __fsword_t;

__extension__ typedef int __ssize_t;


__extension__ typedef long int __syscall_slong_t;

__extension__ typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


__extension__ typedef int __intptr_t;


__extension__ typedef unsigned int __socklen_t;
# 36 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4
# 44 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 1 3 4
# 31 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\_g_config.h" 1 3 4
# 15 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\_g_config.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 16 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\_g_config.h" 2 3 4




# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\wchar.h" 1 3 4
# 82 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\_g_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 2 3 4
# 49 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 1 3 4
# 40 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 2 3 4
# 144 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 154 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 177 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 245 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 293 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
  __off64_t _offset;
# 302 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 338 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 390 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 434 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 464 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4
# 108 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4


typedef _G_fpos_t fpos_t;




# 164 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdio_lim.h" 1 3 4
# 165 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));














extern FILE *tmpfile (void) ;
# 209 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;

# 232 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 266 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 306 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 329 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4



extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

# 351 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));

# 420 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 463 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 526 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 565 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4








extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 602 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
# 617 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 638 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


# 684 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 744 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 792 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 824 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

# 841 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4





extern void perror (const char *__s);






# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sys_errlist.h" 1 3 4
# 854 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 885 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 913 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 934 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdio.h" 1 3 4
# 35 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}



extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return _IO_getc (stdin);
}
# 62 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}


extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}




extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return _IO_putc (__c, stdout);
}
# 97 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}


extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
# 935 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4
# 943 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 68 "../../../libs/png/pngconf.h" 2




# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 3 4


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\setjmp.h" 1 3 4
# 33 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\setjmp.h" 3 4
typedef int __jmp_buf[64] __attribute__((__aligned__ (8)));
# 30 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 2 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sigset.h" 1 3 4
# 22 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 31 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 2 3 4



struct __jmp_buf_tag
  {




    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };




typedef struct __jmp_buf_tag jmp_buf[1];



extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));






extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));



extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));










extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));


# 92 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 3 4
typedef struct __jmp_buf_tag sigjmp_buf[1];
# 102 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 3 4
extern void siglongjmp (sigjmp_buf __env, int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
# 112 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\setjmp.h" 3 4

# 73 "../../../libs/png/pngconf.h" 2




# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 1 3 4
# 29 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4








# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 38 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 2 3 4



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\time.h" 1 3 4
# 55 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\time.h" 3 4
extern long int __sysconf (int);
# 42 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 2 3 4
# 57 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4


typedef __clock_t clock_t;



# 73 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4


typedef __time_t time_t;



# 131 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;





  long int __tm_gmtoff;
  const char *__tm_zone;

};



# 186 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));

# 236 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4



extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));
# 430 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4

# 78 "../../../libs/png/pngconf.h" 2
# 503 "../../../libs/png/pngconf.h"
   typedef unsigned char png_byte;







   typedef short png_int_16;







   typedef unsigned short png_uint_16;





   typedef int png_int_32;







   typedef unsigned int png_uint_32;
# 543 "../../../libs/png/pngconf.h"
typedef size_t png_size_t;
typedef ptrdiff_t png_ptrdiff_t;
# 578 "../../../libs/png/pngconf.h"
   typedef png_size_t png_alloc_size_t;
# 595 "../../../libs/png/pngconf.h"
typedef png_int_32 png_fixed_point;


typedef void * png_voidp;
typedef const void * png_const_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef png_uint_32 * png_uint_32p;
typedef const png_uint_32 * png_const_uint_32p;
typedef png_int_32 * png_int_32p;
typedef const png_int_32 * png_const_int_32p;
typedef png_uint_16 * png_uint_16p;
typedef const png_uint_16 * png_const_uint_16p;
typedef png_int_16 * png_int_16p;
typedef const png_int_16 * png_const_int_16p;
typedef char * png_charp;
typedef const char * png_const_charp;
typedef png_fixed_point * png_fixed_point_p;
typedef const png_fixed_point * png_const_fixed_point_p;
typedef png_size_t * png_size_tp;
typedef const png_size_t * png_const_size_tp;


typedef FILE * png_FILE_p;



typedef double * png_doublep;
typedef const double * png_const_doublep;



typedef png_byte * * png_bytepp;
typedef png_uint_32 * * png_uint_32pp;
typedef png_int_32 * * png_int_32pp;
typedef png_uint_16 * * png_uint_16pp;
typedef png_int_16 * * png_int_16pp;
typedef const char * * png_const_charpp;
typedef char * * png_charpp;
typedef png_fixed_point * * png_fixed_point_pp;

typedef double * * png_doublepp;



typedef char * * * png_charppp;
# 463 "../../../libs/png/png.h" 2
# 553 "../../../libs/png/png.h"
typedef char* png_libpng_version_1_6_10;







typedef struct png_struct_def png_struct;
typedef const png_struct * png_const_structp;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
# 575 "../../../libs/png/png.h"
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef const png_info * png_const_infop;
typedef png_info * * png_infopp;
# 591 "../../../libs/png/png.h"
typedef png_struct * __restrict png_structrp;
typedef const png_struct * __restrict png_const_structrp;
typedef png_info * __restrict png_inforp;
typedef const png_info * __restrict png_const_inforp;





typedef struct png_color_struct
{
   png_byte red;
   png_byte green;
   png_byte blue;
} png_color;
typedef png_color * png_colorp;
typedef const png_color * png_const_colorp;
typedef png_color * * png_colorpp;

typedef struct png_color_16_struct
{
   png_byte index;
   png_uint_16 red;
   png_uint_16 green;
   png_uint_16 blue;
   png_uint_16 gray;
} png_color_16;
typedef png_color_16 * png_color_16p;
typedef const png_color_16 * png_const_color_16p;
typedef png_color_16 * * png_color_16pp;

typedef struct png_color_8_struct
{
   png_byte red;
   png_byte green;
   png_byte blue;
   png_byte gray;
   png_byte alpha;
} png_color_8;
typedef png_color_8 * png_color_8p;
typedef const png_color_8 * png_const_color_8p;
typedef png_color_8 * * png_color_8pp;





typedef struct png_sPLT_entry_struct
{
   png_uint_16 red;
   png_uint_16 green;
   png_uint_16 blue;
   png_uint_16 alpha;
   png_uint_16 frequency;
} png_sPLT_entry;
typedef png_sPLT_entry * png_sPLT_entryp;
typedef const png_sPLT_entry * png_const_sPLT_entryp;
typedef png_sPLT_entry * * png_sPLT_entrypp;






typedef struct png_sPLT_struct
{
   png_charp name;
   png_byte depth;
   png_sPLT_entryp entries;
   png_int_32 nentries;
} png_sPLT_t;
typedef png_sPLT_t * png_sPLT_tp;
typedef const png_sPLT_t * png_const_sPLT_tp;
typedef png_sPLT_t * * png_sPLT_tpp;
# 684 "../../../libs/png/png.h"
typedef struct png_text_struct
{
   int compression;




   png_charp key;
   png_charp text;

   png_size_t text_length;
   png_size_t itxt_length;
   png_charp lang;

   png_charp lang_key;

} png_text;
typedef png_text * png_textp;
typedef const png_text * png_const_textp;
typedef png_text * * png_textpp;
# 722 "../../../libs/png/png.h"
typedef struct png_time_struct
{
   png_uint_16 year;
   png_byte month;
   png_byte day;
   png_byte hour;
   png_byte minute;
   png_byte second;
} png_time;
typedef png_time * png_timep;
typedef const png_time * png_const_timep;
typedef png_time * * png_timepp;
# 744 "../../../libs/png/png.h"
typedef struct png_unknown_chunk_t
{
    png_byte name[5];
    png_byte *data;
    png_size_t size;







    png_byte location;
}
png_unknown_chunk;

typedef png_unknown_chunk * png_unknown_chunkp;
typedef const png_unknown_chunk * png_const_unknown_chunkp;
typedef png_unknown_chunk * * png_unknown_chunkpp;
# 875 "../../../libs/png/png.h"
typedef struct png_row_info_struct
{
   png_uint_32 width;
   png_size_t rowbytes;
   png_byte color_type;
   png_byte bit_depth;
   png_byte channels;
   png_byte pixel_depth;
} png_row_info;

typedef png_row_info * png_row_infop;
typedef png_row_info * * png_row_infopp;
# 896 "../../../libs/png/png.h"
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, png_size_t);
typedef void ( *png_flush_ptr) (png_structp);
typedef void ( *png_read_status_ptr) (png_structp, png_uint_32, int)
         ;
typedef void ( *png_write_status_ptr) (png_structp, png_uint_32, int)
         ;


typedef void ( *png_seek_ptr) (png_structp, png_uint_32);



typedef void ( *png_progressive_info_ptr) (png_structp, png_infop);
typedef void ( *png_progressive_end_ptr) (png_structp, png_infop);
# 922 "../../../libs/png/png.h"
typedef void ( *png_progressive_row_ptr) (png_structp, png_bytep, png_uint_32, int)
                      ;




typedef void ( *png_user_transform_ptr) (png_structp, png_row_infop, png_bytep)
               ;



typedef int ( *png_user_chunk_ptr) (png_structp, png_unknown_chunkp)
                        ;
# 953 "../../../libs/png/png.h"
typedef void ( *png_longjmp_ptr) (jmp_buf, int);
# 990 "../../../libs/png/png.h"
typedef png_voidp ( *png_malloc_ptr) (png_structp, png_alloc_size_t)
                      ;
typedef void ( *png_free_ptr) (png_structp, png_voidp);
# 1024 "../../../libs/png/png.h"
extern png_uint_32 ( png_access_version_number) (void);




extern void ( png_set_sig_bytes) (png_structrp png_ptr, int num_bytes);






extern int ( png_sig_cmp) (png_const_bytep sig, png_size_t start, png_size_t num_to_check)
                             ;







extern __attribute__((__malloc__)) png_structp ( png_create_read_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn)


                  ;


extern __attribute__((__malloc__)) png_structp ( png_create_write_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn)


                  ;

extern png_size_t ( png_get_compression_buffer_size) (png_const_structrp png_ptr)
                                 ;

extern void ( png_set_compression_buffer_size) (png_structrp png_ptr, png_size_t size)
                     ;
# 1073 "../../../libs/png/png.h"
extern jmp_buf* ( png_set_longjmp_fn) (png_structrp png_ptr, png_longjmp_ptr longjmp_fn, size_t jmp_buf_size)
                                                     ;
# 1086 "../../../libs/png/png.h"
extern __attribute__((__noreturn__)) void ( png_longjmp) (png_const_structrp png_ptr, int val)
                 ;



extern int ( png_reset_zstream) (png_structrp png_ptr);




extern __attribute__((__malloc__)) png_structp ( png_create_read_struct_2) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn)



                  ;
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct_2) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn)



                  ;



extern void ( png_write_sig) (png_structrp png_ptr);


extern void ( png_write_chunk) (png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, png_size_t length)
                                                         ;


extern void ( png_write_chunk_start) (png_structrp png_ptr, png_const_bytep chunk_name, png_uint_32 length)
                                                    ;


extern void ( png_write_chunk_data) (png_structrp png_ptr, png_const_bytep data, png_size_t length)
                                             ;


extern void ( png_write_chunk_end) (png_structrp png_ptr);


extern __attribute__((__malloc__)) png_infop ( png_create_info_struct) (png_const_structrp png_ptr)
                  ;





extern void ( png_info_init_3) (png_infopp info_ptr, png_size_t png_info_struct_size)
                                                     ;


extern void ( png_write_info_before_PLTE) (png_structrp png_ptr, png_const_inforp info_ptr)
                                                      ;
extern void ( png_write_info) (png_structrp png_ptr, png_const_inforp info_ptr)
                                                      ;



extern void ( png_read_info) (png_structrp png_ptr, png_inforp info_ptr)
                                                ;
# 1156 "../../../libs/png/png.h"
extern png_const_charp ( png_convert_to_rfc1123) (png_structrp png_ptr, png_const_timep ptime)
                                          ;

extern int ( png_convert_to_rfc1123_buffer) (char out[29], png_const_timep ptime)
                           ;




extern void ( png_convert_from_struct_tm) (png_timep ptime, const struct tm * ttime)
                             ;


extern void ( png_convert_from_time_t) (png_timep ptime, time_t ttime);




extern void ( png_set_expand) (png_structrp png_ptr);
extern void ( png_set_expand_gray_1_2_4_to_8) (png_structrp png_ptr);
extern void ( png_set_palette_to_rgb) (png_structrp png_ptr);
extern void ( png_set_tRNS_to_alpha) (png_structrp png_ptr);






extern void ( png_set_expand_16) (png_structrp png_ptr);




extern void ( png_set_bgr) (png_structrp png_ptr);




extern void ( png_set_gray_to_rgb) (png_structrp png_ptr);
# 1204 "../../../libs/png/png.h"
extern void ( png_set_rgb_to_gray) (png_structrp png_ptr, int error_action, double red, double green);

extern void ( png_set_rgb_to_gray_fixed) (png_structrp png_ptr, int error_action, png_fixed_point red, png_fixed_point green);


extern png_byte ( png_get_rgb_to_gray_status) (png_const_structrp png_ptr)
             ;



extern void ( png_build_grayscale_palette) (int bit_depth, png_colorp palette)
                        ;
# 1260 "../../../libs/png/png.h"
extern void ( png_set_alpha_mode) (png_structrp png_ptr, int mode, double output_gamma);

extern void ( png_set_alpha_mode_fixed) (png_structrp png_ptr, int mode, png_fixed_point output_gamma);
# 1353 "../../../libs/png/png.h"
extern void ( png_set_strip_alpha) (png_structrp png_ptr);




extern void ( png_set_swap_alpha) (png_structrp png_ptr);




extern void ( png_set_invert_alpha) (png_structrp png_ptr);




extern void ( png_set_filler) (png_structrp png_ptr, png_uint_32 filler, int flags)
               ;




extern void ( png_set_add_alpha) (png_structrp png_ptr, png_uint_32 filler, int flags)
                                   ;




extern void ( png_set_swap) (png_structrp png_ptr);




extern void ( png_set_packing) (png_structrp png_ptr);





extern void ( png_set_packswap) (png_structrp png_ptr);




extern void ( png_set_shift) (png_structrp png_ptr, png_const_color_8p true_bits)
               ;
# 1408 "../../../libs/png/png.h"
extern int ( png_set_interlace_handling) (png_structrp png_ptr);




extern void ( png_set_invert_mono) (png_structrp png_ptr);
# 1422 "../../../libs/png/png.h"
extern void ( png_set_background) (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, double background_gamma);


extern void ( png_set_background_fixed) (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, png_fixed_point background_gamma);
# 1438 "../../../libs/png/png.h"
extern void ( png_set_scale_16) (png_structrp png_ptr);





extern void ( png_set_strip_16) (png_structrp png_ptr);






extern void ( png_set_quantize) (png_structrp png_ptr, png_colorp palette, int num_palette, int maximum_colors, png_const_uint_16p histogram, int full_quantize)

                                                     ;
# 1473 "../../../libs/png/png.h"
extern void ( png_set_gamma) (png_structrp png_ptr, double screen_gamma, double override_file_gamma);

extern void ( png_set_gamma_fixed) (png_structrp png_ptr, png_fixed_point screen_gamma, png_fixed_point override_file_gamma);





extern void ( png_set_flush) (png_structrp png_ptr, int nrows);

extern void ( png_write_flush) (png_structrp png_ptr);



extern void ( png_start_read_image) (png_structrp png_ptr);


extern void ( png_read_update_info) (png_structrp png_ptr, png_inforp info_ptr)
                         ;



extern void ( png_read_rows) (png_structrp png_ptr, png_bytepp row, png_bytepp display_row, png_uint_32 num_rows)
                                                  ;




extern void ( png_read_row) (png_structrp png_ptr, png_bytep row, png_bytep display_row)
                           ;




extern void ( png_read_image) (png_structrp png_ptr, png_bytepp image);



extern void ( png_write_row) (png_structrp png_ptr, png_const_bytep row)
                         ;






extern void ( png_write_rows) (png_structrp png_ptr, png_bytepp row, png_uint_32 num_rows)
                          ;


extern void ( png_write_image) (png_structrp png_ptr, png_bytepp image);


extern void ( png_write_end) (png_structrp png_ptr, png_inforp info_ptr)
                         ;



extern void ( png_read_end) (png_structrp png_ptr, png_inforp info_ptr);



extern void ( png_destroy_info_struct) (png_const_structrp png_ptr, png_infopp info_ptr_ptr)
                             ;


extern void ( png_destroy_read_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr, png_infopp end_info_ptr_ptr)
                                                          ;


extern void ( png_destroy_write_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr)
                             ;


extern void ( png_set_crc_action) (png_structrp png_ptr, int crit_action, int ancil_action)
                      ;
# 1577 "../../../libs/png/png.h"
extern void ( png_set_filter) (png_structrp png_ptr, int method, int filters)
                 ;
# 1633 "../../../libs/png/png.h"
extern void ( png_set_filter_heuristics) (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_doublep filter_weights, png_const_doublep filter_costs);


extern void ( png_set_filter_heuristics_fixed) (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_fixed_point_p filter_weights, png_const_fixed_point_p filter_costs);
# 1658 "../../../libs/png/png.h"
extern void ( png_set_compression_level) (png_structrp png_ptr, int level)
               ;

extern void ( png_set_compression_mem_level) (png_structrp png_ptr, int mem_level)
                   ;

extern void ( png_set_compression_strategy) (png_structrp png_ptr, int strategy)
                  ;




extern void ( png_set_compression_window_bits) (png_structrp png_ptr, int window_bits)
                     ;

extern void ( png_set_compression_method) (png_structrp png_ptr, int method)
                ;




extern void ( png_set_text_compression_level) (png_structrp png_ptr, int level)
               ;

extern void ( png_set_text_compression_mem_level) (png_structrp png_ptr, int mem_level)
                   ;

extern void ( png_set_text_compression_strategy) (png_structrp png_ptr, int strategy)
                  ;




extern void ( png_set_text_compression_window_bits) (png_structrp png_ptr, int window_bits)
                                            ;

extern void ( png_set_text_compression_method) (png_structrp png_ptr, int method)
                ;
# 1709 "../../../libs/png/png.h"
extern void ( png_init_io) (png_structrp png_ptr, png_FILE_p fp);
# 1720 "../../../libs/png/png.h"
extern void ( png_set_error_fn) (png_structrp png_ptr, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warning_fn)
                                                                           ;


extern png_voidp ( png_get_error_ptr) (png_const_structrp png_ptr);
# 1736 "../../../libs/png/png.h"
extern void ( png_set_write_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn)
                                                             ;


extern void ( png_set_read_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr read_data_fn)
                             ;


extern png_voidp ( png_get_io_ptr) (png_const_structrp png_ptr);

extern void ( png_set_read_status_fn) (png_structrp png_ptr, png_read_status_ptr read_row_fn)
                                     ;

extern void ( png_set_write_status_fn) (png_structrp png_ptr, png_write_status_ptr write_row_fn)
                                       ;



extern void ( png_set_mem_fn) (png_structrp png_ptr, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn)
                                                    ;

extern png_voidp ( png_get_mem_ptr) (png_const_structrp png_ptr);



extern void ( png_set_read_user_transform_fn) (png_structrp png_ptr, png_user_transform_ptr read_user_transform_fn)
                                                   ;



extern void ( png_set_write_user_transform_fn) (png_structrp png_ptr, png_user_transform_ptr write_user_transform_fn)
                                                    ;



extern void ( png_set_user_transform_info) (png_structrp png_ptr, png_voidp user_transform_ptr, int user_transform_depth, int user_transform_channels)

                                 ;

extern png_voidp ( png_get_user_transform_ptr) (png_const_structrp png_ptr)
                                 ;
# 1791 "../../../libs/png/png.h"
extern png_uint_32 ( png_get_current_row_number) (png_const_structrp);
extern png_byte ( png_get_current_pass_number) (png_const_structrp);
# 1815 "../../../libs/png/png.h"
extern void ( png_set_read_user_chunk_fn) (png_structrp png_ptr, png_voidp user_chunk_ptr, png_user_chunk_ptr read_user_chunk_fn)
                                                                     ;



extern png_voidp ( png_get_user_chunk_ptr) (png_const_structrp png_ptr);






extern void ( png_set_progressive_read_fn) (png_structrp png_ptr, png_voidp progressive_ptr, png_progressive_info_ptr info_fn, png_progressive_row_ptr row_fn, png_progressive_end_ptr end_fn)

                                                                    ;


extern png_voidp ( png_get_progressive_ptr) (png_const_structrp png_ptr)
                                 ;


extern void ( png_process_data) (png_structrp png_ptr, png_inforp info_ptr, png_bytep buffer, png_size_t buffer_size)
                                                                   ;
# 1846 "../../../libs/png/png.h"
extern png_size_t ( png_process_data_pause) (png_structrp, int save);







extern png_uint_32 ( png_process_data_skip) (png_structrp);







extern void ( png_progressive_combine_row) (png_const_structrp png_ptr, png_bytep old_row, png_const_bytep new_row)
                                                ;



extern __attribute__((__malloc__)) png_voidp ( png_malloc) (png_const_structrp png_ptr, png_alloc_size_t size)
                                          ;

extern __attribute__((__malloc__)) png_voidp ( png_calloc) (png_const_structrp png_ptr, png_alloc_size_t size)
                                          ;


extern __attribute__((__malloc__)) png_voidp ( png_malloc_warn) (png_const_structrp png_ptr, png_alloc_size_t size)
                                          ;


extern void ( png_free) (png_const_structrp png_ptr, png_voidp ptr);


extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num)
                                                       ;
# 1891 "../../../libs/png/png.h"
extern void ( png_data_freer) (png_const_structrp png_ptr, png_inforp info_ptr, int freer, png_uint_32 mask)
                                                      ;



extern void ( png_build_index) (png_structp png_ptr);
extern void ( png_configure_decoder) (png_structp png_ptr, int *row_offset, int pass)
                                                     ;



extern void ( png_set_seek_fn) (png_structp png_ptr, png_seek_ptr seek_data_fn)
                              ;

extern void ( png_set_interlaced_pass) (png_structp png_ptr, int pass);
# 1930 "../../../libs/png/png.h"
extern __attribute__((__malloc__)) png_voidp ( png_malloc_default) (png_const_structrp png_ptr, png_alloc_size_t size)
                                                         ;
extern void ( png_free_default) (png_const_structrp png_ptr, png_voidp ptr)
                                   ;




extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message)
                                                 ;


extern __attribute__((__noreturn__)) void ( png_chunk_error) (png_const_structrp png_ptr, png_const_charp error_message)
                                                 ;
# 1954 "../../../libs/png/png.h"
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;


extern void ( png_chunk_warning) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;
# 1968 "../../../libs/png/png.h"
extern void ( png_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;



extern void ( png_chunk_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;


extern void ( png_set_benign_errors) (png_structrp png_ptr, int allowed)
                                        ;
# 2002 "../../../libs/png/png.h"
extern png_uint_32 ( png_get_valid) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 flag)
                                                 ;


extern png_size_t ( png_get_rowbytes) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;





extern png_bytepp ( png_get_rows) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;




extern void ( png_set_rows) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytepp row_pointers)
                                                  ;



extern png_byte ( png_get_channels) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;



extern png_uint_32 ( png_get_image_width) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_uint_32 ( png_get_image_height) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_byte ( png_get_bit_depth) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_byte ( png_get_color_type) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_byte ( png_get_filter_type) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_byte ( png_get_interlace_type) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_byte ( png_get_compression_type) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;


extern png_uint_32 ( png_get_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;
extern png_uint_32 ( png_get_x_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;
extern png_uint_32 ( png_get_y_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;


extern float ( png_get_pixel_aspect_ratio) (png_const_structrp png_ptr, png_const_inforp info_ptr);

extern png_fixed_point ( png_get_pixel_aspect_ratio_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);



extern png_int_32 ( png_get_x_offset_pixels) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;
extern png_int_32 ( png_get_y_offset_pixels) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;
extern png_int_32 ( png_get_x_offset_microns) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;
extern png_int_32 ( png_get_y_offset_microns) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;





extern png_const_bytep ( png_get_signature) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                               ;



extern png_uint_32 ( png_get_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_16p *background)
                                                    ;



extern void ( png_set_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_16p background)
                                                         ;



extern png_uint_32 ( png_get_cHRM) (png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, double *red_y, double *green_x, double *green_y, double *blue_x, double *blue_y);



extern png_uint_32 ( png_get_cHRM_XYZ) (png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, double *green_X, double *green_Y, double *green_Z, double *blue_X, double *blue_Y, double *blue_Z);



extern png_uint_32 ( png_get_cHRM_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, png_fixed_point *int_green_x, png_fixed_point *int_green_y, png_fixed_point *int_blue_x, png_fixed_point *int_blue_y);





extern png_uint_32 ( png_get_cHRM_XYZ_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, png_fixed_point *int_blue_X, png_fixed_point *int_blue_Y, png_fixed_point *int_blue_Z);
# 2123 "../../../libs/png/png.h"
extern void ( png_set_cHRM) (png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, double green_y, double blue_x, double blue_y);



extern void ( png_set_cHRM_XYZ) (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, double green_X, double green_Y, double green_Z, double blue_X, double blue_Y, double blue_Z);



extern void ( png_set_cHRM_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, png_fixed_point int_blue_y);





extern void ( png_set_cHRM_XYZ_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, png_fixed_point int_blue_X, png_fixed_point int_blue_Y, png_fixed_point int_blue_Z);
# 2146 "../../../libs/png/png.h"
extern png_uint_32 ( png_get_gAMA) (png_const_structrp png_ptr, png_const_inforp info_ptr, double *file_gamma);

extern png_uint_32 ( png_get_gAMA_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_file_gamma);





extern void ( png_set_gAMA) (png_const_structrp png_ptr, png_inforp info_ptr, double file_gamma);

extern void ( png_set_gAMA_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_file_gamma);




extern png_uint_32 ( png_get_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_16p *hist)
                                             ;



extern void ( png_set_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_uint_16p hist)
                                                  ;


extern png_uint_32 ( png_get_IHDR) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, int *compression_method, int *filter_method)


                                                 ;

extern void ( png_set_IHDR) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_method, int compression_method, int filter_method)


                       ;


extern png_uint_32 ( png_get_oFFs) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_int_32 *offset_x, png_int_32 *offset_y, int *unit_type)

                   ;



extern void ( png_set_oFFs) (png_const_structrp png_ptr, png_inforp info_ptr, png_int_32 offset_x, png_int_32 offset_y, int unit_type)

                   ;



extern png_uint_32 ( png_get_pCAL) (png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, png_int_32 *X1, int *type, int *nparams, png_charp *units, png_charpp *params)


                        ;



extern void ( png_set_pCAL) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp purpose, png_int_32 X0, png_int_32 X1, int type, int nparams, png_const_charp units, png_charpp params)

                                                                     ;



extern png_uint_32 ( png_get_pHYs) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, int *unit_type)

                    ;



extern void ( png_set_pHYs) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 res_x, png_uint_32 res_y, int unit_type)
                                                                              ;


extern png_uint_32 ( png_get_PLTE) (png_const_structrp png_ptr, png_inforp info_ptr, png_colorp *palette, int *num_palette)
                                                               ;

extern void ( png_set_PLTE) (png_structrp png_ptr, png_inforp info_ptr, png_const_colorp palette, int num_palette)
                                                                    ;


extern png_uint_32 ( png_get_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_8p *sig_bit)
                                                ;



extern void ( png_set_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_8p sig_bit)
                                                     ;



extern png_uint_32 ( png_get_sRGB) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *file_srgb_intent)
                                                      ;



extern void ( png_set_sRGB) (png_const_structrp png_ptr, png_inforp info_ptr, int srgb_intent)
                                          ;
extern void ( png_set_sRGB_gAMA_and_cHRM) (png_const_structrp png_ptr, png_inforp info_ptr, int srgb_intent)
                                          ;



extern png_uint_32 ( png_get_iCCP) (png_const_structrp png_ptr, png_inforp info_ptr, png_charpp name, int *compression_type, png_bytepp profile, png_uint_32 *proflen)

                                              ;



extern void ( png_set_iCCP) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp name, int compression_type, png_const_bytep profile, png_uint_32 proflen)

                                                  ;



extern int ( png_get_sPLT) (png_const_structrp png_ptr, png_inforp info_ptr, png_sPLT_tpp entries)
                                               ;



extern void ( png_set_sPLT) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_sPLT_tp entries, int nentries)
                                                                  ;




extern int ( png_get_text) (png_const_structrp png_ptr, png_inforp info_ptr, png_textp *text_ptr, int *num_text)
                                                             ;
# 2280 "../../../libs/png/png.h"
extern void ( png_set_text) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_textp text_ptr, int num_text)
                                                                 ;



extern png_uint_32 ( png_get_tIME) (png_const_structrp png_ptr, png_inforp info_ptr, png_timep *mod_time)
                                              ;



extern void ( png_set_tIME) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_timep mod_time)
                                                   ;



extern png_uint_32 ( png_get_tRNS) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, png_color_16p *trans_color)

                                ;



extern void ( png_set_tRNS) (png_structrp png_ptr, png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, png_const_color_16p trans_color)

                                     ;



extern png_uint_32 ( png_get_sCAL) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, double *width, double *height);
# 2316 "../../../libs/png/png.h"
extern png_uint_32 ( png_get_sCAL_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_fixed_point *width, png_fixed_point *height);



extern png_uint_32 ( png_get_sCAL_s) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_charpp swidth, png_charpp sheight)

                                           ;

extern void ( png_set_sCAL) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, double width, double height);

extern void ( png_set_sCAL_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_fixed_point width, png_fixed_point height);


extern void ( png_set_sCAL_s) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_const_charp swidth, png_const_charp sheight)

                                                     ;
# 2433 "../../../libs/png/png.h"
extern void ( png_set_keep_unknown_chunks) (png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks)
                                                          ;





extern int ( png_handle_as_unknown) (png_const_structrp png_ptr, png_const_bytep chunk_name)
                                ;



extern void ( png_set_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, int num_unknowns)

                      ;
# 2457 "../../../libs/png/png.h"
extern void ( png_set_unknown_chunk_location) (png_const_structrp png_ptr, png_inforp info_ptr, int chunk, int location)
                                                                               ;

extern int ( png_get_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_unknown_chunkpp entries)
                                                      ;






extern void ( png_set_invalid) (png_const_structrp png_ptr, png_inforp info_ptr, int mask)
                                   ;




extern void ( png_read_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params)
                                      ;


extern void ( png_write_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params)
                                      ;



extern png_const_charp ( png_get_copyright) (png_const_structrp png_ptr)
                                 ;
extern png_const_charp ( png_get_header_ver) (png_const_structrp png_ptr)
                                 ;
extern png_const_charp ( png_get_header_version) (png_const_structrp png_ptr)
                                 ;
extern png_const_charp ( png_get_libpng_ver) (png_const_structrp png_ptr)
                                 ;


extern png_uint_32 ( png_permit_mng_features) (png_structrp png_ptr, png_uint_32 mng_features_permitted)
                                        ;
# 2514 "../../../libs/png/png.h"
extern void ( png_set_user_limits) (png_structrp png_ptr, png_uint_32 user_width_max, png_uint_32 user_height_max)
                                                             ;
extern png_uint_32 ( png_get_user_width_max) (png_const_structrp png_ptr)
                                 ;
extern png_uint_32 ( png_get_user_height_max) (png_const_structrp png_ptr)
                                 ;

extern void ( png_set_chunk_cache_max) (png_structrp png_ptr, png_uint_32 user_chunk_cache_max)
                                      ;
extern png_uint_32 ( png_get_chunk_cache_max) (png_const_structrp png_ptr)
                                 ;

extern void ( png_set_chunk_malloc_max) (png_structrp png_ptr, png_alloc_size_t user_chunk_cache_max)
                                           ;
extern png_alloc_size_t ( png_get_chunk_malloc_max) (png_const_structrp png_ptr)
                                 ;



extern png_uint_32 ( png_get_pixels_per_inch) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;

extern png_uint_32 ( png_get_x_pixels_per_inch) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;

extern png_uint_32 ( png_get_y_pixels_per_inch) (png_const_structrp png_ptr, png_const_inforp info_ptr)
                                                            ;

extern float ( png_get_x_offset_inches) (png_const_structrp png_ptr, png_const_inforp info_ptr);


extern png_fixed_point ( png_get_x_offset_inches_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);



extern float ( png_get_y_offset_inches) (png_const_structrp png_ptr, png_const_inforp info_ptr);


extern png_fixed_point ( png_get_y_offset_inches_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);




extern png_uint_32 ( png_get_pHYs_dpi) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, int *unit_type)

                    ;





extern png_uint_32 ( png_get_io_state) (png_const_structrp png_ptr);





extern png_uint_32 ( png_get_io_chunk_type) (png_const_structrp png_ptr)
                                 ;
# 2691 "../../../libs/png/png.h"
extern png_uint_32 ( png_get_uint_32) (png_const_bytep buf);
extern png_uint_16 ( png_get_uint_16) (png_const_bytep buf);
extern png_int_32 ( png_get_int_32) (png_const_bytep buf);


extern png_uint_32 ( png_get_uint_31) (png_const_structrp png_ptr, png_const_bytep buf)
                         ;




extern void ( png_save_uint_32) (png_bytep buf, png_uint_32 i);


extern void ( png_save_int_32) (png_bytep buf, png_int_32 i);







extern void ( png_save_uint_16) (png_bytep buf, unsigned int i);
# 2805 "../../../libs/png/png.h"
typedef struct png_control *png_controlp;
typedef struct
{
   png_controlp opaque;
   png_uint_32 version;
   png_uint_32 width;
   png_uint_32 height;
   png_uint_32 format;
   png_uint_32 flags;
   png_uint_32 colormap_entries;
# 2839 "../../../libs/png/png.h"
   png_uint_32 warning_or_error;

   char message[64];
} png_image, *png_imagep;
# 3105 "../../../libs/png/png.h"
extern int ( png_image_begin_read_from_file) (png_imagep image, const char *file_name)
                          ;




extern int ( png_image_begin_read_from_stdio) (png_imagep image, FILE* file)
               ;



extern int ( png_image_begin_read_from_memory) (png_imagep image, png_const_voidp memory, png_size_t size)
                                            ;


extern int ( png_image_finish_read) (png_imagep image, png_const_colorp background, void *buffer, png_int_32 row_stride, void *colormap)

                   ;
# 3155 "../../../libs/png/png.h"
extern void ( png_image_free) (png_imagep image);
# 3179 "../../../libs/png/png.h"
extern int ( png_image_write_to_file) (png_imagep image, const char *file, int convert_to_8bit, const void *buffer, png_int_32 row_stride, const void *colormap)

                                                ;


extern int ( png_image_write_to_stdio) (png_imagep image, FILE *file, int convert_to_8_bit, const void *buffer, png_int_32 row_stride, const void *colormap)

                         ;
# 3212 "../../../libs/png/png.h"
extern void ( png_set_check_for_invalid_index) (png_structrp png_ptr, int allowed)
                                        ;

extern int ( png_get_palette_max) (png_const_structp png_ptr, png_const_infop info_ptr)
                              ;
# 3254 "../../../libs/png/png.h"
extern int ( png_set_option) (png_structrp png_ptr, int option, int onoff)
              ;
# 295 "../../../libs/png/pngpriv.h" 2
# 437 "../../../libs/png/pngpriv.h"
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\float.h" 1 3 4
# 438 "../../../libs/png/pngpriv.h" 2
# 449 "../../../libs/png/pngpriv.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 1 3 4
# 28 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 3 4




# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\huge_val.h" 1 3 4
# 33 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 2 3 4
# 45 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathdef.h" 1 3 4
# 46 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 2 3 4
# 69 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathcalls.h" 1 3 4
# 52 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathcalls.h" 3 4


extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 98 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathcalls.h" 3 4


extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 151 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathcalls.h" 3 4


extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 176 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathcalls.h" 3 4


extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

# 230 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathcalls.h" 3 4
extern int __isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 70 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 2 3 4
# 426 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\mathinline.h" 1 3 4
# 427 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 2 3 4
# 488 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\math.h" 3 4

# 450 "../../../libs/png/pngpriv.h" 2
# 814 "../../../libs/png/pngpriv.h"
# 1 "../../../libs/png/pngstruct.h" 1
# 31 "../../../libs/png/pngstruct.h"
# 1 "../../../libs/zlib/src/zlib.h" 1
# 34 "../../../libs/zlib/src/zlib.h"
# 1 "../../../libs/zlib/src/zconf.h" 1
# 368 "../../../libs/zlib/src/zconf.h"
typedef unsigned char Byte;

typedef unsigned int uInt;
typedef unsigned long uLong;





   typedef Byte Bytef;

typedef char charf;
typedef int intf;
typedef uInt uIntf;
typedef uLong uLongf;


   typedef void const *voidpc;
   typedef void *voidpf;
   typedef void *voidp;







# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 1 3 4
# 396 "../../../libs/zlib/src/zconf.h" 2
# 406 "../../../libs/zlib/src/zconf.h"
   typedef unsigned z_crc_t;
# 421 "../../../libs/zlib/src/zconf.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4

# 44 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 98 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
typedef __pid_t pid_t;
# 109 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
typedef __ssize_t ssize_t;
# 149 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 150 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4
# 197 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 238 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 276 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4

# 422 "../../../libs/zlib/src/zconf.h" 2





# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 1 3 4
# 98 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 428 "../../../libs/zlib/src/zconf.h" 2
# 452 "../../../libs/zlib/src/zconf.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4

# 202 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix_opt.h" 1 3 4
# 203 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4
# 226 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 227 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4
# 287 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 334 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 353 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 417 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 432 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 444 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);
# 469 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 497 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 511 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 531 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 543 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 563 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 603 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\confname.h" 1 3 4
# 24 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));
# 628 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
# 646 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 667 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));







extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 700 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 717 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 756 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));
# 770 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));
# 790 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;
# 826 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 835 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
# 956 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int fsync (int __fd);
# 1151 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4

# 453 "../../../libs/zlib/src/zconf.h" 2
# 35 "../../../libs/zlib/src/zlib.h" 2
# 80 "../../../libs/zlib/src/zlib.h"
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);

struct internal_state;

typedef struct z_stream_s {
    const Bytef *next_in;
    uInt avail_in;
    uLong total_in;

    Bytef *next_out;
    uInt avail_out;
    uLong total_out;

    const char *msg;
    struct internal_state *state;

    alloc_func zalloc;
    free_func zfree;
    voidpf opaque;

    int data_type;
    uLong adler;
    uLong reserved;
} z_stream;

typedef z_stream *z_streamp;





typedef struct gz_header_s {
    int text;
    uLong time;
    int xflags;
    int os;
    Bytef *extra;
    uInt extra_len;
    uInt extra_max;
    Bytef *name;
    uInt name_max;
    Bytef *comment;
    uInt comm_max;
    int hcrc;
    int done;

} gz_header;

typedef gz_header *gz_headerp;
# 216 "../../../libs/zlib/src/zlib.h"
extern const char * zlibVersion (void);
# 246 "../../../libs/zlib/src/zlib.h"
extern int deflate (z_streamp strm, int flush);
# 353 "../../../libs/zlib/src/zlib.h"
extern int deflateEnd (z_streamp strm);
# 392 "../../../libs/zlib/src/zlib.h"
extern int inflate (z_streamp strm, int flush);
# 508 "../../../libs/zlib/src/zlib.h"
extern int inflateEnd (z_streamp strm);
# 587 "../../../libs/zlib/src/zlib.h"
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength)

                                                               ;
# 631 "../../../libs/zlib/src/zlib.h"
extern int deflateCopy (z_streamp dest, z_streamp source)
                                                      ;
# 649 "../../../libs/zlib/src/zlib.h"
extern int deflateReset (z_streamp strm);
# 660 "../../../libs/zlib/src/zlib.h"
extern int deflateParams (z_streamp strm, int level, int strategy)

                                                    ;
# 681 "../../../libs/zlib/src/zlib.h"
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain)



                                                   ;
# 698 "../../../libs/zlib/src/zlib.h"
extern uLong deflateBound (z_streamp strm, uLong sourceLen)
                                                        ;
# 713 "../../../libs/zlib/src/zlib.h"
extern int deflatePending (z_streamp strm, unsigned *pending, int *bits)

                                                  ;
# 728 "../../../libs/zlib/src/zlib.h"
extern int deflatePrime (z_streamp strm, int bits, int value)

                                                ;
# 745 "../../../libs/zlib/src/zlib.h"
extern int deflateSetHeader (z_streamp strm, gz_headerp head)
                                                          ;
# 819 "../../../libs/zlib/src/zlib.h"
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength)

                                                               ;
# 842 "../../../libs/zlib/src/zlib.h"
extern int inflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength)

                                                                ;
# 857 "../../../libs/zlib/src/zlib.h"
extern int inflateSync (z_streamp strm);
# 876 "../../../libs/zlib/src/zlib.h"
extern int inflateCopy (z_streamp dest, z_streamp source)
                                                      ;
# 892 "../../../libs/zlib/src/zlib.h"
extern int inflateReset (z_streamp strm);
# 902 "../../../libs/zlib/src/zlib.h"
extern int inflateReset2 (z_streamp strm, int windowBits)
                                                      ;
# 914 "../../../libs/zlib/src/zlib.h"
extern int inflatePrime (z_streamp strm, int bits, int value)

                                                ;
# 935 "../../../libs/zlib/src/zlib.h"
extern long inflateMark (z_streamp strm);
# 963 "../../../libs/zlib/src/zlib.h"
extern int inflateGetHeader (z_streamp strm, gz_headerp head)
                                                          ;
# 1025 "../../../libs/zlib/src/zlib.h"
typedef unsigned (*in_func) (void *, const unsigned char * *)
                                                                   ;
typedef int (*out_func) (void *, unsigned char *, unsigned);

extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc)

                                                                      ;
# 1099 "../../../libs/zlib/src/zlib.h"
extern int inflateBackEnd (z_streamp strm);







extern uLong zlibCompileFlags (void);
# 1160 "../../../libs/zlib/src/zlib.h"
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen)
                                                                       ;
# 1174 "../../../libs/zlib/src/zlib.h"
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level)

                                             ;
# 1190 "../../../libs/zlib/src/zlib.h"
extern uLong compressBound (uLong sourceLen);






extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen)
                                                                         ;
# 1224 "../../../libs/zlib/src/zlib.h"
typedef struct gzFile_s *gzFile;
# 1264 "../../../libs/zlib/src/zlib.h"
extern gzFile gzdopen (int fd, const char *mode);
# 1287 "../../../libs/zlib/src/zlib.h"
extern int gzbuffer (gzFile file, unsigned size);
# 1304 "../../../libs/zlib/src/zlib.h"
extern int gzsetparams (gzFile file, int level, int strategy);
# 1313 "../../../libs/zlib/src/zlib.h"
extern int gzread (gzFile file, voidp buf, unsigned len);
# 1341 "../../../libs/zlib/src/zlib.h"
extern int gzwrite (gzFile file, voidpc buf, unsigned len)
                                                          ;






extern int gzprintf (gzFile file, const char *format, ...);
# 1364 "../../../libs/zlib/src/zlib.h"
extern int gzputs (gzFile file, const char *s);







extern char * gzgets (gzFile file, char *buf, int len);
# 1385 "../../../libs/zlib/src/zlib.h"
extern int gzputc (gzFile file, int c);





extern int gzgetc (gzFile file);
# 1400 "../../../libs/zlib/src/zlib.h"
extern int gzungetc (int c, gzFile file);
# 1412 "../../../libs/zlib/src/zlib.h"
extern int gzflush (gzFile file, int flush);
# 1447 "../../../libs/zlib/src/zlib.h"
extern int gzrewind (gzFile file);
# 1475 "../../../libs/zlib/src/zlib.h"
extern int gzeof (gzFile file);
# 1490 "../../../libs/zlib/src/zlib.h"
extern int gzdirect (gzFile file);
# 1511 "../../../libs/zlib/src/zlib.h"
extern int gzclose (gzFile file);
# 1524 "../../../libs/zlib/src/zlib.h"
extern int gzclose_r (gzFile file);
extern int gzclose_w (gzFile file);
# 1536 "../../../libs/zlib/src/zlib.h"
extern const char * gzerror (gzFile file, int *errnum);
# 1552 "../../../libs/zlib/src/zlib.h"
extern void gzclearerr (gzFile file);
# 1569 "../../../libs/zlib/src/zlib.h"
extern uLong adler32 (uLong adler, const Bytef *buf, uInt len);
# 1600 "../../../libs/zlib/src/zlib.h"
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
# 1633 "../../../libs/zlib/src/zlib.h"
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size)
                                                                           ;
extern int inflateInit_ (z_streamp strm, const char *version, int stream_size)
                                                                           ;
extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size)


                                                       ;
extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size)
                                                                            ;
extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size)


                                                          ;
# 1670 "../../../libs/zlib/src/zlib.h"
struct gzFile_s {
    unsigned have;
    unsigned char *next;
    off_t pos;
};
extern int gzgetc_ (gzFile file);
# 1725 "../../../libs/zlib/src/zlib.h"
   extern gzFile gzopen (const char *, const char *);
   extern off_t gzseek (gzFile, off_t, int);
   extern off_t gztell (gzFile);
   extern off_t gzoffset (gzFile);
   extern uLong adler32_combine (uLong, uLong, off_t);
   extern uLong crc32_combine (uLong, uLong, off_t);
# 1742 "../../../libs/zlib/src/zlib.h"
    struct internal_state {int dummy;};



extern const char * zError (int);
extern int inflateSyncPoint (z_streamp);
extern const z_crc_t * get_crc_table (void);
extern int inflateUndermine (z_streamp, int);
extern int inflateResetKeep (z_streamp);
extern int deflateResetKeep (z_streamp);






extern int gzvprintf (gzFile file, const char *format, va_list va)

                                                              ;
# 32 "../../../libs/png/pngstruct.h" 2
# 62 "../../../libs/png/pngstruct.h"
typedef struct png_compression_buffer
{
   struct png_compression_buffer *next;
   png_byte output[1];
} png_compression_buffer, *png_compression_bufferp;
# 84 "../../../libs/png/pngstruct.h"
typedef struct png_xy
{
   png_fixed_point redx, redy;
   png_fixed_point greenx, greeny;
   png_fixed_point bluex, bluey;
   png_fixed_point whitex, whitey;
} png_xy;




typedef struct png_XYZ
{
   png_fixed_point red_X, red_Y, red_Z;
   png_fixed_point green_X, green_Y, green_Z;
   png_fixed_point blue_X, blue_Y, blue_Z;
} png_XYZ;
# 113 "../../../libs/png/pngstruct.h"
typedef struct png_colorspace
{

   png_fixed_point gamma;



   png_xy end_points_xy;
   png_XYZ end_points_XYZ;
   png_uint_16 rendering_intent;



   png_uint_16 flags;
} png_colorspace, * __restrict png_colorspacerp;

typedef const png_colorspace * __restrict png_const_colorspacerp;
# 148 "../../../libs/png/pngstruct.h"
typedef struct png_line_index_struct
{

   z_streamp z_state;


   png_uint_32 stream_idat_position;




   png_uint_32 bytes_left_in_idat;


   png_bytep prev_row;
} png_line_index;
typedef png_line_index * png_line_indexp;

typedef struct png_index_struct
{


   png_uint_32 stream_idat_position;




   png_uint_32 size[7];


   png_uint_32 step[7];


   png_line_indexp *pass_line_index[7];
} png_index;
typedef png_index * png_indexp;




struct png_struct_def
{

   jmp_buf jmp_buf_local;
   png_longjmp_ptr longjmp_fn;
   jmp_buf *jmp_buf_ptr;
   size_t jmp_buf_size;

   png_error_ptr error_fn;

   png_error_ptr warning_fn;

   png_voidp error_ptr;
   png_rw_ptr write_data_fn;
   png_rw_ptr read_data_fn;

   png_seek_ptr seek_data_fn;

   png_voidp io_ptr;


   png_user_transform_ptr read_user_transform_fn;



   png_user_transform_ptr write_user_transform_fn;






   png_voidp user_transform_ptr;
   png_byte user_transform_depth;
   png_byte user_transform_channels;



   png_uint_32 mode;
   png_uint_32 flags;
   png_uint_32 transformations;

   png_uint_32 zowner;
   z_stream zstream;


   png_compression_bufferp zbuffer_list;
   uInt zbuffer_size;

   int zlib_level;
   int zlib_method;
   int zlib_window_bits;
   int zlib_mem_level;
   int zlib_strategy;



   int zlib_text_level;
   int zlib_text_method;
   int zlib_text_window_bits;
   int zlib_text_mem_level;
   int zlib_text_strategy;




   int zlib_set_level;
   int zlib_set_method;
   int zlib_set_window_bits;
   int zlib_set_mem_level;
   int zlib_set_strategy;


   png_uint_32 width;
   png_uint_32 height;
   png_uint_32 num_rows;
   png_uint_32 usr_width;
   png_size_t rowbytes;
   png_uint_32 iwidth;
   png_uint_32 row_number;
   png_uint_32 chunk_name;
   png_bytep prev_row;


   png_bytep row_buf;



   png_bytep sub_row;
   png_bytep up_row;
   png_bytep avg_row;
   png_bytep paeth_row;

   png_size_t info_rowbytes;

   png_uint_32 idat_size;
   png_uint_32 crc;
   png_colorp palette;
   png_uint_16 num_palette;



   int num_palette_max;


   png_uint_16 num_trans;
   png_byte compression;
   png_byte filter;
   png_byte interlaced;
   png_byte pass;
   png_byte do_filter;
   png_byte color_type;
   png_byte bit_depth;
   png_byte usr_bit_depth;
   png_byte pixel_depth;
   png_byte channels;

   png_byte usr_channels;

   png_byte sig_bytes;
   png_byte maximum_pixel_depth;

   png_byte transformed_pixel_depth;


   png_uint_16 filler;




   png_byte background_gamma_type;
   png_fixed_point background_gamma;
   png_color_16 background;

   png_color_16 background_1;




   png_flush_ptr output_flush_fn;
   png_uint_32 flush_dist;
   png_uint_32 flush_rows;



   int gamma_shift;
   png_fixed_point screen_gamma;

   png_bytep gamma_table;
   png_uint_16pp gamma_16_table;



   png_bytep gamma_from_1;
   png_bytep gamma_to_1;
   png_uint_16pp gamma_16_from_1;
   png_uint_16pp gamma_16_to_1;




   png_color_8 sig_bit;



   png_color_8 shift;




   png_bytep trans_alpha;
   png_color_16 trans_color;


   png_read_status_ptr read_row_fn;
   png_write_status_ptr write_row_fn;

   png_progressive_info_ptr info_fn;
   png_progressive_row_ptr row_fn;
   png_progressive_end_ptr end_fn;
   png_bytep save_buffer_ptr;
   png_bytep save_buffer;
   png_bytep current_buffer_ptr;
   png_bytep current_buffer;
   png_uint_32 push_length;
   png_uint_32 skip_length;
   png_size_t save_buffer_size;
   png_size_t save_buffer_max;
   png_size_t buffer_size;
   png_size_t current_buffer_size;
   int process_mode;
   int cur_palette;
# 393 "../../../libs/png/pngstruct.h"
   png_bytep palette_lookup;
   png_bytep quantize_index;



   png_byte heuristic_method;
   png_byte num_prev_filters;
   png_bytep prev_filters;
   png_uint_16p filter_weights;
   png_uint_16p inv_filter_weights;
   png_uint_16p filter_costs;
   png_uint_16p inv_filter_costs;




   png_byte options;





   char time_buffer[29];





   png_uint_32 free_me;


   png_voidp user_chunk_ptr;

   png_user_chunk_ptr read_user_chunk_fn;




   int unknown_default;
   unsigned int num_chunk_list;
   png_bytep chunk_list;





   png_byte rgb_to_gray_status;

   png_byte rgb_to_gray_coefficients_set;

   png_uint_16 rgb_to_gray_red_coeff;
   png_uint_16 rgb_to_gray_green_coeff;






   png_uint_32 mng_features_permitted;




   png_byte filter_type;






   png_voidp mem_ptr;
   png_malloc_ptr malloc_fn;
   png_free_ptr free_fn;



   png_bytep big_row_buf;



   png_bytep quantize_sort;
   png_bytep index_to_palette;

   png_bytep palette_to_index;




   png_byte compression_type;


   png_uint_32 user_width_max;
   png_uint_32 user_height_max;




   png_uint_32 user_chunk_cache_max;




   png_alloc_size_t user_chunk_malloc_max;







   png_unknown_chunk unknown_chunk;



  png_size_t old_big_row_buf_size;



  png_bytep read_buffer;
  png_alloc_size_t read_buffer_size;


  uInt IDAT_read_size;




   png_uint_32 io_state;



   png_bytep big_prev_row;


   void (*read_filter[5 -1])(png_row_infop row_info,
      png_bytep row, png_const_bytep prev_row);



   png_colorspace colorspace;




   png_indexp index;
   png_uint_32 total_data_read;


};
# 815 "../../../libs/png/pngpriv.h" 2
# 1 "../../../libs/png/pnginfo.h" 1
# 56 "../../../libs/png/pnginfo.h"
struct png_info_def
{

   png_uint_32 width;
   png_uint_32 height;
   png_uint_32 valid;
   png_size_t rowbytes;
   png_colorp palette;
   png_uint_16 num_palette;
   png_uint_16 num_trans;
   png_byte bit_depth;
   png_byte color_type;

   png_byte compression_type;
   png_byte filter_type;
   png_byte interlace_type;




   png_byte channels;
   png_byte pixel_depth;
   png_byte spare_byte;



   png_byte signature[8];
# 102 "../../../libs/png/pnginfo.h"
   png_colorspace colorspace;




   png_charp iccp_name;
   png_bytep iccp_profile;
   png_uint_32 iccp_proflen;
# 121 "../../../libs/png/pnginfo.h"
   int num_text;
   int max_text;
   png_textp text;






   png_time mod_time;
# 140 "../../../libs/png/pnginfo.h"
   png_color_8 sig_bit;
# 154 "../../../libs/png/pnginfo.h"
   png_bytep trans_alpha;
   png_color_16 trans_color;
# 165 "../../../libs/png/pnginfo.h"
   png_color_16 background;
# 174 "../../../libs/png/pnginfo.h"
   png_int_32 x_offset;
   png_int_32 y_offset;
   png_byte offset_unit_type;







   png_uint_32 x_pixels_per_unit;
   png_uint_32 y_pixels_per_unit;
   png_byte phys_unit_type;
# 196 "../../../libs/png/pnginfo.h"
   png_uint_16p hist;
# 211 "../../../libs/png/pnginfo.h"
   png_charp pcal_purpose;
   png_int_32 pcal_X0;
   png_int_32 pcal_X1;
   png_charp pcal_units;
   png_charpp pcal_params;
   png_byte pcal_type;
   png_byte pcal_nparams;



   png_uint_32 free_me;



   png_unknown_chunkp unknown_chunks;




   int unknown_chunks_num;




   png_sPLT_tp splt_palettes;
   int splt_palettes_num;
# 247 "../../../libs/png/pnginfo.h"
   png_byte scal_unit;
   png_charp scal_s_width;
   png_charp scal_s_height;






   png_bytepp row_pointers;


};
# 816 "../../../libs/png/pngpriv.h" 2
# 838 "../../../libs/png/pngpriv.h"
typedef const png_uint_16p * png_const_uint_16pp;





extern const png_uint_16 png_sRGB_table [256];





extern const png_uint_16 png_sRGB_base [512];
extern const png_byte png_sRGB_delta [512];
# 874 "../../../libs/png/pngpriv.h"
extern void png_zstream_error (png_structrp png_ptr, int ret)
             ;





extern void png_free_buffer_list (png_structrp png_ptr, png_compression_bufferp *list)
                                            ;
# 893 "../../../libs/png/pngpriv.h"
extern png_fixed_point png_fixed (png_const_structrp png_ptr, double fp, png_const_charp text)
                                              ;





extern int png_user_version_check (png_structrp png_ptr, png_const_charp user_png_ver)
                                           ;





extern __attribute__((__malloc__)) png_voidp png_malloc_base (png_const_structrp png_ptr, png_alloc_size_t size)
                                        ;






extern __attribute__((__malloc__)) png_voidp png_malloc_array (png_const_structrp png_ptr, int nelements, size_t element_size)
                                                     ;





extern __attribute__((__malloc__)) png_voidp png_realloc_array (png_const_structrp png_ptr, png_const_voidp array, int old_elements, int add_elements, size_t element_size)

                                      ;
# 933 "../../../libs/png/pngpriv.h"
extern __attribute__((__malloc__)) png_structp png_create_png_struct (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn)


                                        ;


extern void png_destroy_png_struct (png_structrp png_ptr)
             ;


extern void png_free_jmpbuf (png_structrp png_ptr);


extern __attribute__((__malloc__)) voidpf png_zalloc (voidpf png_ptr, uInt items, uInt size)
                 ;


extern void png_zfree (voidpf png_ptr, voidpf ptr);






extern void png_default_read_data (png_structp png_ptr, png_bytep data, png_size_t length)
                                                 ;


extern void png_push_fill_buffer (png_structp png_ptr, png_bytep buffer, png_size_t length)
                                                   ;


extern void png_default_write_data (png_structp png_ptr, png_bytep data, png_size_t length)
                                                 ;



extern void png_default_flush (png_structp png_ptr)
             ;




extern void png_reset_crc (png_structrp png_ptr);


extern void png_write_data (png_structrp png_ptr, png_const_bytep data, png_size_t length)
                                                       ;


extern void png_read_sig (png_structrp png_ptr, png_inforp info_ptr)
                                  ;


extern png_uint_32 png_read_chunk_header (png_structrp png_ptr)
             ;


extern void png_read_data (png_structrp png_ptr, png_bytep data, png_size_t length)
                                 ;


extern void png_crc_read (png_structrp png_ptr, png_bytep buf, png_uint_32 length)
                                  ;


extern int png_crc_finish (png_structrp png_ptr, png_uint_32 skip)
                               ;


extern int png_crc_error (png_structrp png_ptr);





extern void png_calculate_crc (png_structrp png_ptr, png_const_bytep ptr, png_size_t length)
                                                     ;


extern void png_flush (png_structrp png_ptr);







extern void png_write_IHDR (png_structrp png_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int compression_method, int filter_method, int interlace_method)

                                                                              ;

extern void png_write_PLTE (png_structrp png_ptr, png_const_colorp palette, png_uint_32 num_pal)
                                                            ;

extern void png_compress_IDAT (png_structrp png_ptr, png_const_bytep row_data, png_alloc_size_t row_data_length, int flush)

             ;

extern void png_write_IEND (png_structrp png_ptr);


extern void png_write_gAMA_fixed (png_structrp png_ptr, png_fixed_point file_gamma)
                                          ;



extern void png_write_sBIT (png_structrp png_ptr, png_const_color_8p sbit, int color_type)
                                                       ;



extern void png_write_cHRM_fixed (png_structrp png_ptr, const png_xy *xy)
                                 ;




extern void png_write_sRGB (png_structrp png_ptr, int intent)
                          ;



extern void png_write_iCCP (png_structrp png_ptr, png_const_charp name, png_const_bytep profile)
                                                             ;







extern void png_write_sPLT (png_structrp png_ptr, png_const_sPLT_tp palette)
                                         ;



extern void png_write_tRNS (png_structrp png_ptr, png_const_bytep trans, png_const_color_16p values, int number, int color_type)

                              ;



extern void png_write_bKGD (png_structrp png_ptr, png_const_color_16p values, int color_type)
                                                          ;



extern void png_write_hIST (png_structrp png_ptr, png_const_uint_16p hist, int num_hist)
                                                     ;




extern void png_write_tEXt (png_structrp png_ptr, png_const_charp key, png_const_charp text, png_size_t text_len)
                                                                             ;



extern void png_write_zTXt (png_structrp png_ptr, png_const_charp key, png_const_charp text, png_size_t text_len, int compression)
                                                                               ;



extern void png_write_iTXt (png_structrp png_ptr, int compression, png_const_charp key, png_const_charp lang, png_const_charp lang_key, png_const_charp text)

                                                              ;



extern int png_set_text_2 (png_const_structrp png_ptr, png_inforp info_ptr, png_const_textp text_ptr, int num_text)
                                                                           ;



extern void png_write_oFFs (png_structrp png_ptr, png_int_32 x_offset, png_int_32 y_offset, int unit_type)
                                                                       ;



extern void png_write_pCAL (png_structrp png_ptr, png_charp purpose, png_int_32 X0, png_int_32 X1, int type, int nparams, png_const_charp units, png_charpp params)

                                                        ;



extern void png_write_pHYs (png_structrp png_ptr, png_uint_32 x_pixels_per_unit, png_uint_32 y_pixels_per_unit, int unit_type)

                             ;



extern void png_write_tIME (png_structrp png_ptr, png_const_timep mod_time)
                                        ;



extern void png_write_sCAL_s (png_structrp png_ptr, int unit, png_const_charp width, png_const_charp height)
                                                                       ;



extern void png_write_finish_row (png_structrp png_ptr)
              ;


extern void png_write_start_row (png_structrp png_ptr)
              ;
# 1168 "../../../libs/png/pngpriv.h"
extern void png_combine_row (png_const_structrp png_ptr, png_bytep row, int display)
                                          ;
# 1178 "../../../libs/png/pngpriv.h"
extern void png_do_read_interlace (png_row_infop row_info, png_bytep row, int pass, png_uint_32 transformations)
                                                                    ;






extern void png_do_write_interlace (png_row_infop row_info, png_bytep row, int pass)
                                       ;





extern void png_read_filter_row (png_structrp pp, png_row_infop row_info, png_bytep row, png_const_bytep prev_row, int filter)
                                                                             ;

extern void png_read_filter_row_up_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                       ;
extern void png_read_filter_row_sub3_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                                 ;
extern void png_read_filter_row_sub4_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                                 ;
extern void png_read_filter_row_avg3_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                                 ;
extern void png_read_filter_row_avg4_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                                 ;
extern void png_read_filter_row_paeth3_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                                 ;
extern void png_read_filter_row_paeth4_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row)
                                                                 ;


extern void png_write_find_filter (png_structrp png_ptr, png_row_infop row_info)
                                      ;


extern void png_read_IDAT_data (png_structrp png_ptr, png_bytep output, png_alloc_size_t avail_out)
                                                           ;





extern void png_read_finish_IDAT (png_structrp png_ptr)
             ;




extern void png_read_finish_row (png_structrp png_ptr)
             ;




extern void png_read_start_row (png_structrp png_ptr);



extern void png_read_transform_info (png_structrp png_ptr, png_inforp info_ptr)
                                   ;





extern void png_do_strip_channel (png_row_infop row_info, png_bytep row, int at_start)
                                           ;




extern void png_do_swap (png_row_infop row_info, png_bytep row)
                             ;





extern void png_do_packswap (png_row_infop row_info, png_bytep row)
                             ;



extern void png_do_invert (png_row_infop row_info, png_bytep row)
                             ;



extern void png_do_bgr (png_row_infop row_info, png_bytep row)
                             ;







extern void png_handle_IHDR (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;
extern void png_handle_PLTE (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;
extern void png_handle_IEND (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;


extern void png_handle_bKGD (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_cHRM (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_gAMA (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_hIST (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_iCCP (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_iTXt (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_oFFs (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_pCAL (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_pHYs (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_sBIT (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_sCAL (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_sPLT (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_sRGB (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_tEXt (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_tIME (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_tRNS (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;



extern void png_handle_zTXt (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;


extern void png_check_chunk_name (png_structrp png_ptr, png_uint_32 chunk_name)
                                      ;

extern void png_handle_unknown (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length, int keep)
                                                                 ;
# 1383 "../../../libs/png/pngpriv.h"
extern int png_chunk_unknown_handling (png_const_structrp png_ptr, png_uint_32 chunk_name)
                                                                   ;







extern void png_do_read_transformations (png_structrp png_ptr, png_row_infop row_info)
                                     ;


extern void png_do_write_transformations (png_structrp png_ptr, png_row_infop row_info)
                                     ;



extern void png_init_read_transformations (png_structrp png_ptr)
              ;



extern void png_push_read_chunk (png_structrp png_ptr, png_inforp info_ptr)
                                   ;
extern void png_push_read_sig (png_structrp png_ptr, png_inforp info_ptr)
                                   ;
extern void png_push_check_crc (png_structrp png_ptr);
extern void png_push_crc_skip (png_structrp png_ptr, png_uint_32 length)
                                  ;
extern void png_push_crc_finish (png_structrp png_ptr)
              ;
extern void png_push_save_buffer (png_structrp png_ptr)
              ;
extern void png_push_restore_buffer (png_structrp png_ptr, png_bytep buffer, png_size_t buffer_length)
                                                          ;
extern void png_push_read_IDAT (png_structrp png_ptr);
extern void png_process_IDAT_data (png_structrp png_ptr, png_bytep buffer, png_size_t buffer_length)
                                                          ;
extern void png_push_process_row (png_structrp png_ptr)
              ;
extern void png_push_handle_unknown (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                      ;
extern void png_push_have_info (png_structrp png_ptr, png_inforp info_ptr)
                                  ;
extern void png_push_have_end (png_structrp png_ptr, png_inforp info_ptr)
                                  ;
extern void png_push_have_row (png_structrp png_ptr, png_bytep row)
                              ;
extern void png_push_read_end (png_structrp png_ptr, png_inforp info_ptr)
                                   ;
extern void png_process_some_data (png_structrp png_ptr, png_inforp info_ptr)
                                   ;
extern void png_read_push_finish_row (png_structrp png_ptr)
              ;

extern void png_push_handle_tEXt (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;
extern void png_push_read_tEXt (png_structrp png_ptr, png_inforp info_ptr)
                                   ;


extern void png_push_handle_zTXt (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;
extern void png_push_read_zTXt (png_structrp png_ptr, png_inforp info_ptr)
                                   ;


extern void png_push_handle_iTXt (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
                                                       ;
extern void png_push_read_iTXt (png_structrp png_ptr, png_inforp info_ptr)
                                   ;






extern void png_colorspace_set_gamma (png_const_structrp png_ptr, png_colorspacerp colorspace, png_fixed_point gAMA)
                                                                  ;





extern void png_colorspace_sync_info (png_const_structrp png_ptr, png_inforp info_ptr)
                                    ;


extern void png_colorspace_sync (png_const_structrp png_ptr, png_inforp info_ptr)
                                    ;
# 1484 "../../../libs/png/pngpriv.h"
extern int png_colorspace_set_chromaticities (png_const_structrp png_ptr, png_colorspacerp colorspace, const png_xy *xy, int preferred)

                              ;

extern int png_colorspace_set_endpoints (png_const_structrp png_ptr, png_colorspacerp colorspace, const png_XYZ *XYZ, int preferred)

                              ;


extern int png_colorspace_set_sRGB (png_const_structrp png_ptr, png_colorspacerp colorspace, int intent)
                                                       ;
# 1503 "../../../libs/png/pngpriv.h"
extern int png_colorspace_set_ICC (png_const_structrp png_ptr, png_colorspacerp colorspace, png_const_charp name, png_uint_32 profile_length, png_const_bytep profile, int color_type)


             ;



extern int png_icc_check_length (png_const_structrp png_ptr, png_colorspacerp colorspace, png_const_charp name, png_uint_32 profile_length)

                                          ;
extern int png_icc_check_header (png_const_structrp png_ptr, png_colorspacerp colorspace, png_const_charp name, png_uint_32 profile_length, png_const_bytep profile , int color_type)



             ;
extern int png_icc_check_tag_table (png_const_structrp png_ptr, png_colorspacerp colorspace, png_const_charp name, png_uint_32 profile_length, png_const_bytep profile )


                                                                         ;

extern void png_icc_set_sRGB ( png_const_structrp png_ptr, png_colorspacerp colorspace, png_const_bytep profile, uLong adler)

                                                    ;
# 1534 "../../../libs/png/pngpriv.h"
extern void png_colorspace_set_rgb_coefficients (png_structrp png_ptr)
                                     ;





extern void png_check_IHDR (png_const_structrp png_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_type, int compression_type, int filter_type)


                               ;




extern void png_do_check_palette_indexes (png_structrp png_ptr, png_row_infop row_info)
                                                            ;



extern __attribute__((__noreturn__)) void png_fixed_error (png_const_structrp png_ptr, png_const_charp name)
                                      ;






extern size_t png_safecat (png_charp buffer, size_t bufsize, size_t pos, png_const_charp string)
                                                 ;
# 1574 "../../../libs/png/pngpriv.h"
extern png_charp png_format_number (png_const_charp start, png_charp end, int format, png_alloc_size_t number)
                                                                 ;
# 1604 "../../../libs/png/pngpriv.h"
typedef char png_warning_parameters[8][
   32];

extern void png_warning_parameter (png_warning_parameters p, int number, png_const_charp string)
                                                 ;



extern void png_warning_parameter_unsigned (png_warning_parameters p, int number, int format, png_alloc_size_t value)

             ;



extern void png_warning_parameter_signed (png_warning_parameters p, int number, int format, png_int_32 value)

             ;

extern void png_formatted_warning (png_const_structrp png_ptr, png_warning_parameters p, png_const_charp message)
                                                                ;
# 1645 "../../../libs/png/pngpriv.h"
extern void png_app_warning (png_const_structrp png_ptr, png_const_charp message)
                                      ;




extern void png_app_error (png_const_structrp png_ptr, png_const_charp message)
                                      ;
# 1661 "../../../libs/png/pngpriv.h"
extern void png_chunk_report (png_const_structrp png_ptr, png_const_charp message, int error)
                                                 ;
# 1688 "../../../libs/png/pngpriv.h"
extern void png_ascii_from_fp (png_const_structrp png_ptr, png_charp ascii, png_size_t size, double fp, unsigned int precision)

             ;



extern void png_ascii_from_fixed (png_const_structrp png_ptr, png_charp ascii, png_size_t size, png_fixed_point fp)
                                                                   ;
# 1787 "../../../libs/png/pngpriv.h"
extern int png_check_fp_number (png_const_charp string, png_size_t size, int *statep, png_size_tp whereami)
                                                                 ;







extern int png_check_fp_string (png_const_charp string, png_size_t size)
                              ;
# 1808 "../../../libs/png/pngpriv.h"
extern int png_muldiv (png_fixed_point_p res, png_fixed_point a, png_int_32 multiplied_by, png_int_32 divided_by)
                                                              ;




extern png_fixed_point png_muldiv_warn (png_const_structrp png_ptr, png_fixed_point a, png_int_32 multiplied_by, png_int_32 divided_by)

                                    ;







extern png_fixed_point png_reciprocal (png_fixed_point a)
             ;






extern png_fixed_point png_reciprocal2 (png_fixed_point a, png_fixed_point b)
                                ;



extern int png_gamma_significant (png_fixed_point gamma_value)
             ;
# 1849 "../../../libs/png/pngpriv.h"
extern png_uint_16 png_gamma_correct (png_structrp png_ptr, unsigned int value, png_fixed_point gamma_value)
                                                              ;
extern png_uint_16 png_gamma_16bit_correct (unsigned int value, png_fixed_point gamma_value)
                                          ;
extern png_byte png_gamma_8bit_correct (unsigned int value, png_fixed_point gamma_value)
                                          ;
extern void png_destroy_gamma_table (png_structrp png_ptr)
             ;
extern void png_build_gamma_table (png_structrp png_ptr, int bit_depth)
                            ;






typedef struct png_control
{
   png_structp png_ptr;
   png_infop info_ptr;
   png_voidp error_buf;

   png_const_bytep memory;
   png_size_t size;

   unsigned int for_write :1;
   unsigned int owned_file :1;
} png_control;
# 1891 "../../../libs/png/pngpriv.h"
extern __attribute__((__noreturn__)) void ( png_safe_error) (png_structp png_ptr, png_const_charp error_message)
                                               ;


extern void ( png_safe_warning) (png_structp png_ptr, png_const_charp warning_message)
                                              ;




extern int png_safe_execute (png_imagep image, int (*function)(png_voidp), png_voidp arg)
                                                        ;




extern int png_image_error (png_imagep image, png_const_charp error_message)
                                            ;
# 1923 "../../../libs/png/pngpriv.h"
extern void png_init_filter_functions_neon (png_structp png_ptr, unsigned int bpp)
                                ;
# 1936 "../../../libs/png/pngpriv.h"
extern void png_seek_data (png_structp png_ptr, png_uint_32 length)
                                  ;
extern int png_opt_crc_finish (png_structrp png_ptr, png_uint_32 skip)
                                ;
extern void png_set_interlaced_pass (png_structrp png_ptr, int pass)
                        ;




# 1 "../../../libs/png/pngdebug.h" 1
# 1947 "../../../libs/png/pngpriv.h" 2
# 15 "../../../libs/png/pngwutil.c" 2
# 23 "../../../libs/png/pngwutil.c"
void
png_save_uint_32(png_bytep buf, png_uint_32 i)
{
   buf[0] = (png_byte)((i >> 24) & 0xff);
   buf[1] = (png_byte)((i >> 16) & 0xff);
   buf[2] = (png_byte)((i >> 8) & 0xff);
   buf[3] = (png_byte)(i & 0xff);
}





void
png_save_uint_16(png_bytep buf, unsigned int i)
{
   buf[0] = (png_byte)((i >> 8) & 0xff);
   buf[1] = (png_byte)(i & 0xff);
}
# 50 "../../../libs/png/pngwutil.c"
void
png_write_sig(png_structrp png_ptr)
{
   png_byte png_signature[8] = {137, 80, 78, 71, 13, 10, 26, 10};



   png_ptr->io_state = 0x0002 | 0x0010;



   png_write_data(png_ptr, &png_signature[png_ptr->sig_bytes],
      (png_size_t)(8 - png_ptr->sig_bytes));

   if (png_ptr->sig_bytes < 3)
      png_ptr->mode |= 0x1000;
}





static void
png_write_chunk_header(png_structrp png_ptr, png_uint_32 chunk_name,
    png_uint_32 length)
{
   png_byte buf[8];






   if (png_ptr == ((void *)0))
      return;





   png_ptr->io_state = 0x0002 | 0x0020;



   png_save_uint_32(buf, length);
   png_save_uint_32(buf + 4, chunk_name);
   png_write_data(png_ptr, buf, 8);


   png_ptr->chunk_name = chunk_name;


   png_reset_crc(png_ptr);

   png_calculate_crc(png_ptr, buf + 4, 4);





   png_ptr->io_state = 0x0002 | 0x0040;

}

void
png_write_chunk_start(png_structrp png_ptr, png_const_bytep chunk_string,
    png_uint_32 length)
{
   png_write_chunk_header(png_ptr, (((png_uint_32)(0xff&(chunk_string)[0]) << (24)) | ((png_uint_32)(0xff&(chunk_string)[1]) << (16)) | ((png_uint_32)(0xff&(chunk_string)[2]) << (8)) | ((png_uint_32)(0xff&(chunk_string)[3]) << (0))), length);
}






void
png_write_chunk_data(png_structrp png_ptr, png_const_bytep data,
    png_size_t length)
{

   if (png_ptr == ((void *)0))
      return;

   if (data != ((void *)0) && length > 0)
   {
      png_write_data(png_ptr, data, length);




      png_calculate_crc(png_ptr, data, length);
   }
}


void
png_write_chunk_end(png_structrp png_ptr)
{
   png_byte buf[4];

   if (png_ptr == ((void *)0)) return;





   png_ptr->io_state = 0x0002 | 0x0080;



   png_save_uint_32(buf, png_ptr->crc);

   png_write_data(png_ptr, buf, (png_size_t)4);
}
# 175 "../../../libs/png/pngwutil.c"
static void
png_write_complete_chunk(png_structrp png_ptr, png_uint_32 chunk_name,
   png_const_bytep data, png_size_t length)
{
   if (png_ptr == ((void *)0))
      return;


   if (length > ((png_uint_32)0x7fffffffL))
      png_error(png_ptr, "length exceeds PNG maxima");

   png_write_chunk_header(png_ptr, chunk_name, (png_uint_32)length);
   png_write_chunk_data(png_ptr, data, length);
   png_write_chunk_end(png_ptr);
}


void
png_write_chunk(png_structrp png_ptr, png_const_bytep chunk_string,
   png_const_bytep data, png_size_t length)
{
   png_write_complete_chunk(png_ptr, (((png_uint_32)(0xff&(chunk_string)[0]) << (24)) | ((png_uint_32)(0xff&(chunk_string)[1]) << (16)) | ((png_uint_32)(0xff&(chunk_string)[2]) << (8)) | ((png_uint_32)(0xff&(chunk_string)[3]) << (0))), data,
      length);
}





static png_alloc_size_t
png_image_size(png_structrp png_ptr)
{



   png_uint_32 h = png_ptr->height;

   if (png_ptr->rowbytes < 32768 && h < 32768)
   {
      if (png_ptr->interlaced)
      {



         png_uint_32 w = png_ptr->width;
         unsigned int pd = png_ptr->pixel_depth;
         png_alloc_size_t cb_base;
         int pass;

         for (cb_base=0, pass=0; pass<=6; ++pass)
         {
            png_uint_32 pw = (((w)+(((1<<((pass)>1?(7-(pass))>>1:3)) -1)-(((1& (pass))<<(3-(((pass)+1)>>1)))&7)))>>((pass)>1?(7-(pass))>>1:3));

            if (pw > 0)
               cb_base += (((pd) >= 8 ? ((png_size_t)(pw) * (((png_size_t)(pd)) >> 3)) : (( ((png_size_t)(pw) * ((png_size_t)(pd))) + 7) >> 3) )+1) * (((h)+(((1<<((pass)>2?(8-(pass))>>1:3)) -1)-(((1&~(pass))<<(3-((pass)>>1)))&7)))>>((pass)>2?(8-(pass))>>1:3));
         }

         return cb_base;
      }

      else
         return (png_ptr->rowbytes+1) * h;
   }

   else
      return 0xffffffffU;
}
# 250 "../../../libs/png/pngwutil.c"
static void
optimize_cmf(png_bytep data, png_alloc_size_t data_size)
{



   if (data_size <= 16384)
   {
      unsigned int z_cmf = data[0];

      if ((z_cmf & 0x0f) == 8 && (z_cmf & 0xf0) <= 0x70)
      {
         unsigned int z_cinfo;
         unsigned int half_z_window_size;

         z_cinfo = z_cmf >> 4;
         half_z_window_size = 1U << (z_cinfo + 7);

         if (data_size <= half_z_window_size)
         {
            unsigned int tmp;

            do
            {
               half_z_window_size >>= 1;
               --z_cinfo;
            }
            while (z_cinfo > 0 && data_size <= half_z_window_size);

            z_cmf = (z_cmf & 0x0f) | (z_cinfo << 4);

            data[0] = (png_byte)z_cmf;
            tmp = data[1] & 0xe0;
            tmp += 0x1f - ((z_cmf << 8) + tmp) % 0x1f;
            data[1] = (png_byte)tmp;
         }
      }
   }
}





static int
png_deflate_claim(png_structrp png_ptr, png_uint_32 owner,
   png_alloc_size_t data_size)
{
   if (png_ptr->zowner != 0)
   {
      char msg[64];

      (void)(((char*)(msg))[0]=(char)((owner)>>24), ((char*)(msg))[1]=(char)((owner)>>16), ((char*)(msg))[2]=(char)((owner)>>8), ((char*)(msg))[3]=(char)((owner)));
      msg[4] = ':';
      msg[5] = ' ';
      (void)(((char*)(msg+6))[0]=(char)((png_ptr->zowner)>>24), ((char*)(msg+6))[1]=(char)((png_ptr->zowner)>>16), ((char*)(msg+6))[2]=(char)((png_ptr->zowner)>>8), ((char*)(msg+6))[3]=(char)((png_ptr->zowner)));




      (void)png_safecat(msg, (sizeof msg), 10, " using zstream");

         png_warning(png_ptr, msg);


         if (png_ptr->zowner == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
         {
            png_ptr->zstream.msg = ("in use by IDAT");
            return (-2);
         }

         png_ptr->zowner = 0;



   }

   {
      int level = png_ptr->zlib_level;
      int method = png_ptr->zlib_method;
      int windowBits = png_ptr->zlib_window_bits;
      int memLevel = png_ptr->zlib_mem_level;
      int strategy;
      int ret;

      if (owner == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
      {
         if (png_ptr->flags & 0x0001)
            strategy = png_ptr->zlib_strategy;

         else if (png_ptr->do_filter != 0x08)
            strategy = 1;

         else
            strategy = 0;
      }

      else
      {

            level = png_ptr->zlib_text_level;
            method = png_ptr->zlib_text_method;
            windowBits = png_ptr->zlib_text_window_bits;
            memLevel = png_ptr->zlib_text_mem_level;
            strategy = png_ptr->zlib_text_strategy;
# 363 "../../../libs/png/pngwutil.c"
      }
# 372 "../../../libs/png/pngwutil.c"
      if (data_size <= 16384)
      {





         unsigned int half_window_size = 1U << (windowBits-1);

         while (data_size + 262 <= half_window_size)
         {
            half_window_size >>= 1;
            --windowBits;
         }
      }


      if ((png_ptr->flags & 0x0002) &&
         (png_ptr->zlib_set_level != level ||
         png_ptr->zlib_set_method != method ||
         png_ptr->zlib_set_window_bits != windowBits ||
         png_ptr->zlib_set_mem_level != memLevel ||
         png_ptr->zlib_set_strategy != strategy))
      {
         if (deflateEnd(&png_ptr->zstream) != 0)
            png_warning(png_ptr, "deflateEnd failed (ignored)");

         png_ptr->flags &= ~0x0002;
      }




      png_ptr->zstream.next_in = ((void *)0);
      png_ptr->zstream.avail_in = 0;
      png_ptr->zstream.next_out = ((void *)0);
      png_ptr->zstream.avail_out = 0;




      if (png_ptr->flags & 0x0002)
         ret = deflateReset(&png_ptr->zstream);

      else
      {
         ret = deflateInit2_((&png_ptr->zstream),(level),(method),(windowBits),(memLevel), (strategy), "1.2.8", (int)sizeof(z_stream))
                               ;

         if (ret == 0)
            png_ptr->flags |= 0x0002;
      }




      if (ret == 0)
         png_ptr->zowner = owner;

      else
         png_zstream_error(png_ptr, ret);

      return ret;
   }
}


void
png_free_buffer_list(png_structrp png_ptr, png_compression_bufferp *listp)
{
   png_compression_bufferp list = *listp;

   if (list != ((void *)0))
   {
      *listp = ((void *)0);

      do
      {
         png_compression_bufferp next = list->next;

         png_free(png_ptr, list);
         list = next;
      }
      while (list != ((void *)0));
   }
}
# 470 "../../../libs/png/pngwutil.c"
typedef struct
{
   png_const_bytep input;
   png_alloc_size_t input_len;
   png_uint_32 output_len;
   png_byte output[1024];
} compression_state;

static void
png_text_compress_init(compression_state *comp, png_const_bytep input,
   png_alloc_size_t input_len)
{
   comp->input = input;
   comp->input_len = input_len;
   comp->output_len = 0;
}


static int
png_text_compress(png_structrp png_ptr, png_uint_32 chunk_name,
   compression_state *comp, png_uint_32 prefix_len)
{
   int ret;
# 504 "../../../libs/png/pngwutil.c"
   ret = png_deflate_claim(png_ptr, chunk_name, comp->input_len);

   if (ret != 0)
      return ret;







   {
      png_compression_bufferp *end = &png_ptr->zbuffer_list;
      png_alloc_size_t input_len = comp->input_len;
      png_uint_32 output_len;


      png_ptr->zstream.next_in = (comp->input);
      png_ptr->zstream.avail_in = 0;
      png_ptr->zstream.next_out = comp->output;
      png_ptr->zstream.avail_out = (sizeof comp->output);

      output_len = png_ptr->zstream.avail_out;

      do
      {
         uInt avail_in = ((uInt)-1);

         if (avail_in > input_len)
            avail_in = (uInt)input_len;

         input_len -= avail_in;

         png_ptr->zstream.avail_in = avail_in;

         if (png_ptr->zstream.avail_out == 0)
         {
            png_compression_buffer *next;




            if (output_len + prefix_len > ((png_uint_32)0x7fffffffL))
            {
               ret = (-4);
               break;
            }




            next = *end;
            if (next == ((void *)0))
            {
               next = (png_malloc_base (png_ptr, (__builtin_offsetof (png_compression_buffer, output) + (png_ptr)->zbuffer_size)))
                                                                  ;

               if (next == ((void *)0))
               {
                  ret = (-4);
                  break;
               }


               next->next = ((void *)0);
               *end = next;
            }

            png_ptr->zstream.next_out = next->output;
            png_ptr->zstream.avail_out = png_ptr->zbuffer_size;
            output_len += png_ptr->zstream.avail_out;


            end = &next->next;
         }


         ret = deflate(&png_ptr->zstream,
            input_len > 0 ? 0 : 4);




         input_len += png_ptr->zstream.avail_in;
         png_ptr->zstream.avail_in = 0;
      }
      while (ret == 0);




      output_len -= png_ptr->zstream.avail_out;
      png_ptr->zstream.avail_out = 0;
      comp->output_len = output_len;





      if (output_len + prefix_len >= ((png_uint_32)0x7fffffffL))
      {
         png_ptr->zstream.msg = ("compressed data too long");
         ret = (-4);
      }

      else
         png_zstream_error(png_ptr, ret);


      png_ptr->zowner = 0;




      if (ret == 1 && input_len == 0)
      {

         optimize_cmf(comp->output, comp->input_len);





         return 0;
      }

      else
         return ret;
   }
}


static void
png_write_compressed_data_out(png_structrp png_ptr, compression_state *comp)
{
   png_uint_32 output_len = comp->output_len;
   png_const_bytep output = comp->output;
   png_uint_32 avail = (sizeof comp->output);
   png_compression_buffer *next = png_ptr->zbuffer_list;

   for (;;)
   {
      if (avail > output_len)
         avail = output_len;

      png_write_chunk_data(png_ptr, output, avail);

      output_len -= avail;

      if (output_len == 0 || next == ((void *)0))
         break;

      avail = png_ptr->zbuffer_size;
      output = next->output;
      next = next->next;
   }


   if (output_len > 0)
      png_error(png_ptr, "error writing ancillary chunked compressed data");
}
# 679 "../../../libs/png/pngwutil.c"
static png_uint_32
png_check_keyword(png_structrp png_ptr, png_const_charp key, png_bytep new_key)
{
   png_const_charp orig_key = key;
   png_uint_32 key_len = 0;
   int bad_character = 0;
   int space = 1;

   ((void)0);

   if (key == ((void *)0))
   {
      *new_key = 0;
      return 0;
   }

   while (*key && key_len < 79)
   {
      png_byte ch = (png_byte)(0xff & *key++);

      if ((ch > 32 && ch <= 126) || (ch >= 161 ))
         *new_key++ = ch, ++key_len, space = 0;

      else if (!space)
      {



         *new_key++ = 32, ++key_len, space = 1;


         if (ch != 32)
            bad_character = ch;
      }

      else if (!bad_character)
         bad_character = ch;
   }

   if (key_len > 0 && space)
   {
      --key_len, --new_key;
      if (!bad_character)
         bad_character = 32;
   }


   *new_key = 0;

   if (key_len == 0)
      return 0;


   if (*key)
      png_warning(png_ptr, "keyword truncated");

   else if (bad_character)
   {
      png_warning_parameters p;

      png_warning_parameter(p, 1, orig_key);
      png_warning_parameter_signed(p, 2, 4, bad_character);

      png_formatted_warning(png_ptr, p, "keyword \"@1\": bad character '0x@2'");
   }

   return key_len;
}






void
png_write_IHDR(png_structrp png_ptr, png_uint_32 width, png_uint_32 height,
    int bit_depth, int color_type, int compression_type, int filter_type,
    int interlace_type)
{
   png_byte buf[13];

   ((void)0);


   switch (color_type)
   {
      case 0:
         switch (bit_depth)
         {
            case 1:
            case 2:
            case 4:
            case 8:

            case 16:

               png_ptr->channels = 1; break;

            default:
               png_error(png_ptr,
                   "Invalid bit depth for grayscale image");
         }
         break;

      case (2):

         if (bit_depth != 8 && bit_depth != 16)



            png_error(png_ptr, "Invalid bit depth for RGB image");

         png_ptr->channels = 3;
         break;

      case (2 | 1):
         switch (bit_depth)
         {
            case 1:
            case 2:
            case 4:
            case 8:
               png_ptr->channels = 1;
               break;

            default:
               png_error(png_ptr, "Invalid bit depth for paletted image");
         }
         break;

      case (4):
         if (bit_depth != 8 && bit_depth != 16)
            png_error(png_ptr, "Invalid bit depth for grayscale+alpha image");

         png_ptr->channels = 2;
         break;

      case (2 | 4):

         if (bit_depth != 8 && bit_depth != 16)



            png_error(png_ptr, "Invalid bit depth for RGBA image");

         png_ptr->channels = 4;
         break;

      default:
         png_error(png_ptr, "Invalid image color type specified");
   }

   if (compression_type != 0)
   {
      png_warning(png_ptr, "Invalid compression type specified");
      compression_type = 0;
   }
# 846 "../../../libs/png/pngwutil.c"
   if (

       !((png_ptr->mng_features_permitted & 0x04) &&
       ((png_ptr->mode&0x1000) == 0) &&
       (color_type == (2) ||
        color_type == (2 | 4)) &&
       (filter_type == 64)) &&

       filter_type != 0)
   {
      png_warning(png_ptr, "Invalid filter type specified");
      filter_type = 0;
   }


   if (interlace_type != 0 &&
       interlace_type != 1)
   {
      png_warning(png_ptr, "Invalid interlace type specified");
      interlace_type = 1;
   }





   png_ptr->bit_depth = (png_byte)bit_depth;
   png_ptr->color_type = (png_byte)color_type;
   png_ptr->interlaced = (png_byte)interlace_type;

   png_ptr->filter_type = (png_byte)filter_type;

   png_ptr->compression_type = (png_byte)compression_type;
   png_ptr->width = width;
   png_ptr->height = height;

   png_ptr->pixel_depth = (png_byte)(bit_depth * png_ptr->channels);
   png_ptr->rowbytes = ((png_ptr->pixel_depth) >= 8 ? ((png_size_t)(width) * (((png_size_t)(png_ptr->pixel_depth)) >> 3)) : (( ((png_size_t)(width) * ((png_size_t)(png_ptr->pixel_depth))) + 7) >> 3) );

   png_ptr->usr_width = png_ptr->width;
   png_ptr->usr_bit_depth = png_ptr->bit_depth;
   png_ptr->usr_channels = png_ptr->channels;


   png_save_uint_32(buf, width);
   png_save_uint_32(buf + 4, height);
   buf[8] = (png_byte)bit_depth;
   buf[9] = (png_byte)color_type;
   buf[10] = (png_byte)compression_type;
   buf[11] = (png_byte)filter_type;
   buf[12] = (png_byte)interlace_type;


   png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(72) << (16)) | ((png_uint_32)(68) << (8)) | ((png_uint_32)(82) << (0))), buf, (png_size_t)13);

   if (!(png_ptr->do_filter))
   {
      if (png_ptr->color_type == (2 | 1) ||
          png_ptr->bit_depth < 8)
         png_ptr->do_filter = 0x08;

      else
         png_ptr->do_filter = (0x08 | 0x10 | 0x20 | 0x40 | 0x80);
   }

   png_ptr->mode = 0x01;
}





void
png_write_PLTE(png_structrp png_ptr, png_const_colorp palette,
    png_uint_32 num_pal)
{
   png_uint_32 i;
   png_const_colorp pal_ptr;
   png_byte buf[3];

   ((void)0);

   if ((

       !(png_ptr->mng_features_permitted & 0x01) &&

       num_pal == 0) || num_pal > 256)
   {
      if (png_ptr->color_type == (2 | 1))
      {
         png_error(png_ptr, "Invalid number of colors in palette");
      }

      else
      {
         png_warning(png_ptr, "Invalid number of colors in palette");
         return;
      }
   }

   if (!(png_ptr->color_type&2))
   {
      png_warning(png_ptr,
          "Ignoring request to write a PLTE chunk in grayscale PNG");

      return;
   }

   png_ptr->num_palette = (png_uint_16)num_pal;
   ((void)0);

   png_write_chunk_header(png_ptr, (((png_uint_32)(80) << (24)) | ((png_uint_32)(76) << (16)) | ((png_uint_32)(84) << (8)) | ((png_uint_32)(69) << (0))), (png_uint_32)(num_pal * 3));


   for (i = 0, pal_ptr = palette; i < num_pal; i++, pal_ptr++)
   {
      buf[0] = pal_ptr->red;
      buf[1] = pal_ptr->green;
      buf[2] = pal_ptr->blue;
      png_write_chunk_data(png_ptr, buf, (png_size_t)3);
   }
# 983 "../../../libs/png/pngwutil.c"
   png_write_chunk_end(png_ptr);
   png_ptr->mode |= 0x02;
}
# 1004 "../../../libs/png/pngwutil.c"
void
png_compress_IDAT(png_structrp png_ptr, png_const_bytep input,
   png_alloc_size_t input_len, int flush)
{
   if (png_ptr->zowner != (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
   {





      if (png_ptr->zbuffer_list == ((void *)0))
      {
         png_ptr->zbuffer_list = (png_malloc(png_ptr, (__builtin_offsetof (png_compression_buffer, output) + (png_ptr)->zbuffer_size)))
                                                                      ;
         png_ptr->zbuffer_list->next = ((void *)0);
      }

      else
         png_free_buffer_list(png_ptr, &png_ptr->zbuffer_list->next);


      if (png_deflate_claim(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))), png_image_size(png_ptr)) != 0)
         png_error(png_ptr, png_ptr->zstream.msg);




      png_ptr->zstream.next_out = png_ptr->zbuffer_list->output;
      png_ptr->zstream.avail_out = png_ptr->zbuffer_size;
   }





   png_ptr->zstream.next_in = (input);
   png_ptr->zstream.avail_in = 0;
   for (;;)
   {
      int ret;


      uInt avail = ((uInt)-1);

      if (avail > input_len)
         avail = (uInt)input_len;

      png_ptr->zstream.avail_in = avail;
      input_len -= avail;

      ret = deflate(&png_ptr->zstream, input_len > 0 ? 0 : flush);


      input_len += png_ptr->zstream.avail_in;
      png_ptr->zstream.avail_in = 0;





      if (png_ptr->zstream.avail_out == 0)
      {
         png_bytep data = png_ptr->zbuffer_list->output;
         uInt size = png_ptr->zbuffer_size;





            if (!(png_ptr->mode & 0x04) &&
               png_ptr->compression_type == 0)
               optimize_cmf(data, png_image_size(png_ptr));


         png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))), data, size);
         png_ptr->mode |= 0x04;

         png_ptr->zstream.next_out = data;
         png_ptr->zstream.avail_out = size;





         if (ret == 0 && flush != 0)
            continue;
      }




      if (ret == 0)
      {




         if (input_len == 0)
         {
            if (flush == 4)
               png_error(png_ptr, "Z_OK on Z_FINISH with output space");

            return;
         }
      }

      else if (ret == 1 && flush == 4)
      {



         png_bytep data = png_ptr->zbuffer_list->output;
         uInt size = png_ptr->zbuffer_size - png_ptr->zstream.avail_out;


            if (!(png_ptr->mode & 0x04) &&
               png_ptr->compression_type == 0)
               optimize_cmf(data, png_image_size(png_ptr));


         png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))), data, size);
         png_ptr->zstream.avail_out = 0;
         png_ptr->zstream.next_out = ((void *)0);
         png_ptr->mode |= 0x04 | 0x08;

         png_ptr->zowner = 0;
         return;
      }

      else
      {

         png_zstream_error(png_ptr, ret);
         png_error(png_ptr, png_ptr->zstream.msg);
      }
   }
}


void
png_write_IEND(png_structrp png_ptr)
{
   ((void)0);

   png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(69) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(68) << (0))), ((void *)0), (png_size_t)0);
   png_ptr->mode |= 0x10;
}



void
png_write_gAMA_fixed(png_structrp png_ptr, png_fixed_point file_gamma)
{
   png_byte buf[4];

   ((void)0);


   png_save_uint_32(buf, (png_uint_32)file_gamma);
   png_write_complete_chunk(png_ptr, (((png_uint_32)(103) << (24)) | ((png_uint_32)(65) << (16)) | ((png_uint_32)(77) << (8)) | ((png_uint_32)(65) << (0))), buf, (png_size_t)4);
}




void
png_write_sRGB(png_structrp png_ptr, int srgb_intent)
{
   png_byte buf[1];

   ((void)0);

   if (srgb_intent >= 4)
      png_warning(png_ptr,
          "Invalid sRGB rendering intent specified");

   buf[0]=(png_byte)srgb_intent;
   png_write_complete_chunk(png_ptr, (((png_uint_32)(115) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(66) << (0))), buf, (png_size_t)1);
}




void
png_write_iCCP(png_structrp png_ptr, png_const_charp name,
    png_const_bytep profile)
{
   png_uint_32 name_len;
   png_uint_32 profile_len;
   png_byte new_name[81];
   compression_state comp;

   ((void)0);




   if (profile == ((void *)0))
      png_error(png_ptr, "No profile for iCCP chunk");

   profile_len = (((png_uint_32)(*(profile)) << 24) + ((png_uint_32)(*((profile) + 1)) << 16) + ((png_uint_32)(*((profile) + 2)) << 8) + ((png_uint_32)(*((profile) + 3))));

   if (profile_len < 132)
      png_error(png_ptr, "ICC profile too short");

   if (profile_len & 0x03)
      png_error(png_ptr, "ICC profile length invalid (not a multiple of 4)");

   {
      png_uint_32 embedded_profile_len = (((png_uint_32)(*(profile)) << 24) + ((png_uint_32)(*((profile) + 1)) << 16) + ((png_uint_32)(*((profile) + 2)) << 8) + ((png_uint_32)(*((profile) + 3))));

      if (profile_len != embedded_profile_len)
         png_error(png_ptr, "Profile length does not match profile");
   }

   name_len = png_check_keyword(png_ptr, name, new_name);

   if (name_len == 0)
      png_error(png_ptr, "iCCP: invalid keyword");

   new_name[++name_len] = 0;


   ++name_len;

   png_text_compress_init(&comp, profile, profile_len);


   if (png_text_compress(png_ptr, (((png_uint_32)(105) << (24)) | ((png_uint_32)(67) << (16)) | ((png_uint_32)(67) << (8)) | ((png_uint_32)(80) << (0))), &comp, name_len) != 0)
      png_error(png_ptr, png_ptr->zstream.msg);

   png_write_chunk_header(png_ptr, (((png_uint_32)(105) << (24)) | ((png_uint_32)(67) << (16)) | ((png_uint_32)(67) << (8)) | ((png_uint_32)(80) << (0))), name_len + comp.output_len);

   png_write_chunk_data(png_ptr, new_name, name_len);

   png_write_compressed_data_out(png_ptr, &comp);

   png_write_chunk_end(png_ptr);
}




void
png_write_sPLT(png_structrp png_ptr, png_const_sPLT_tp spalette)
{
   png_uint_32 name_len;
   png_byte new_name[80];
   png_byte entrybuf[10];
   png_size_t entry_size = (spalette->depth == 8 ? 6 : 10);
   png_size_t palette_size = entry_size * spalette->nentries;
   png_sPLT_entryp ep;




   ((void)0);

   name_len = png_check_keyword(png_ptr, spalette->name, new_name);

   if (name_len == 0)
      png_error(png_ptr, "sPLT: invalid keyword");


   png_write_chunk_header(png_ptr, (((png_uint_32)(115) << (24)) | ((png_uint_32)(80) << (16)) | ((png_uint_32)(76) << (8)) | ((png_uint_32)(84) << (0))),
       (png_uint_32)(name_len + 2 + palette_size));

   png_write_chunk_data(png_ptr, (png_bytep)new_name,
       (png_size_t)(name_len + 1));

   png_write_chunk_data(png_ptr, &spalette->depth, (png_size_t)1);



   for (ep = spalette->entries; ep<spalette->entries + spalette->nentries; ep++)
   {
      if (spalette->depth == 8)
      {
         entrybuf[0] = (png_byte)ep->red;
         entrybuf[1] = (png_byte)ep->green;
         entrybuf[2] = (png_byte)ep->blue;
         entrybuf[3] = (png_byte)ep->alpha;
         png_save_uint_16(entrybuf + 4, ep->frequency);
      }

      else
      {
         png_save_uint_16(entrybuf + 0, ep->red);
         png_save_uint_16(entrybuf + 2, ep->green);
         png_save_uint_16(entrybuf + 4, ep->blue);
         png_save_uint_16(entrybuf + 6, ep->alpha);
         png_save_uint_16(entrybuf + 8, ep->frequency);
      }

      png_write_chunk_data(png_ptr, entrybuf, entry_size);
   }
# 1327 "../../../libs/png/pngwutil.c"
   png_write_chunk_end(png_ptr);
}




void
png_write_sBIT(png_structrp png_ptr, png_const_color_8p sbit, int color_type)
{
   png_byte buf[4];
   png_size_t size;

   ((void)0);


   if (color_type & 2)
   {
      png_byte maxbits;

      maxbits = (png_byte)(color_type==(2 | 1) ? 8 :
          png_ptr->usr_bit_depth);

      if (sbit->red == 0 || sbit->red > maxbits ||
          sbit->green == 0 || sbit->green > maxbits ||
          sbit->blue == 0 || sbit->blue > maxbits)
      {
         png_warning(png_ptr, "Invalid sBIT depth specified");
         return;
      }

      buf[0] = sbit->red;
      buf[1] = sbit->green;
      buf[2] = sbit->blue;
      size = 3;
   }

   else
   {
      if (sbit->gray == 0 || sbit->gray > png_ptr->usr_bit_depth)
      {
         png_warning(png_ptr, "Invalid sBIT depth specified");
         return;
      }

      buf[0] = sbit->gray;
      size = 1;
   }

   if (color_type & 4)
   {
      if (sbit->alpha == 0 || sbit->alpha > png_ptr->usr_bit_depth)
      {
         png_warning(png_ptr, "Invalid sBIT depth specified");
         return;
      }

      buf[size++] = sbit->alpha;
   }

   png_write_complete_chunk(png_ptr, (((png_uint_32)(115) << (24)) | ((png_uint_32)(66) << (16)) | ((png_uint_32)(73) << (8)) | ((png_uint_32)(84) << (0))), buf, size);
}




void
png_write_cHRM_fixed(png_structrp png_ptr, const png_xy *xy)
{
   png_byte buf[32];

   ((void)0);


   png_save_int_32(buf, xy->whitex);
   png_save_int_32(buf + 4, xy->whitey);

   png_save_int_32(buf + 8, xy->redx);
   png_save_int_32(buf + 12, xy->redy);

   png_save_int_32(buf + 16, xy->greenx);
   png_save_int_32(buf + 20, xy->greeny);

   png_save_int_32(buf + 24, xy->bluex);
   png_save_int_32(buf + 28, xy->bluey);

   png_write_complete_chunk(png_ptr, (((png_uint_32)(99) << (24)) | ((png_uint_32)(72) << (16)) | ((png_uint_32)(82) << (8)) | ((png_uint_32)(77) << (0))), buf, 32);
}




void
png_write_tRNS(png_structrp png_ptr, png_const_bytep trans_alpha,
    png_const_color_16p tran, int num_trans, int color_type)
{
   png_byte buf[6];

   ((void)0);

   if (color_type == (2 | 1))
   {
      if (num_trans <= 0 || num_trans > (int)png_ptr->num_palette)
      {
         png_app_warning(png_ptr,
             "Invalid number of transparent colors specified");
         return;
      }


      png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))), trans_alpha,
         (png_size_t)num_trans);
   }

   else if (color_type == 0)
   {

      if (tran->gray >= (1 << png_ptr->bit_depth))
      {
         png_app_warning(png_ptr,
             "Ignoring attempt to write tRNS chunk out-of-range for bit_depth");

         return;
      }

      png_save_uint_16(buf, tran->gray);
      png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))), buf, (png_size_t)2);
   }

   else if (color_type == (2))
   {

      png_save_uint_16(buf, tran->red);
      png_save_uint_16(buf + 2, tran->green);
      png_save_uint_16(buf + 4, tran->blue);

      if (png_ptr->bit_depth == 8 && (buf[0] | buf[2] | buf[4]))



      {
         png_app_warning(png_ptr,
           "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8");
         return;
      }

      png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))), buf, (png_size_t)6);
   }

   else
   {
      png_app_warning(png_ptr, "Can't write tRNS with an alpha channel");
   }
}




void
png_write_bKGD(png_structrp png_ptr, png_const_color_16p back, int color_type)
{
   png_byte buf[6];

   ((void)0);

   if (color_type == (2 | 1))
   {
      if (

          (png_ptr->num_palette ||
          (!(png_ptr->mng_features_permitted & 0x01))) &&

         back->index >= png_ptr->num_palette)
      {
         png_warning(png_ptr, "Invalid background palette index");
         return;
      }

      buf[0] = back->index;
      png_write_complete_chunk(png_ptr, (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))), buf, (png_size_t)1);
   }

   else if (color_type & 2)
   {
      png_save_uint_16(buf, back->red);
      png_save_uint_16(buf + 2, back->green);
      png_save_uint_16(buf + 4, back->blue);

      if (png_ptr->bit_depth == 8 && (buf[0] | buf[2] | buf[4]))



      {
         png_warning(png_ptr,
             "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8");

         return;
      }

      png_write_complete_chunk(png_ptr, (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))), buf, (png_size_t)6);
   }

   else
   {
      if (back->gray >= (1 << png_ptr->bit_depth))
      {
         png_warning(png_ptr,
             "Ignoring attempt to write bKGD chunk out-of-range for bit_depth");

         return;
      }

      png_save_uint_16(buf, back->gray);
      png_write_complete_chunk(png_ptr, (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))), buf, (png_size_t)2);
   }
}




void
png_write_hIST(png_structrp png_ptr, png_const_uint_16p hist, int num_hist)
{
   int i;
   png_byte buf[3];

   ((void)0);

   if (num_hist > (int)png_ptr->num_palette)
   {
      ((void)0)
                               ;

      png_warning(png_ptr, "Invalid number of histogram entries specified");
      return;
   }

   png_write_chunk_header(png_ptr, (((png_uint_32)(104) << (24)) | ((png_uint_32)(73) << (16)) | ((png_uint_32)(83) << (8)) | ((png_uint_32)(84) << (0))), (png_uint_32)(num_hist * 2));

   for (i = 0; i < num_hist; i++)
   {
      png_save_uint_16(buf, hist[i]);
      png_write_chunk_data(png_ptr, buf, (png_size_t)2);
   }

   png_write_chunk_end(png_ptr);
}




void
png_write_tEXt(png_structrp png_ptr, png_const_charp key, png_const_charp text,
    png_size_t text_len)
{
   png_uint_32 key_len;
   png_byte new_key[80];

   ((void)0);

   key_len = png_check_keyword(png_ptr, key, new_key);

   if (key_len == 0)
      png_error(png_ptr, "tEXt: invalid keyword");

   if (text == ((void *)0) || *text == '\0')
      text_len = 0;

   else
      text_len = strlen(text);

   if (text_len > ((png_uint_32)0x7fffffffL) - (key_len+1))
      png_error(png_ptr, "tEXt: text too long");


   png_write_chunk_header(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(69) << (16)) | ((png_uint_32)(88) << (8)) | ((png_uint_32)(116) << (0))),
       (png_uint_32) (key_len + text_len + 1));






   png_write_chunk_data(png_ptr, new_key, key_len + 1);

   if (text_len)
      png_write_chunk_data(png_ptr, (png_const_bytep)text, text_len);

   png_write_chunk_end(png_ptr);
}




void
png_write_zTXt(png_structrp png_ptr, png_const_charp key, png_const_charp text,
    png_size_t text_len, int compression)
{
   png_uint_32 key_len;
   png_byte new_key[81];
   compression_state comp;

   ((void)0);
   (void)text_len;

   if (compression == -1)
   {
      png_write_tEXt(png_ptr, key, text, 0);
      return;
   }

   if (compression != 0)
      png_error(png_ptr, "zTXt: invalid compression type");

   key_len = png_check_keyword(png_ptr, key, new_key);

   if (key_len == 0)
      png_error(png_ptr, "zTXt: invalid keyword");


   new_key[++key_len] = 0;
   ++key_len;


   png_text_compress_init(&comp, (png_const_bytep)text,
      text == ((void *)0) ? 0 : strlen(text));

   if (png_text_compress(png_ptr, (((png_uint_32)(122) << (24)) | ((png_uint_32)(84) << (16)) | ((png_uint_32)(88) << (8)) | ((png_uint_32)(116) << (0))), &comp, key_len) != 0)
      png_error(png_ptr, png_ptr->zstream.msg);


   png_write_chunk_header(png_ptr, (((png_uint_32)(122) << (24)) | ((png_uint_32)(84) << (16)) | ((png_uint_32)(88) << (8)) | ((png_uint_32)(116) << (0))), key_len + comp.output_len);


   png_write_chunk_data(png_ptr, new_key, key_len);


   png_write_compressed_data_out(png_ptr, &comp);


   png_write_chunk_end(png_ptr);
}




void
png_write_iTXt(png_structrp png_ptr, int compression, png_const_charp key,
    png_const_charp lang, png_const_charp lang_key, png_const_charp text)
{
   png_uint_32 key_len, prefix_len;
   png_size_t lang_len, lang_key_len;
   png_byte new_key[82];
   compression_state comp;

   ((void)0);

   key_len = png_check_keyword(png_ptr, key, new_key);

   if (key_len == 0)
      png_error(png_ptr, "iTXt: invalid keyword");


   switch (compression)
   {
      case 1:
      case -1:
         compression = new_key[++key_len] = 0;
         break;

      case 0:
      case 2:
         compression = new_key[++key_len] = 1;
         break;

      default:
         png_error(png_ptr, "iTXt: invalid compression");
   }

   new_key[++key_len] = 0;
   ++key_len;
# 1718 "../../../libs/png/pngwutil.c"
   if (lang == ((void *)0)) lang = "";
   lang_len = strlen(lang)+1;
   if (lang_key == ((void *)0)) lang_key = "";
   lang_key_len = strlen(lang_key)+1;
   if (text == ((void *)0)) text = "";

   prefix_len = key_len;
   if (lang_len > ((png_uint_32)0x7fffffffL)-prefix_len)
      prefix_len = ((png_uint_32)0x7fffffffL);
   else
      prefix_len = (png_uint_32)(prefix_len + lang_len);

   if (lang_key_len > ((png_uint_32)0x7fffffffL)-prefix_len)
      prefix_len = ((png_uint_32)0x7fffffffL);
   else
      prefix_len = (png_uint_32)(prefix_len + lang_key_len);

   png_text_compress_init(&comp, (png_const_bytep)text, strlen(text));

   if (compression)
   {
      if (png_text_compress(png_ptr, (((png_uint_32)(105) << (24)) | ((png_uint_32)(84) << (16)) | ((png_uint_32)(88) << (8)) | ((png_uint_32)(116) << (0))), &comp, prefix_len) != 0)
         png_error(png_ptr, png_ptr->zstream.msg);
   }

   else
   {
      if (comp.input_len > ((png_uint_32)0x7fffffffL)-prefix_len)
         png_error(png_ptr, "iTXt: uncompressed text too long");


      comp.output_len = (png_uint_32) comp.input_len;
   }

   png_write_chunk_header(png_ptr, (((png_uint_32)(105) << (24)) | ((png_uint_32)(84) << (16)) | ((png_uint_32)(88) << (8)) | ((png_uint_32)(116) << (0))), comp.output_len + prefix_len);

   png_write_chunk_data(png_ptr, new_key, key_len);

   png_write_chunk_data(png_ptr, (png_const_bytep)lang, lang_len);

   png_write_chunk_data(png_ptr, (png_const_bytep)lang_key, lang_key_len);

   if (compression)
      png_write_compressed_data_out(png_ptr, &comp);

   else
      png_write_chunk_data(png_ptr, (png_const_bytep)text, comp.input_len);

   png_write_chunk_end(png_ptr);
}




void
png_write_oFFs(png_structrp png_ptr, png_int_32 x_offset, png_int_32 y_offset,
    int unit_type)
{
   png_byte buf[9];

   ((void)0);

   if (unit_type >= 2)
      png_warning(png_ptr, "Unrecognized unit type for oFFs chunk");

   png_save_int_32(buf, x_offset);
   png_save_int_32(buf + 4, y_offset);
   buf[8] = (png_byte)unit_type;

   png_write_complete_chunk(png_ptr, (((png_uint_32)(111) << (24)) | ((png_uint_32)(70) << (16)) | ((png_uint_32)(70) << (8)) | ((png_uint_32)(115) << (0))), buf, (png_size_t)9);
}



void
png_write_pCAL(png_structrp png_ptr, png_charp purpose, png_int_32 X0,
    png_int_32 X1, int type, int nparams, png_const_charp units,
    png_charpp params)
{
   png_uint_32 purpose_len;
   png_size_t units_len, total_len;
   png_size_tp params_len;
   png_byte buf[10];
   png_byte new_purpose[80];
   int i;

   ((void)0);

   if (type >= 4)
      png_error(png_ptr, "Unrecognized equation type for pCAL chunk");

   purpose_len = png_check_keyword(png_ptr, purpose, new_purpose);

   if (purpose_len == 0)
      png_error(png_ptr, "pCAL: invalid keyword");

   ++purpose_len;

   ((void)0);
   units_len = strlen(units) + (nparams == 0 ? 0 : 1);
   ((void)0);
   total_len = purpose_len + units_len + 10;

   params_len = (png_size_tp)png_malloc(png_ptr,
       (png_alloc_size_t)(nparams * (sizeof (png_size_t))));




   for (i = 0; i < nparams; i++)
   {
      params_len[i] = strlen(params[i]) + (i == nparams - 1 ? 0 : 1);
      ((void)0)
                                       ;
      total_len += params_len[i];
   }

   ((void)0);
   png_write_chunk_header(png_ptr, (((png_uint_32)(112) << (24)) | ((png_uint_32)(67) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(76) << (0))), (png_uint_32)total_len);
   png_write_chunk_data(png_ptr, new_purpose, purpose_len);
   png_save_int_32(buf, X0);
   png_save_int_32(buf + 4, X1);
   buf[8] = (png_byte)type;
   buf[9] = (png_byte)nparams;
   png_write_chunk_data(png_ptr, buf, (png_size_t)10);
   png_write_chunk_data(png_ptr, (png_const_bytep)units, (png_size_t)units_len);

   for (i = 0; i < nparams; i++)
   {
      png_write_chunk_data(png_ptr, (png_const_bytep)params[i], params_len[i]);
   }

   png_free(png_ptr, params_len);
   png_write_chunk_end(png_ptr);
}




void
png_write_sCAL_s(png_structrp png_ptr, int unit, png_const_charp width,
    png_const_charp height)
{
   png_byte buf[64];
   png_size_t wlen, hlen, total_len;

   ((void)0);

   wlen = strlen(width);
   hlen = strlen(height);
   total_len = wlen + hlen + 2;

   if (total_len > 64)
   {
      png_warning(png_ptr, "Can't write sCAL (buffer too small)");
      return;
   }

   buf[0] = (png_byte)unit;
   memcpy(buf + 1, width, wlen + 1);
   memcpy(buf + wlen + 2, height, hlen);

   ((void)0);
   png_write_complete_chunk(png_ptr, (((png_uint_32)(115) << (24)) | ((png_uint_32)(67) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(76) << (0))), buf, total_len);
}




void
png_write_pHYs(png_structrp png_ptr, png_uint_32 x_pixels_per_unit,
    png_uint_32 y_pixels_per_unit,
    int unit_type)
{
   png_byte buf[9];

   ((void)0);

   if (unit_type >= 2)
      png_warning(png_ptr, "Unrecognized unit type for pHYs chunk");

   png_save_uint_32(buf, x_pixels_per_unit);
   png_save_uint_32(buf + 4, y_pixels_per_unit);
   buf[8] = (png_byte)unit_type;

   png_write_complete_chunk(png_ptr, (((png_uint_32)(112) << (24)) | ((png_uint_32)(72) << (16)) | ((png_uint_32)(89) << (8)) | ((png_uint_32)(115) << (0))), buf, (png_size_t)9);
}






void
png_write_tIME(png_structrp png_ptr, png_const_timep mod_time)
{
   png_byte buf[7];

   ((void)0);

   if (mod_time->month > 12 || mod_time->month < 1 ||
       mod_time->day > 31 || mod_time->day < 1 ||
       mod_time->hour > 23 || mod_time->second > 60)
   {
      png_warning(png_ptr, "Invalid time specified for tIME chunk");
      return;
   }

   png_save_uint_16(buf, mod_time->year);
   buf[2] = mod_time->month;
   buf[3] = mod_time->day;
   buf[4] = mod_time->hour;
   buf[5] = mod_time->minute;
   buf[6] = mod_time->second;

   png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(73) << (16)) | ((png_uint_32)(77) << (8)) | ((png_uint_32)(69) << (0))), buf, (png_size_t)7);
}



void
png_write_start_row(png_structrp png_ptr)
{




   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};


   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};


   static const png_byte png_pass_ystart[7] = {0, 0, 4, 0, 2, 0, 1};


   static const png_byte png_pass_yinc[7] = {8, 8, 8, 4, 4, 2, 2};


   png_alloc_size_t buf_size;
   int usr_pixel_depth;

   ((void)0);

   usr_pixel_depth = png_ptr->usr_channels * png_ptr->usr_bit_depth;
   buf_size = ((usr_pixel_depth) >= 8 ? ((png_size_t)(png_ptr->width) * (((png_size_t)(usr_pixel_depth)) >> 3)) : (( ((png_size_t)(png_ptr->width) * ((png_size_t)(usr_pixel_depth))) + 7) >> 3) ) + 1;


   png_ptr->transformed_pixel_depth = png_ptr->pixel_depth;
   png_ptr->maximum_pixel_depth = (png_byte)usr_pixel_depth;


   png_ptr->row_buf = (png_bytep)png_malloc(png_ptr, buf_size);

   png_ptr->row_buf[0] = 0;



   if (png_ptr->do_filter & 0x10)
   {
      png_ptr->sub_row = (png_bytep)png_malloc(png_ptr, png_ptr->rowbytes + 1);

      png_ptr->sub_row[0] = 1;
   }


   if (png_ptr->do_filter & (0x40 | 0x20 | 0x80))
   {

      png_ptr->prev_row = (png_bytep)png_calloc(png_ptr, buf_size);

      if (png_ptr->do_filter & 0x20)
      {
         png_ptr->up_row = (png_bytep)png_malloc(png_ptr,
            png_ptr->rowbytes + 1);

         png_ptr->up_row[0] = 2;
      }

      if (png_ptr->do_filter & 0x40)
      {
         png_ptr->avg_row = (png_bytep)png_malloc(png_ptr,
             png_ptr->rowbytes + 1);

         png_ptr->avg_row[0] = 3;
      }

      if (png_ptr->do_filter & 0x80)
      {
         png_ptr->paeth_row = (png_bytep)png_malloc(png_ptr,
             png_ptr->rowbytes + 1);

         png_ptr->paeth_row[0] = 4;
      }
   }




   if (png_ptr->interlaced)
   {
      if (!(png_ptr->transformations & 0x0002))
      {
         png_ptr->num_rows = (png_ptr->height + png_pass_yinc[0] - 1 -
             png_pass_ystart[0]) / png_pass_yinc[0];

         png_ptr->usr_width = (png_ptr->width + png_pass_inc[0] - 1 -
             png_pass_start[0]) / png_pass_inc[0];
      }

      else
      {
         png_ptr->num_rows = png_ptr->height;
         png_ptr->usr_width = png_ptr->width;
      }
   }

   else

   {
      png_ptr->num_rows = png_ptr->height;
      png_ptr->usr_width = png_ptr->width;
   }
}


void
png_write_finish_row(png_structrp png_ptr)
{




   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};


   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};


   static const png_byte png_pass_ystart[7] = {0, 0, 4, 0, 2, 0, 1};


   static const png_byte png_pass_yinc[7] = {8, 8, 8, 4, 4, 2, 2};


   ((void)0);


   png_ptr->row_number++;


   if (png_ptr->row_number < png_ptr->num_rows)
      return;



   if (png_ptr->interlaced)
   {
      png_ptr->row_number = 0;
      if (png_ptr->transformations & 0x0002)
      {
         png_ptr->pass++;
      }

      else
      {

         do
         {
            png_ptr->pass++;

            if (png_ptr->pass >= 7)
               break;

            png_ptr->usr_width = (png_ptr->width +
                png_pass_inc[png_ptr->pass] - 1 -
                png_pass_start[png_ptr->pass]) /
                png_pass_inc[png_ptr->pass];

            png_ptr->num_rows = (png_ptr->height +
                png_pass_yinc[png_ptr->pass] - 1 -
                png_pass_ystart[png_ptr->pass]) /
                png_pass_yinc[png_ptr->pass];

            if (png_ptr->transformations & 0x0002)
               break;

         } while (png_ptr->usr_width == 0 || png_ptr->num_rows == 0);

      }


      if (png_ptr->pass < 7)
      {
         if (png_ptr->prev_row != ((void *)0))
            memset(png_ptr->prev_row, 0,
                (png_size_t)(((png_ptr->usr_channels* png_ptr->usr_bit_depth) >= 8 ? ((png_size_t)(png_ptr->width) * (((png_size_t)(png_ptr->usr_channels* png_ptr->usr_bit_depth)) >> 3)) : (( ((png_size_t)(png_ptr->width) * ((png_size_t)(png_ptr->usr_channels* png_ptr->usr_bit_depth))) + 7) >> 3) )
                                                       ) + 1);

         return;
      }
   }




   png_compress_IDAT(png_ptr, ((void *)0), 0, 4);
}
# 2135 "../../../libs/png/pngwutil.c"
void
png_do_write_interlace(png_row_infop row_info, png_bytep row, int pass)
{



   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};


   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};

   ((void)0);


   if (pass < 6)
   {

      switch (row_info->pixel_depth)
      {
         case 1:
         {
            png_bytep sp;
            png_bytep dp;
            int shift;
            int d;
            int value;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;

            dp = row;
            d = 0;
            shift = 7;

            for (i = png_pass_start[pass]; i < row_width;
               i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)(i >> 3);
               value = (int)(*sp >> (7 - (int)(i & 0x07))) & 0x01;
               d |= (value << shift);

               if (shift == 0)
               {
                  shift = 7;
                  *dp++ = (png_byte)d;
                  d = 0;
               }

               else
                  shift--;

            }
            if (shift != 7)
               *dp = (png_byte)d;

            break;
         }

         case 2:
         {
            png_bytep sp;
            png_bytep dp;
            int shift;
            int d;
            int value;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;

            dp = row;
            shift = 6;
            d = 0;

            for (i = png_pass_start[pass]; i < row_width;
               i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)(i >> 2);
               value = (*sp >> ((3 - (int)(i & 0x03)) << 1)) & 0x03;
               d |= (value << shift);

               if (shift == 0)
               {
                  shift = 6;
                  *dp++ = (png_byte)d;
                  d = 0;
               }

               else
                  shift -= 2;
            }
            if (shift != 6)
               *dp = (png_byte)d;

            break;
         }

         case 4:
         {
            png_bytep sp;
            png_bytep dp;
            int shift;
            int d;
            int value;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;

            dp = row;
            shift = 4;
            d = 0;
            for (i = png_pass_start[pass]; i < row_width;
                i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)(i >> 1);
               value = (*sp >> ((1 - (int)(i & 0x01)) << 2)) & 0x0f;
               d |= (value << shift);

               if (shift == 0)
               {
                  shift = 4;
                  *dp++ = (png_byte)d;
                  d = 0;
               }

               else
                  shift -= 4;
            }
            if (shift != 4)
               *dp = (png_byte)d;

            break;
         }

         default:
         {
            png_bytep sp;
            png_bytep dp;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;
            png_size_t pixel_bytes;


            dp = row;


            pixel_bytes = (row_info->pixel_depth >> 3);


            for (i = png_pass_start[pass]; i < row_width;
               i += png_pass_inc[pass])
            {

               sp = row + (png_size_t)i * pixel_bytes;


               if (dp != sp)
                  memcpy(dp, sp, pixel_bytes);


               dp += pixel_bytes;
            }
            break;
         }
      }

      row_info->width = (row_info->width +
          png_pass_inc[pass] - 1 -
          png_pass_start[pass]) /
          png_pass_inc[pass];

      row_info->rowbytes = ((row_info->pixel_depth) >= 8 ? ((png_size_t)(row_info->width) * (((png_size_t)(row_info->pixel_depth)) >> 3)) : (( ((png_size_t)(row_info->width) * ((png_size_t)(row_info->pixel_depth))) + 7) >> 3) )
                          ;
   }
}






static void
png_write_filtered_row(png_structrp png_ptr, png_bytep filtered_row,
   png_size_t row_bytes);





void
png_write_find_filter(png_structrp png_ptr, png_row_infop row_info)
{
   png_bytep best_row;

   png_bytep prev_row, row_buf;
   png_uint_32 mins, bpp;
   png_byte filter_to_do = png_ptr->do_filter;
   png_size_t row_bytes = row_info->rowbytes;

   int num_p_filters = png_ptr->num_prev_filters;


   ((void)0);
# 2344 "../../../libs/png/pngwutil.c"
   bpp = (row_info->pixel_depth + 7) >> 3;

   prev_row = png_ptr->prev_row;

   best_row = png_ptr->row_buf;

   row_buf = best_row;
   mins = (((png_uint_32)(-1)) >> 1);
# 2381 "../../../libs/png/pngwutil.c"
   if ((filter_to_do & 0x08) && filter_to_do != 0x08)
   {
      png_bytep rp;
      png_uint_32 sum = 0;
      png_size_t i;
      int v;

      for (i = 0, rp = row_buf + 1; i < row_bytes; i++, rp++)
      {
         v = *rp;
         sum += (v < 128) ? v : 256 - v;
      }


      if (png_ptr->heuristic_method == 2)
      {
         png_uint_32 sumhi, sumlo;
         int j;
         sumlo = sum & ((png_uint_32)0xffffL);
         sumhi = (sum >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));


         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 0)
            {
               sumlo = (sumlo * png_ptr->filter_weights[j]) >>
                   8;

               sumhi = (sumhi * png_ptr->filter_weights[j]) >>
                   8;
            }
         }





         sumlo = (sumlo * png_ptr->filter_costs[0]) >>
             3;

         sumhi = (sumhi * png_ptr->filter_costs[0]) >>
             3;

         if (sumhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            sum = (((png_uint_32)(-1)) >> 1);

         else
            sum = (sumhi << 10) + sumlo;
      }

      mins = sum;
   }


   if (filter_to_do == 0x10)

   {
      png_bytep rp, lp, dp;
      png_size_t i;

      for (i = 0, rp = row_buf + 1, dp = png_ptr->sub_row + 1; i < bpp;
           i++, rp++, dp++)
      {
         *dp = *rp;
      }

      for (lp = row_buf + 1; i < row_bytes;
         i++, rp++, lp++, dp++)
      {
         *dp = (png_byte)(((int)*rp - (int)*lp) & 0xff);
      }

      best_row = png_ptr->sub_row;
   }

   else if (filter_to_do & 0x10)
   {
      png_bytep rp, dp, lp;
      png_uint_32 sum = 0, lmins = mins;
      png_size_t i;
      int v;






      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 lmhi, lmlo;
         lmlo = lmins & ((png_uint_32)0xffffL);
         lmhi = (lmins >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 1)
            {
               lmlo = (lmlo * png_ptr->inv_filter_weights[j]) >>
                   8;

               lmhi = (lmhi * png_ptr->inv_filter_weights[j]) >>
                   8;
            }
         }

         lmlo = (lmlo * png_ptr->inv_filter_costs[1]) >>
             3;

         lmhi = (lmhi * png_ptr->inv_filter_costs[1]) >>
             3;

         if (lmhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            lmins = (((png_uint_32)(-1)) >> 1);

         else
            lmins = (lmhi << 10) + lmlo;
      }


      for (i = 0, rp = row_buf + 1, dp = png_ptr->sub_row + 1; i < bpp;
           i++, rp++, dp++)
      {
         v = *dp = *rp;

         sum += (v < 128) ? v : 256 - v;
      }

      for (lp = row_buf + 1; i < row_bytes;
         i++, rp++, lp++, dp++)
      {
         v = *dp = (png_byte)(((int)*rp - (int)*lp) & 0xff);

         sum += (v < 128) ? v : 256 - v;

         if (sum > lmins)
            break;
      }


      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 sumhi, sumlo;
         sumlo = sum & ((png_uint_32)0xffffL);
         sumhi = (sum >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 1)
            {
               sumlo = (sumlo * png_ptr->inv_filter_weights[j]) >>
                   8;

               sumhi = (sumhi * png_ptr->inv_filter_weights[j]) >>
                   8;
            }
         }

         sumlo = (sumlo * png_ptr->inv_filter_costs[1]) >>
             3;

         sumhi = (sumhi * png_ptr->inv_filter_costs[1]) >>
             3;

         if (sumhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            sum = (((png_uint_32)(-1)) >> 1);

         else
            sum = (sumhi << 10) + sumlo;
      }


      if (sum < mins)
      {
         mins = sum;
         best_row = png_ptr->sub_row;
      }
   }


   if (filter_to_do == 0x20)
   {
      png_bytep rp, dp, pp;
      png_size_t i;

      for (i = 0, rp = row_buf + 1, dp = png_ptr->up_row + 1,
          pp = prev_row + 1; i < row_bytes;
          i++, rp++, pp++, dp++)
      {
         *dp = (png_byte)(((int)*rp - (int)*pp) & 0xff);
      }

      best_row = png_ptr->up_row;
   }

   else if (filter_to_do & 0x20)
   {
      png_bytep rp, dp, pp;
      png_uint_32 sum = 0, lmins = mins;
      png_size_t i;
      int v;



      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 lmhi, lmlo;
         lmlo = lmins & ((png_uint_32)0xffffL);
         lmhi = (lmins >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 2)
            {
               lmlo = (lmlo * png_ptr->inv_filter_weights[j]) >>
                   8;

               lmhi = (lmhi * png_ptr->inv_filter_weights[j]) >>
                   8;
            }
         }

         lmlo = (lmlo * png_ptr->inv_filter_costs[2]) >>
             3;

         lmhi = (lmhi * png_ptr->inv_filter_costs[2]) >>
             3;

         if (lmhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            lmins = (((png_uint_32)(-1)) >> 1);

         else
            lmins = (lmhi << 10) + lmlo;
      }


      for (i = 0, rp = row_buf + 1, dp = png_ptr->up_row + 1,
          pp = prev_row + 1; i < row_bytes; i++)
      {
         v = *dp++ = (png_byte)(((int)*rp++ - (int)*pp++) & 0xff);

         sum += (v < 128) ? v : 256 - v;

         if (sum > lmins)
            break;
      }


      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 sumhi, sumlo;
         sumlo = sum & ((png_uint_32)0xffffL);
         sumhi = (sum >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 2)
            {
               sumlo = (sumlo * png_ptr->filter_weights[j]) >>
                   8;

               sumhi = (sumhi * png_ptr->filter_weights[j]) >>
                   8;
            }
         }

         sumlo = (sumlo * png_ptr->filter_costs[2]) >>
             3;

         sumhi = (sumhi * png_ptr->filter_costs[2]) >>
             3;

         if (sumhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            sum = (((png_uint_32)(-1)) >> 1);

         else
            sum = (sumhi << 10) + sumlo;
      }


      if (sum < mins)
      {
         mins = sum;
         best_row = png_ptr->up_row;
      }
   }


   if (filter_to_do == 0x40)
   {
      png_bytep rp, dp, pp, lp;
      png_uint_32 i;

      for (i = 0, rp = row_buf + 1, dp = png_ptr->avg_row + 1,
           pp = prev_row + 1; i < bpp; i++)
      {
         *dp++ = (png_byte)(((int)*rp++ - ((int)*pp++ / 2)) & 0xff);
      }

      for (lp = row_buf + 1; i < row_bytes; i++)
      {
         *dp++ = (png_byte)(((int)*rp++ - (((int)*pp++ + (int)*lp++) / 2))
                 & 0xff);
      }
      best_row = png_ptr->avg_row;
   }

   else if (filter_to_do & 0x40)
   {
      png_bytep rp, dp, pp, lp;
      png_uint_32 sum = 0, lmins = mins;
      png_size_t i;
      int v;


      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 lmhi, lmlo;
         lmlo = lmins & ((png_uint_32)0xffffL);
         lmhi = (lmins >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 3)
            {
               lmlo = (lmlo * png_ptr->inv_filter_weights[j]) >>
                   8;

               lmhi = (lmhi * png_ptr->inv_filter_weights[j]) >>
                   8;
            }
         }

         lmlo = (lmlo * png_ptr->inv_filter_costs[3]) >>
             3;

         lmhi = (lmhi * png_ptr->inv_filter_costs[3]) >>
             3;

         if (lmhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            lmins = (((png_uint_32)(-1)) >> 1);

         else
            lmins = (lmhi << 10) + lmlo;
      }


      for (i = 0, rp = row_buf + 1, dp = png_ptr->avg_row + 1,
           pp = prev_row + 1; i < bpp; i++)
      {
         v = *dp++ = (png_byte)(((int)*rp++ - ((int)*pp++ / 2)) & 0xff);

         sum += (v < 128) ? v : 256 - v;
      }

      for (lp = row_buf + 1; i < row_bytes; i++)
      {
         v = *dp++ =
             (png_byte)(((int)*rp++ - (((int)*pp++ + (int)*lp++) / 2)) & 0xff);

         sum += (v < 128) ? v : 256 - v;

         if (sum > lmins)
            break;
      }


      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 sumhi, sumlo;
         sumlo = sum & ((png_uint_32)0xffffL);
         sumhi = (sum >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 0)
            {
               sumlo = (sumlo * png_ptr->filter_weights[j]) >>
                   8;

               sumhi = (sumhi * png_ptr->filter_weights[j]) >>
                   8;
            }
         }

         sumlo = (sumlo * png_ptr->filter_costs[3]) >>
             3;

         sumhi = (sumhi * png_ptr->filter_costs[3]) >>
             3;

         if (sumhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            sum = (((png_uint_32)(-1)) >> 1);

         else
            sum = (sumhi << 10) + sumlo;
      }


      if (sum < mins)
      {
         mins = sum;
         best_row = png_ptr->avg_row;
      }
   }


   if (filter_to_do == 0x80)
   {
      png_bytep rp, dp, pp, cp, lp;
      png_size_t i;

      for (i = 0, rp = row_buf + 1, dp = png_ptr->paeth_row + 1,
          pp = prev_row + 1; i < bpp; i++)
      {
         *dp++ = (png_byte)(((int)*rp++ - (int)*pp++) & 0xff);
      }

      for (lp = row_buf + 1, cp = prev_row + 1; i < row_bytes; i++)
      {
         int a, b, c, pa, pb, pc, p;

         b = *pp++;
         c = *cp++;
         a = *lp++;

         p = b - c;
         pc = a - c;






         pa = p < 0 ? -p : p;
         pb = pc < 0 ? -pc : pc;
         pc = (p + pc) < 0 ? -(p + pc) : p + pc;


         p = (pa <= pb && pa <=pc) ? a : (pb <= pc) ? b : c;

         *dp++ = (png_byte)(((int)*rp++ - p) & 0xff);
      }
      best_row = png_ptr->paeth_row;
   }

   else if (filter_to_do & 0x80)
   {
      png_bytep rp, dp, pp, cp, lp;
      png_uint_32 sum = 0, lmins = mins;
      png_size_t i;
      int v;


      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 lmhi, lmlo;
         lmlo = lmins & ((png_uint_32)0xffffL);
         lmhi = (lmins >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 4)
            {
               lmlo = (lmlo * png_ptr->inv_filter_weights[j]) >>
                   8;

               lmhi = (lmhi * png_ptr->inv_filter_weights[j]) >>
                   8;
            }
         }

         lmlo = (lmlo * png_ptr->inv_filter_costs[4]) >>
             3;

         lmhi = (lmhi * png_ptr->inv_filter_costs[4]) >>
             3;

         if (lmhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            lmins = (((png_uint_32)(-1)) >> 1);

         else
            lmins = (lmhi << 10) + lmlo;
      }


      for (i = 0, rp = row_buf + 1, dp = png_ptr->paeth_row + 1,
          pp = prev_row + 1; i < bpp; i++)
      {
         v = *dp++ = (png_byte)(((int)*rp++ - (int)*pp++) & 0xff);

         sum += (v < 128) ? v : 256 - v;
      }

      for (lp = row_buf + 1, cp = prev_row + 1; i < row_bytes; i++)
      {
         int a, b, c, pa, pb, pc, p;

         b = *pp++;
         c = *cp++;
         a = *lp++;


         p = b - c;
         pc = a - c;





         pa = p < 0 ? -p : p;
         pb = pc < 0 ? -pc : pc;
         pc = (p + pc) < 0 ? -(p + pc) : p + pc;

         p = (pa <= pb && pa <=pc) ? a : (pb <= pc) ? b : c;
# 2919 "../../../libs/png/pngwutil.c"
         v = *dp++ = (png_byte)(((int)*rp++ - p) & 0xff);

         sum += (v < 128) ? v : 256 - v;

         if (sum > lmins)
            break;
      }


      if (png_ptr->heuristic_method == 2)
      {
         int j;
         png_uint_32 sumhi, sumlo;
         sumlo = sum & ((png_uint_32)0xffffL);
         sumhi = (sum >> 10) & ((png_uint_32)(~((png_uint_32)0xffffL) >> 10));

         for (j = 0; j < num_p_filters; j++)
         {
            if (png_ptr->prev_filters[j] == 4)
            {
               sumlo = (sumlo * png_ptr->filter_weights[j]) >>
                   8;

               sumhi = (sumhi * png_ptr->filter_weights[j]) >>
                   8;
            }
         }

         sumlo = (sumlo * png_ptr->filter_costs[4]) >>
             3;

         sumhi = (sumhi * png_ptr->filter_costs[4]) >>
             3;

         if (sumhi > ((png_uint_32)(~((png_uint_32)0xffffL) >> 10)))
            sum = (((png_uint_32)(-1)) >> 1);

         else
            sum = (sumhi << 10) + sumlo;
      }


      if (sum < mins)
      {
         best_row = png_ptr->paeth_row;
      }
   }



   png_write_filtered_row(png_ptr, best_row, row_info->rowbytes+1);




   if (png_ptr->num_prev_filters > 0)
   {
      int j;

      for (j = 1; j < num_p_filters; j++)
      {
         png_ptr->prev_filters[j] = png_ptr->prev_filters[j - 1];
      }

      png_ptr->prev_filters[j] = best_row[0];
   }


}



static void
png_write_filtered_row(png_structrp png_ptr, png_bytep filtered_row,
   png_size_t full_row_length )
{
   ((void)0);

   ((void)0);

   png_compress_IDAT(png_ptr, filtered_row, full_row_length, 0);


   if (png_ptr->prev_row != ((void *)0))
   {
      png_bytep tptr;

      tptr = png_ptr->prev_row;
      png_ptr->prev_row = png_ptr->row_buf;
      png_ptr->row_buf = tptr;
   }


   png_write_finish_row(png_ptr);


   png_ptr->flush_rows++;

   if (png_ptr->flush_dist > 0 &&
       png_ptr->flush_rows >= png_ptr->flush_dist)
   {
      png_write_flush(png_ptr);
   }

}
