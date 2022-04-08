# 1 "../../../libs/png/arm/filter_neon_intrinsics.c"
# 1 "<command-line>"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "../../../libs/png/arm/filter_neon_intrinsics.c"
# 15 "../../../libs/png/arm/filter_neon_intrinsics.c"
# 1 "../../../libs/png/arm/../pngpriv.h" 1
# 44 "../../../libs/png/arm/../pngpriv.h"
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

# 45 "../../../libs/png/arm/../pngpriv.h" 2
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

# 46 "../../../libs/png/arm/../pngpriv.h" 2
# 72 "../../../libs/png/arm/../pngpriv.h"
# 1 "../../../libs/png/arm/../pnglibconf.h" 1
# 73 "../../../libs/png/arm/../pngpriv.h" 2
# 294 "../../../libs/png/arm/../pngpriv.h"
# 1 "../../../libs/png/arm/../png.h" 1
# 462 "../../../libs/png/arm/../png.h"
# 1 "../../../libs/png/arm/../pngconf.h" 1
# 52 "../../../libs/png/arm/../pngconf.h"
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
# 53 "../../../libs/png/arm/../pngconf.h" 2
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 147 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 54 "../../../libs/png/arm/../pngconf.h" 2
# 67 "../../../libs/png/arm/../pngconf.h"
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

# 68 "../../../libs/png/arm/../pngconf.h" 2




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

# 73 "../../../libs/png/arm/../pngconf.h" 2




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

# 78 "../../../libs/png/arm/../pngconf.h" 2
# 503 "../../../libs/png/arm/../pngconf.h"
   typedef unsigned char png_byte;







   typedef short png_int_16;







   typedef unsigned short png_uint_16;





   typedef int png_int_32;







   typedef unsigned int png_uint_32;
# 543 "../../../libs/png/arm/../pngconf.h"
typedef size_t png_size_t;
typedef ptrdiff_t png_ptrdiff_t;
# 578 "../../../libs/png/arm/../pngconf.h"
   typedef png_size_t png_alloc_size_t;
# 595 "../../../libs/png/arm/../pngconf.h"
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
# 463 "../../../libs/png/arm/../png.h" 2
# 553 "../../../libs/png/arm/../png.h"
typedef char* png_libpng_version_1_6_10;







typedef struct png_struct_def png_struct;
typedef const png_struct * png_const_structp;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
# 575 "../../../libs/png/arm/../png.h"
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef const png_info * png_const_infop;
typedef png_info * * png_infopp;
# 591 "../../../libs/png/arm/../png.h"
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
# 684 "../../../libs/png/arm/../png.h"
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
# 722 "../../../libs/png/arm/../png.h"
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
# 744 "../../../libs/png/arm/../png.h"
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
# 875 "../../../libs/png/arm/../png.h"
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
# 896 "../../../libs/png/arm/../png.h"
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
# 922 "../../../libs/png/arm/../png.h"
typedef void ( *png_progressive_row_ptr) (png_structp, png_bytep, png_uint_32, int)
                      ;




typedef void ( *png_user_transform_ptr) (png_structp, png_row_infop, png_bytep)
               ;



typedef int ( *png_user_chunk_ptr) (png_structp, png_unknown_chunkp)
                        ;
# 953 "../../../libs/png/arm/../png.h"
typedef void ( *png_longjmp_ptr) (jmp_buf, int);
# 990 "../../../libs/png/arm/../png.h"
typedef png_voidp ( *png_malloc_ptr) (png_structp, png_alloc_size_t)
                      ;
typedef void ( *png_free_ptr) (png_structp, png_voidp);
# 1024 "../../../libs/png/arm/../png.h"
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
# 1073 "../../../libs/png/arm/../png.h"
extern jmp_buf* ( png_set_longjmp_fn) (png_structrp png_ptr, png_longjmp_ptr longjmp_fn, size_t jmp_buf_size)
                                                     ;
# 1086 "../../../libs/png/arm/../png.h"
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
# 1156 "../../../libs/png/arm/../png.h"
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
# 1204 "../../../libs/png/arm/../png.h"
extern void ( png_set_rgb_to_gray) (png_structrp png_ptr, int error_action, double red, double green);

extern void ( png_set_rgb_to_gray_fixed) (png_structrp png_ptr, int error_action, png_fixed_point red, png_fixed_point green);


extern png_byte ( png_get_rgb_to_gray_status) (png_const_structrp png_ptr)
             ;



extern void ( png_build_grayscale_palette) (int bit_depth, png_colorp palette)
                        ;
# 1260 "../../../libs/png/arm/../png.h"
extern void ( png_set_alpha_mode) (png_structrp png_ptr, int mode, double output_gamma);

extern void ( png_set_alpha_mode_fixed) (png_structrp png_ptr, int mode, png_fixed_point output_gamma);
# 1353 "../../../libs/png/arm/../png.h"
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
# 1408 "../../../libs/png/arm/../png.h"
extern int ( png_set_interlace_handling) (png_structrp png_ptr);




extern void ( png_set_invert_mono) (png_structrp png_ptr);
# 1422 "../../../libs/png/arm/../png.h"
extern void ( png_set_background) (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, double background_gamma);


extern void ( png_set_background_fixed) (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, png_fixed_point background_gamma);
# 1438 "../../../libs/png/arm/../png.h"
extern void ( png_set_scale_16) (png_structrp png_ptr);





extern void ( png_set_strip_16) (png_structrp png_ptr);






extern void ( png_set_quantize) (png_structrp png_ptr, png_colorp palette, int num_palette, int maximum_colors, png_const_uint_16p histogram, int full_quantize)

                                                     ;
# 1473 "../../../libs/png/arm/../png.h"
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
# 1577 "../../../libs/png/arm/../png.h"
extern void ( png_set_filter) (png_structrp png_ptr, int method, int filters)
                 ;
# 1633 "../../../libs/png/arm/../png.h"
extern void ( png_set_filter_heuristics) (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_doublep filter_weights, png_const_doublep filter_costs);


extern void ( png_set_filter_heuristics_fixed) (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_fixed_point_p filter_weights, png_const_fixed_point_p filter_costs);
# 1658 "../../../libs/png/arm/../png.h"
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
# 1709 "../../../libs/png/arm/../png.h"
extern void ( png_init_io) (png_structrp png_ptr, png_FILE_p fp);
# 1720 "../../../libs/png/arm/../png.h"
extern void ( png_set_error_fn) (png_structrp png_ptr, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warning_fn)
                                                                           ;


extern png_voidp ( png_get_error_ptr) (png_const_structrp png_ptr);
# 1736 "../../../libs/png/arm/../png.h"
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
# 1791 "../../../libs/png/arm/../png.h"
extern png_uint_32 ( png_get_current_row_number) (png_const_structrp);
extern png_byte ( png_get_current_pass_number) (png_const_structrp);
# 1815 "../../../libs/png/arm/../png.h"
extern void ( png_set_read_user_chunk_fn) (png_structrp png_ptr, png_voidp user_chunk_ptr, png_user_chunk_ptr read_user_chunk_fn)
                                                                     ;



extern png_voidp ( png_get_user_chunk_ptr) (png_const_structrp png_ptr);






extern void ( png_set_progressive_read_fn) (png_structrp png_ptr, png_voidp progressive_ptr, png_progressive_info_ptr info_fn, png_progressive_row_ptr row_fn, png_progressive_end_ptr end_fn)

                                                                    ;


extern png_voidp ( png_get_progressive_ptr) (png_const_structrp png_ptr)
                                 ;


extern void ( png_process_data) (png_structrp png_ptr, png_inforp info_ptr, png_bytep buffer, png_size_t buffer_size)
                                                                   ;
# 1846 "../../../libs/png/arm/../png.h"
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
# 1891 "../../../libs/png/arm/../png.h"
extern void ( png_data_freer) (png_const_structrp png_ptr, png_inforp info_ptr, int freer, png_uint_32 mask)
                                                      ;



extern void ( png_build_index) (png_structp png_ptr);
extern void ( png_configure_decoder) (png_structp png_ptr, int *row_offset, int pass)
                                                     ;



extern void ( png_set_seek_fn) (png_structp png_ptr, png_seek_ptr seek_data_fn)
                              ;

extern void ( png_set_interlaced_pass) (png_structp png_ptr, int pass);
# 1930 "../../../libs/png/arm/../png.h"
extern __attribute__((__malloc__)) png_voidp ( png_malloc_default) (png_const_structrp png_ptr, png_alloc_size_t size)
                                                         ;
extern void ( png_free_default) (png_const_structrp png_ptr, png_voidp ptr)
                                   ;




extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message)
                                                 ;


extern __attribute__((__noreturn__)) void ( png_chunk_error) (png_const_structrp png_ptr, png_const_charp error_message)
                                                 ;
# 1954 "../../../libs/png/arm/../png.h"
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;


extern void ( png_chunk_warning) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;
# 1968 "../../../libs/png/arm/../png.h"
extern void ( png_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;



extern void ( png_chunk_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message)
                                     ;


extern void ( png_set_benign_errors) (png_structrp png_ptr, int allowed)
                                        ;
# 2002 "../../../libs/png/arm/../png.h"
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
# 2123 "../../../libs/png/arm/../png.h"
extern void ( png_set_cHRM) (png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, double green_y, double blue_x, double blue_y);



extern void ( png_set_cHRM_XYZ) (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, double green_X, double green_Y, double green_Z, double blue_X, double blue_Y, double blue_Z);



extern void ( png_set_cHRM_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, png_fixed_point int_blue_y);





extern void ( png_set_cHRM_XYZ_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, png_fixed_point int_blue_X, png_fixed_point int_blue_Y, png_fixed_point int_blue_Z);
# 2146 "../../../libs/png/arm/../png.h"
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
# 2280 "../../../libs/png/arm/../png.h"
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
# 2316 "../../../libs/png/arm/../png.h"
extern png_uint_32 ( png_get_sCAL_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_fixed_point *width, png_fixed_point *height);



extern png_uint_32 ( png_get_sCAL_s) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_charpp swidth, png_charpp sheight)

                                           ;

extern void ( png_set_sCAL) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, double width, double height);

extern void ( png_set_sCAL_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_fixed_point width, png_fixed_point height);


extern void ( png_set_sCAL_s) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_const_charp swidth, png_const_charp sheight)

                                                     ;
# 2433 "../../../libs/png/arm/../png.h"
extern void ( png_set_keep_unknown_chunks) (png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks)
                                                          ;





extern int ( png_handle_as_unknown) (png_const_structrp png_ptr, png_const_bytep chunk_name)
                                ;



extern void ( png_set_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, int num_unknowns)

                      ;
# 2457 "../../../libs/png/arm/../png.h"
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
# 2514 "../../../libs/png/arm/../png.h"
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
# 2691 "../../../libs/png/arm/../png.h"
extern png_uint_32 ( png_get_uint_32) (png_const_bytep buf);
extern png_uint_16 ( png_get_uint_16) (png_const_bytep buf);
extern png_int_32 ( png_get_int_32) (png_const_bytep buf);


extern png_uint_32 ( png_get_uint_31) (png_const_structrp png_ptr, png_const_bytep buf)
                         ;




extern void ( png_save_uint_32) (png_bytep buf, png_uint_32 i);


extern void ( png_save_int_32) (png_bytep buf, png_int_32 i);







extern void ( png_save_uint_16) (png_bytep buf, unsigned int i);
# 2805 "../../../libs/png/arm/../png.h"
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
# 2839 "../../../libs/png/arm/../png.h"
   png_uint_32 warning_or_error;

   char message[64];
} png_image, *png_imagep;
# 3105 "../../../libs/png/arm/../png.h"
extern int ( png_image_begin_read_from_file) (png_imagep image, const char *file_name)
                          ;




extern int ( png_image_begin_read_from_stdio) (png_imagep image, FILE* file)
               ;



extern int ( png_image_begin_read_from_memory) (png_imagep image, png_const_voidp memory, png_size_t size)
                                            ;


extern int ( png_image_finish_read) (png_imagep image, png_const_colorp background, void *buffer, png_int_32 row_stride, void *colormap)

                   ;
# 3155 "../../../libs/png/arm/../png.h"
extern void ( png_image_free) (png_imagep image);
# 3179 "../../../libs/png/arm/../png.h"
extern int ( png_image_write_to_file) (png_imagep image, const char *file, int convert_to_8bit, const void *buffer, png_int_32 row_stride, const void *colormap)

                                                ;


extern int ( png_image_write_to_stdio) (png_imagep image, FILE *file, int convert_to_8_bit, const void *buffer, png_int_32 row_stride, const void *colormap)

                         ;
# 3212 "../../../libs/png/arm/../png.h"
extern void ( png_set_check_for_invalid_index) (png_structrp png_ptr, int allowed)
                                        ;

extern int ( png_get_palette_max) (png_const_structp png_ptr, png_const_infop info_ptr)
                              ;
# 3254 "../../../libs/png/arm/../png.h"
extern int ( png_set_option) (png_structrp png_ptr, int option, int onoff)
              ;
# 295 "../../../libs/png/arm/../pngpriv.h" 2
# 437 "../../../libs/png/arm/../pngpriv.h"
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\float.h" 1 3 4
# 438 "../../../libs/png/arm/../pngpriv.h" 2
# 449 "../../../libs/png/arm/../pngpriv.h"
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

# 450 "../../../libs/png/arm/../pngpriv.h" 2
# 814 "../../../libs/png/arm/../pngpriv.h"
# 1 "../../../libs/png/arm/../pngstruct.h" 1
# 31 "../../../libs/png/arm/../pngstruct.h"
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
# 32 "../../../libs/png/arm/../pngstruct.h" 2
# 62 "../../../libs/png/arm/../pngstruct.h"
typedef struct png_compression_buffer
{
   struct png_compression_buffer *next;
   png_byte output[1];
} png_compression_buffer, *png_compression_bufferp;
# 84 "../../../libs/png/arm/../pngstruct.h"
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
# 113 "../../../libs/png/arm/../pngstruct.h"
typedef struct png_colorspace
{

   png_fixed_point gamma;



   png_xy end_points_xy;
   png_XYZ end_points_XYZ;
   png_uint_16 rendering_intent;



   png_uint_16 flags;
} png_colorspace, * __restrict png_colorspacerp;

typedef const png_colorspace * __restrict png_const_colorspacerp;
# 148 "../../../libs/png/arm/../pngstruct.h"
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
# 393 "../../../libs/png/arm/../pngstruct.h"
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
# 815 "../../../libs/png/arm/../pngpriv.h" 2
# 1 "../../../libs/png/arm/../pnginfo.h" 1
# 56 "../../../libs/png/arm/../pnginfo.h"
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
# 102 "../../../libs/png/arm/../pnginfo.h"
   png_colorspace colorspace;




   png_charp iccp_name;
   png_bytep iccp_profile;
   png_uint_32 iccp_proflen;
# 121 "../../../libs/png/arm/../pnginfo.h"
   int num_text;
   int max_text;
   png_textp text;






   png_time mod_time;
# 140 "../../../libs/png/arm/../pnginfo.h"
   png_color_8 sig_bit;
# 154 "../../../libs/png/arm/../pnginfo.h"
   png_bytep trans_alpha;
   png_color_16 trans_color;
# 165 "../../../libs/png/arm/../pnginfo.h"
   png_color_16 background;
# 174 "../../../libs/png/arm/../pnginfo.h"
   png_int_32 x_offset;
   png_int_32 y_offset;
   png_byte offset_unit_type;







   png_uint_32 x_pixels_per_unit;
   png_uint_32 y_pixels_per_unit;
   png_byte phys_unit_type;
# 196 "../../../libs/png/arm/../pnginfo.h"
   png_uint_16p hist;
# 211 "../../../libs/png/arm/../pnginfo.h"
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
# 247 "../../../libs/png/arm/../pnginfo.h"
   png_byte scal_unit;
   png_charp scal_s_width;
   png_charp scal_s_height;






   png_bytepp row_pointers;


};
# 816 "../../../libs/png/arm/../pngpriv.h" 2
# 838 "../../../libs/png/arm/../pngpriv.h"
typedef const png_uint_16p * png_const_uint_16pp;





extern const png_uint_16 png_sRGB_table [256];





extern const png_uint_16 png_sRGB_base [512];
extern const png_byte png_sRGB_delta [512];
# 874 "../../../libs/png/arm/../pngpriv.h"
extern void png_zstream_error (png_structrp png_ptr, int ret)
             ;





extern void png_free_buffer_list (png_structrp png_ptr, png_compression_bufferp *list)
                                            ;
# 893 "../../../libs/png/arm/../pngpriv.h"
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
# 933 "../../../libs/png/arm/../pngpriv.h"
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
# 1168 "../../../libs/png/arm/../pngpriv.h"
extern void png_combine_row (png_const_structrp png_ptr, png_bytep row, int display)
                                          ;
# 1178 "../../../libs/png/arm/../pngpriv.h"
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
# 1383 "../../../libs/png/arm/../pngpriv.h"
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
# 1484 "../../../libs/png/arm/../pngpriv.h"
extern int png_colorspace_set_chromaticities (png_const_structrp png_ptr, png_colorspacerp colorspace, const png_xy *xy, int preferred)

                              ;

extern int png_colorspace_set_endpoints (png_const_structrp png_ptr, png_colorspacerp colorspace, const png_XYZ *XYZ, int preferred)

                              ;


extern int png_colorspace_set_sRGB (png_const_structrp png_ptr, png_colorspacerp colorspace, int intent)
                                                       ;
# 1503 "../../../libs/png/arm/../pngpriv.h"
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
# 1534 "../../../libs/png/arm/../pngpriv.h"
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
# 1574 "../../../libs/png/arm/../pngpriv.h"
extern png_charp png_format_number (png_const_charp start, png_charp end, int format, png_alloc_size_t number)
                                                                 ;
# 1604 "../../../libs/png/arm/../pngpriv.h"
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
# 1645 "../../../libs/png/arm/../pngpriv.h"
extern void png_app_warning (png_const_structrp png_ptr, png_const_charp message)
                                      ;




extern void png_app_error (png_const_structrp png_ptr, png_const_charp message)
                                      ;
# 1661 "../../../libs/png/arm/../pngpriv.h"
extern void png_chunk_report (png_const_structrp png_ptr, png_const_charp message, int error)
                                                 ;
# 1688 "../../../libs/png/arm/../pngpriv.h"
extern void png_ascii_from_fp (png_const_structrp png_ptr, png_charp ascii, png_size_t size, double fp, unsigned int precision)

             ;



extern void png_ascii_from_fixed (png_const_structrp png_ptr, png_charp ascii, png_size_t size, png_fixed_point fp)
                                                                   ;
# 1787 "../../../libs/png/arm/../pngpriv.h"
extern int png_check_fp_number (png_const_charp string, png_size_t size, int *statep, png_size_tp whereami)
                                                                 ;







extern int png_check_fp_string (png_const_charp string, png_size_t size)
                              ;
# 1808 "../../../libs/png/arm/../pngpriv.h"
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
# 1849 "../../../libs/png/arm/../pngpriv.h"
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
# 1891 "../../../libs/png/arm/../pngpriv.h"
extern __attribute__((__noreturn__)) void ( png_safe_error) (png_structp png_ptr, png_const_charp error_message)
                                               ;


extern void ( png_safe_warning) (png_structp png_ptr, png_const_charp warning_message)
                                              ;




extern int png_safe_execute (png_imagep image, int (*function)(png_voidp), png_voidp arg)
                                                        ;




extern int png_image_error (png_imagep image, png_const_charp error_message)
                                            ;
# 1923 "../../../libs/png/arm/../pngpriv.h"
extern void png_init_filter_functions_neon (png_structp png_ptr, unsigned int bpp)
                                ;
# 1936 "../../../libs/png/arm/../pngpriv.h"
extern void png_seek_data (png_structp png_ptr, png_uint_32 length)
                                  ;
extern int png_opt_crc_finish (png_structrp png_ptr, png_uint_32 skip)
                                ;
extern void png_set_interlaced_pass (png_structrp png_ptr, int pass)
                        ;




# 1 "../../../libs/png/arm/../pngdebug.h" 1
# 1947 "../../../libs/png/arm/../pngpriv.h" 2
# 16 "../../../libs/png/arm/filter_neon_intrinsics.c" 2




# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 1 3 4
# 39 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdint.h" 1 3 4
# 9 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdint.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 1 3 4
# 26 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\wchar.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 2 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\wordsize.h" 1 3 4
# 28 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 2 3 4
# 48 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;





__extension__
typedef unsigned long long int uint64_t;






typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;



__extension__
typedef long long int int_least64_t;



typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;



__extension__
typedef unsigned long long int uint_least64_t;






typedef signed char int_fast8_t;





typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;



typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;
# 125 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 3 4
typedef int intptr_t;


typedef unsigned int uintptr_t;
# 137 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 3 4
__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
# 10 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdint.h" 2 3 4
# 40 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 2 3 4

typedef __builtin_neon_qi int8x8_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_hi int16x4_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_si int32x2_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_di int64x1_t;
typedef __builtin_neon_hf float16x4_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_sf float32x2_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_poly8 poly8x8_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_poly16 poly16x4_t __attribute__ ((__vector_size__ (8)));



typedef __builtin_neon_uqi uint8x8_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_uhi uint16x4_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_usi uint32x2_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_udi uint64x1_t;
typedef __builtin_neon_qi int8x16_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_hi int16x8_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_si int32x4_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_di int64x2_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_sf float32x4_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_poly8 poly8x16_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_poly16 poly16x8_t __attribute__ ((__vector_size__ (16)));



typedef __builtin_neon_uqi uint8x16_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_uhi uint16x8_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_usi uint32x4_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_udi uint64x2_t __attribute__ ((__vector_size__ (16)));

typedef float float32_t;
typedef __builtin_neon_poly8 poly8_t;
typedef __builtin_neon_poly16 poly16_t;





typedef struct int8x8x2_t
{
  int8x8_t val[2];
} int8x8x2_t;

typedef struct int8x16x2_t
{
  int8x16_t val[2];
} int8x16x2_t;

typedef struct int16x4x2_t
{
  int16x4_t val[2];
} int16x4x2_t;

typedef struct int16x8x2_t
{
  int16x8_t val[2];
} int16x8x2_t;

typedef struct int32x2x2_t
{
  int32x2_t val[2];
} int32x2x2_t;

typedef struct int32x4x2_t
{
  int32x4_t val[2];
} int32x4x2_t;

typedef struct int64x1x2_t
{
  int64x1_t val[2];
} int64x1x2_t;

typedef struct int64x2x2_t
{
  int64x2_t val[2];
} int64x2x2_t;

typedef struct uint8x8x2_t
{
  uint8x8_t val[2];
} uint8x8x2_t;

typedef struct uint8x16x2_t
{
  uint8x16_t val[2];
} uint8x16x2_t;

typedef struct uint16x4x2_t
{
  uint16x4_t val[2];
} uint16x4x2_t;

typedef struct uint16x8x2_t
{
  uint16x8_t val[2];
} uint16x8x2_t;

typedef struct uint32x2x2_t
{
  uint32x2_t val[2];
} uint32x2x2_t;

typedef struct uint32x4x2_t
{
  uint32x4_t val[2];
} uint32x4x2_t;

typedef struct uint64x1x2_t
{
  uint64x1_t val[2];
} uint64x1x2_t;

typedef struct uint64x2x2_t
{
  uint64x2_t val[2];
} uint64x2x2_t;

typedef struct float32x2x2_t
{
  float32x2_t val[2];
} float32x2x2_t;

typedef struct float32x4x2_t
{
  float32x4_t val[2];
} float32x4x2_t;

typedef struct poly8x8x2_t
{
  poly8x8_t val[2];
} poly8x8x2_t;

typedef struct poly8x16x2_t
{
  poly8x16_t val[2];
} poly8x16x2_t;

typedef struct poly16x4x2_t
{
  poly16x4_t val[2];
} poly16x4x2_t;

typedef struct poly16x8x2_t
{
  poly16x8_t val[2];
} poly16x8x2_t;
# 205 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
typedef struct int8x8x3_t
{
  int8x8_t val[3];
} int8x8x3_t;

typedef struct int8x16x3_t
{
  int8x16_t val[3];
} int8x16x3_t;

typedef struct int16x4x3_t
{
  int16x4_t val[3];
} int16x4x3_t;

typedef struct int16x8x3_t
{
  int16x8_t val[3];
} int16x8x3_t;

typedef struct int32x2x3_t
{
  int32x2_t val[3];
} int32x2x3_t;

typedef struct int32x4x3_t
{
  int32x4_t val[3];
} int32x4x3_t;

typedef struct int64x1x3_t
{
  int64x1_t val[3];
} int64x1x3_t;

typedef struct int64x2x3_t
{
  int64x2_t val[3];
} int64x2x3_t;

typedef struct uint8x8x3_t
{
  uint8x8_t val[3];
} uint8x8x3_t;

typedef struct uint8x16x3_t
{
  uint8x16_t val[3];
} uint8x16x3_t;

typedef struct uint16x4x3_t
{
  uint16x4_t val[3];
} uint16x4x3_t;

typedef struct uint16x8x3_t
{
  uint16x8_t val[3];
} uint16x8x3_t;

typedef struct uint32x2x3_t
{
  uint32x2_t val[3];
} uint32x2x3_t;

typedef struct uint32x4x3_t
{
  uint32x4_t val[3];
} uint32x4x3_t;

typedef struct uint64x1x3_t
{
  uint64x1_t val[3];
} uint64x1x3_t;

typedef struct uint64x2x3_t
{
  uint64x2_t val[3];
} uint64x2x3_t;

typedef struct float32x2x3_t
{
  float32x2_t val[3];
} float32x2x3_t;

typedef struct float32x4x3_t
{
  float32x4_t val[3];
} float32x4x3_t;

typedef struct poly8x8x3_t
{
  poly8x8_t val[3];
} poly8x8x3_t;

typedef struct poly8x16x3_t
{
  poly8x16_t val[3];
} poly8x16x3_t;

typedef struct poly16x4x3_t
{
  poly16x4_t val[3];
} poly16x4x3_t;

typedef struct poly16x8x3_t
{
  poly16x8_t val[3];
} poly16x8x3_t;
# 331 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
typedef struct int8x8x4_t
{
  int8x8_t val[4];
} int8x8x4_t;

typedef struct int8x16x4_t
{
  int8x16_t val[4];
} int8x16x4_t;

typedef struct int16x4x4_t
{
  int16x4_t val[4];
} int16x4x4_t;

typedef struct int16x8x4_t
{
  int16x8_t val[4];
} int16x8x4_t;

typedef struct int32x2x4_t
{
  int32x2_t val[4];
} int32x2x4_t;

typedef struct int32x4x4_t
{
  int32x4_t val[4];
} int32x4x4_t;

typedef struct int64x1x4_t
{
  int64x1_t val[4];
} int64x1x4_t;

typedef struct int64x2x4_t
{
  int64x2_t val[4];
} int64x2x4_t;

typedef struct uint8x8x4_t
{
  uint8x8_t val[4];
} uint8x8x4_t;

typedef struct uint8x16x4_t
{
  uint8x16_t val[4];
} uint8x16x4_t;

typedef struct uint16x4x4_t
{
  uint16x4_t val[4];
} uint16x4x4_t;

typedef struct uint16x8x4_t
{
  uint16x8_t val[4];
} uint16x8x4_t;

typedef struct uint32x2x4_t
{
  uint32x2_t val[4];
} uint32x2x4_t;

typedef struct uint32x4x4_t
{
  uint32x4_t val[4];
} uint32x4x4_t;

typedef struct uint64x1x4_t
{
  uint64x1_t val[4];
} uint64x1x4_t;

typedef struct uint64x2x4_t
{
  uint64x2_t val[4];
} uint64x2x4_t;

typedef struct float32x2x4_t
{
  float32x2_t val[4];
} float32x2x4_t;

typedef struct float32x4x4_t
{
  float32x4_t val[4];
} float32x4x4_t;

typedef struct poly8x8x4_t
{
  poly8x8_t val[4];
} poly8x8x4_t;

typedef struct poly8x16x4_t
{
  poly8x16_t val[4];
} poly8x16x4_t;

typedef struct poly16x4x4_t
{
  poly16x4_t val[4];
} poly16x4x4_t;

typedef struct poly16x8x4_t
{
  poly16x8_t val[4];
} poly16x8x4_t;
# 458 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vaddv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vadd_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vaddv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vadd_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vadddi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vadd_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vadddi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vaddv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vaddv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vaddv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vaddq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vaddv2di (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vaddq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vaddv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vaddv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vaddq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vaddv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vaddl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vaddlv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vaddl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vaddlv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vaddl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vaddlv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vaddl_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vaddlv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vaddl_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vaddlv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vaddl_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vaddlv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vaddw_s8 (int16x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vaddwv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vaddw_s16 (int32x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vaddwv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vaddw_s32 (int64x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vaddwv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vaddw_u8 (uint16x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vaddwv8qi ((int16x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vaddw_u16 (uint32x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vaddwv4hi ((int32x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vaddw_u32 (uint64x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vaddwv2si ((int64x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vhadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vhaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vhadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vhaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vhadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vhaddv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vhadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vhaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vhadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vhaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vhadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vhaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vhaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vhaddv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vhaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vhaddv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vhaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vhaddv4si (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vhaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vhaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vhaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vhaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vhaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vhaddv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrhadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vhaddv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrhadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vhaddv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrhadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vhaddv2si (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrhadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vhaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrhadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vhaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrhadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vhaddv2si ((int32x2_t) __a, (int32x2_t) __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrhaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vhaddv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrhaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vhaddv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrhaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vhaddv4si (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrhaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vhaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrhaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vhaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrhaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vhaddv4si ((int32x4_t) __a, (int32x4_t) __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqaddv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqadd_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqadddi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqadd_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqadddi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqaddv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqaddv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqaddv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqaddq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqaddv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqaddv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqaddq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqaddv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vaddhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vaddhnv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vaddhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vaddhnv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vaddhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vaddhnv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vaddhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vaddhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vaddhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vaddhnv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vaddhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vaddhnv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vraddhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vaddhnv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vraddhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vaddhnv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vraddhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vaddhnv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vraddhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vaddhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vraddhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vaddhnv4si ((int32x4_t) __a, (int32x4_t) __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vraddhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vaddhnv2di ((int64x2_t) __a, (int64x2_t) __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmul_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vmulv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmul_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vmulv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmul_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vmulv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmul_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vmulv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmul_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vmulv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmul_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vmulv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmul_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vmulv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vmul_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (poly8x8_t)__builtin_neon_vmulv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmulq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vmulv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmulq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vmulv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmulq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vmulv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmulq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vmulv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmulq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vmulv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmulq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vmulv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmulq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vmulv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vmulq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  return (poly8x16_t)__builtin_neon_vmulv16qi ((int8x16_t) __a, (int8x16_t) __b, 2);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqdmulh_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulhv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqdmulh_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulhv2si (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqdmulhq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulhv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmulhq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulhv4si (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrdmulh_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulhv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrdmulh_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulhv2si (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrdmulhq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulhv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrdmulhq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulhv4si (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmull_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vmullv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmull_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vmullv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmull_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vmullv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmull_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vmullv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmull_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vmullv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmull_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vmullv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vmull_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (poly16x8_t)__builtin_neon_vmullv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmull_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmullv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmull_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqdmullv2si (__a, __b, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmla_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vmlav8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmla_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vmlav4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmla_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vmlav2si (__a, __b, __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmla_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c)
{
  return (float32x2_t)__builtin_neon_vmlav2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmla_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vmlav8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmla_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vmlav4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmla_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vmlav2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmlaq_s8 (int8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vmlav16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlaq_s16 (int16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlav8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlaq_s32 (int32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlav4si (__a, __b, __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlaq_f32 (float32x4_t __a, float32x4_t __b, float32x4_t __c)
{
  return (float32x4_t)__builtin_neon_vmlav4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmlaq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vmlav16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlaq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlav8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlaq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlav4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlal_s8 (int16x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlalv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlal_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlalv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlal_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vmlalv2si (__a, __b, __c, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlal_u8 (uint16x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlalv8qi ((int16x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlal_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlalv4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlal_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlalv2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlal_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlalv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlal_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlalv2si (__a, __b, __c, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmls_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vmlsv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmls_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vmlsv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmls_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vmlsv2si (__a, __b, __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmls_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c)
{
  return (float32x2_t)__builtin_neon_vmlsv2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmls_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vmlsv8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmls_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vmlsv4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmls_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vmlsv2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmlsq_s8 (int8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vmlsv16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsq_s16 (int16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlsv8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsq_s32 (int32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlsv4si (__a, __b, __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlsq_f32 (float32x4_t __a, float32x4_t __b, float32x4_t __c)
{
  return (float32x4_t)__builtin_neon_vmlsv4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmlsq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vmlsv16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlsv8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlsv4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsl_s8 (int16x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlslv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsl_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlslv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlsl_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vmlslv2si (__a, __b, __c, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsl_u8 (uint16x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlslv8qi ((int16x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsl_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlslv4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlsl_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlslv2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlsl_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlslv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlsl_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlslv2si (__a, __b, __c, 1);
}
# 1524 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsub_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vsubv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsub_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vsubv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsub_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vsubv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vsub_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vsubv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsub_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vsubv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsub_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vsubv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsub_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vsubv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsub_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vsubdi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsub_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vsubdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsubq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vsubv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsubq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vsubv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsubq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vsubv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsubq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vsubv2di (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vsubq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vsubv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsubq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vsubv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsubq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vsubv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsubq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vsubv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsubq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vsubv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsubl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vsublv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsubl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vsublv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsubl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vsublv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsubl_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vsublv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsubl_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vsublv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsubl_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vsublv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsubw_s8 (int16x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vsubwv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsubw_s16 (int32x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vsubwv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsubw_s32 (int64x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vsubwv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsubw_u8 (uint16x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vsubwv8qi ((int16x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsubw_u16 (uint32x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vsubwv4hi ((int32x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsubw_u32 (uint64x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vsubwv2si ((int64x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vhsub_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vhsubv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vhsub_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vhsubv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vhsub_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vhsubv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vhsub_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vhsubv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vhsub_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vhsubv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vhsub_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vhsubv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vhsubq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vhsubv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vhsubq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vhsubv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vhsubq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vhsubv4si (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vhsubq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vhsubv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vhsubq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vhsubv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vhsubq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vhsubv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqsub_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqsubv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqsub_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqsubv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqsub_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqsubv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqsub_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqsubdi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqsub_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqsubv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqsub_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqsubv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqsub_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqsubv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqsub_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqsubdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqsubq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqsubv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqsubq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqsubv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqsubq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqsubv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqsubq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqsubv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqsubq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqsubv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqsubq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqsubv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqsubq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqsubv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqsubq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqsubv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsubhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vsubhnv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsubhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vsubhnv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsubhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vsubhnv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsubhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vsubhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsubhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vsubhnv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsubhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vsubhnv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrsubhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vsubhnv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrsubhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vsubhnv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrsubhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vsubhnv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrsubhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vsubhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrsubhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vsubhnv4si ((int32x4_t) __a, (int32x4_t) __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrsubhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vsubhnv2di ((int64x2_t) __a, (int64x2_t) __b, 4);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vceq_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vceqv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vceq_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vceqv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vceq_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vceqv2si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vceq_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vceqv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vceq_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vceqv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vceq_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vceqv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vceq_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vceqv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vceq_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vceqv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vceqq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vceqv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vceqq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vceqv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vceqq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vceqv4si (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vceqq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vceqv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vceqq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vceqv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vceqq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vceqv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vceqq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vceqv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vceqq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vceqv16qi ((int8x16_t) __a, (int8x16_t) __b, 2);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcge_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgev8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcge_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgev4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcge_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcge_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcge_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgeuv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcge_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgeuv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcge_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgeuv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgeq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgev16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgeq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgev8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgeq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4si (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgeq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgeq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgeuv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgeq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgeuv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgeq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgeuv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcle_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgev8qi (__b, __a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcle_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgev4hi (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcle_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2si (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcle_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2sf (__b, __a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcle_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgeuv8qi ((int8x8_t) __b, (int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcle_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgeuv4hi ((int16x4_t) __b, (int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcle_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgeuv2si ((int32x2_t) __b, (int32x2_t) __a, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcleq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgev16qi (__b, __a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcleq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgev8hi (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcleq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4si (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcleq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4sf (__b, __a, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcleq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgeuv16qi ((int8x16_t) __b, (int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcleq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgeuv8hi ((int16x8_t) __b, (int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcleq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgeuv4si ((int32x4_t) __b, (int32x4_t) __a, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcgt_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcgt_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcgt_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcgt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcgt_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtuv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcgt_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtuv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcgt_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtuv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgtq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgtq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgtq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4si (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgtq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgtq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtuv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgtq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtuv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgtq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtuv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vclt_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtv8qi (__b, __a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vclt_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtv4hi (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclt_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2si (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2sf (__b, __a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vclt_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtuv8qi ((int8x8_t) __b, (int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vclt_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtuv4hi ((int16x4_t) __b, (int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclt_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtuv2si ((int32x2_t) __b, (int32x2_t) __a, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcltq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtv16qi (__b, __a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcltq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtv8hi (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcltq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4si (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcltq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4sf (__b, __a, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcltq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtuv16qi ((int8x16_t) __b, (int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcltq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtuv8hi ((int16x8_t) __b, (int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcltq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtuv4si ((int32x4_t) __b, (int32x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcage_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagev2sf (__a, __b, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcageq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagev4sf (__a, __b, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcale_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagev2sf (__b, __a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcaleq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagev4sf (__b, __a, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcagt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagtv2sf (__a, __b, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcagtq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagtv4sf (__a, __b, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcalt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagtv2sf (__b, __a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcaltq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagtv4sf (__b, __a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtst_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtstv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vtst_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vtstv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vtst_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vtstv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtst_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtstv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vtst_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vtstv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vtst_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vtstv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtst_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtstv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vtstq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vtstv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vtstq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vtstv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vtstq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vtstv4si (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vtstq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vtstv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vtstq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vtstv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vtstq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vtstv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vtstq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vtstv16qi ((int8x16_t) __a, (int8x16_t) __b, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vabd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vabdv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vabd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vabdv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vabd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vabdv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vabd_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vabdv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vabd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vabdv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vabd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vabdv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vabd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vabdv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vabdq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vabdv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabdq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vabdv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabdq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vabdv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vabdq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vabdv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vabdq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vabdv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabdq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vabdv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabdq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vabdv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabdl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vabdlv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabdl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vabdlv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vabdl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vabdlv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabdl_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vabdlv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabdl_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vabdlv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vabdl_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vabdlv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vaba_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vabav8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vaba_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vabav4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vaba_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vabav2si (__a, __b, __c, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vaba_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vabav8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vaba_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vabav4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vaba_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vabav2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vabaq_s8 (int8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vabav16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabaq_s16 (int16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vabav8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabaq_s32 (int32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vabav4si (__a, __b, __c, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vabaq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vabav16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabaq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vabav8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabaq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vabav4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabal_s8 (int16x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int16x8_t)__builtin_neon_vabalv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabal_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vabalv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vabal_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vabalv2si (__a, __b, __c, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabal_u8 (uint16x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vabalv8qi ((int16x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabal_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vabalv4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vabal_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vabalv2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmax_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vmaxv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmax_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vmaxv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmax_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vmaxv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmax_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vmaxv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmax_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vmaxv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmax_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vmaxv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmax_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vmaxv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmaxq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vmaxv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmaxq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vmaxv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmaxq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vmaxv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmaxq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vmaxv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmaxq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vmaxv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmaxq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vmaxv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmaxq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vmaxv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmin_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vminv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmin_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vminv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmin_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vminv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmin_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vminv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmin_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vminv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmin_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vminv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmin_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vminv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vminq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vminv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vminq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vminv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vminq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vminv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vminq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vminv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vminq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vminv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vminq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vminv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vminq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vminv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vpadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vpaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vpaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vpaddv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vpadd_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vpaddv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vpadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vpaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vpaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vpaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpaddl_s8 (int8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vpaddlv8qi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpaddl_s16 (int16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vpaddlv4hi (__a, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vpaddl_s32 (int32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vpaddlv2si (__a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpaddl_u8 (uint8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vpaddlv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpaddl_u16 (uint16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vpaddlv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vpaddl_u32 (uint32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vpaddlv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vpaddlq_s8 (int8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vpaddlv16qi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vpaddlq_s16 (int16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vpaddlv8hi (__a, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vpaddlq_s32 (int32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vpaddlv4si (__a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vpaddlq_u8 (uint8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vpaddlv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vpaddlq_u16 (uint16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vpaddlv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vpaddlq_u32 (uint32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vpaddlv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpadal_s8 (int16x4_t __a, int8x8_t __b)
{
  return (int16x4_t)__builtin_neon_vpadalv8qi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpadal_s16 (int32x2_t __a, int16x4_t __b)
{
  return (int32x2_t)__builtin_neon_vpadalv4hi (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vpadal_s32 (int64x1_t __a, int32x2_t __b)
{
  return (int64x1_t)__builtin_neon_vpadalv2si (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpadal_u8 (uint16x4_t __a, uint8x8_t __b)
{
  return (uint16x4_t)__builtin_neon_vpadalv8qi ((int16x4_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpadal_u16 (uint32x2_t __a, uint16x4_t __b)
{
  return (uint32x2_t)__builtin_neon_vpadalv4hi ((int32x2_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vpadal_u32 (uint64x1_t __a, uint32x2_t __b)
{
  return (uint64x1_t)__builtin_neon_vpadalv2si ((int64x1_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vpadalq_s8 (int16x8_t __a, int8x16_t __b)
{
  return (int16x8_t)__builtin_neon_vpadalv16qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vpadalq_s16 (int32x4_t __a, int16x8_t __b)
{
  return (int32x4_t)__builtin_neon_vpadalv8hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vpadalq_s32 (int64x2_t __a, int32x4_t __b)
{
  return (int64x2_t)__builtin_neon_vpadalv4si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vpadalq_u8 (uint16x8_t __a, uint8x16_t __b)
{
  return (uint16x8_t)__builtin_neon_vpadalv16qi ((int16x8_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vpadalq_u16 (uint32x4_t __a, uint16x8_t __b)
{
  return (uint32x4_t)__builtin_neon_vpadalv8hi ((int32x4_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vpadalq_u32 (uint64x2_t __a, uint32x4_t __b)
{
  return (uint64x2_t)__builtin_neon_vpadalv4si ((int64x2_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vpmax_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vpmaxv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpmax_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vpmaxv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpmax_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vpmaxv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vpmax_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vpmaxv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vpmax_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vpmaxv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpmax_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vpmaxv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpmax_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vpmaxv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vpmin_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vpminv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpmin_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vpminv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpmin_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vpminv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vpmin_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vpminv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vpmin_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vpminv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpmin_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vpminv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpmin_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vpminv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrecps_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vrecpsv2sf (__a, __b, 3);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrecpsq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vrecpsv4sf (__a, __b, 3);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrsqrts_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vrsqrtsv2sf (__a, __b, 3);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrsqrtsq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vrsqrtsv4sf (__a, __b, 3);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vshlv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vshlv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vshlv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vshldi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vshlv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vshlv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vshlv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vshldi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vshlv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vshlv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vshlv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vshlv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vshlv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vshlv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vshlv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vshlv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vshlv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vshlv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vshlv2si (__a, __b, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vrshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vshldi (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vshlv8qi ((int8x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vshlv4hi ((int16x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vshlv2si ((int32x2_t) __a, __b, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vrshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vshldi ((int64x1_t) __a, __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vshlv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vshlv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vshlv4si (__a, __b, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vrshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vshlv2di (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vshlv16qi ((int8x16_t) __a, __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vshlv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vshlv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vrshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vshlv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqshlv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqshlv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqshlv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqshldi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqshlv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqshlv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqshlv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqshldi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqshlv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqshlv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqshlv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqshlv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqshlv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqshlv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqshlv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqshlv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqrshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqshlv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqshlv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqshlv2si (__a, __b, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqrshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqshldi (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqrshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqshlv8qi ((int8x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqrshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqshlv4hi ((int16x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqrshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqshlv2si ((int32x2_t) __a, __b, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqrshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqshldi ((int64x1_t) __a, __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqrshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqshlv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqshlv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqshlv4si (__a, __b, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqrshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqshlv2di (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqrshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqshlv16qi ((int8x16_t) __a, __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqrshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqshlv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqrshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqshlv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqrshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqshlv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshr_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshr_nv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshr_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshr_nv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshr_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshr_nv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vshr_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vshr_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshr_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshr_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshr_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshr_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshr_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshr_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vshr_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vshr_ndi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vshrq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vshr_nv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshrq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshr_nv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshrq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshr_nv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshrq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshr_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vshrq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vshr_nv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshrq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshr_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshrq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshr_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshrq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshr_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrshr_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshr_nv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrshr_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshr_nv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrshr_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshr_nv2si (__a, __b, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vrshr_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vshr_ndi (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrshr_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshr_nv8qi ((int8x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrshr_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshr_nv4hi ((int16x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrshr_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshr_nv2si ((int32x2_t) __a, __b, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vrshr_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vshr_ndi ((int64x1_t) __a, __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrshrq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vshr_nv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrshrq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshr_nv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrshrq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshr_nv4si (__a, __b, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vrshrq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshr_nv2di (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrshrq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vshr_nv16qi ((int8x16_t) __a, __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrshrq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshr_nv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrshrq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshr_nv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vrshrq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshr_nv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshrn_nv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshrn_nv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshrn_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshrn_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshrn_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshrn_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshrn_nv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshrn_nv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshrn_nv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshrn_nv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshrn_nv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshrn_nv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vqshrn_nv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vqshrn_nv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vqshrn_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrn_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrn_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrn_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqrshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vqshrn_nv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vqshrn_nv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vqshrn_nv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqrshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrn_nv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqrshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrn_nv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqrshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrn_nv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshrun_n_s16 (int16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrun_nv8hi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshrun_n_s32 (int32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrun_nv4si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshrun_n_s64 (int64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrun_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqrshrun_n_s16 (int16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrun_nv8hi (__a, __b, 5);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqrshrun_n_s32 (int32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrun_nv4si (__a, __b, 5);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqrshrun_n_s64 (int64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrun_nv2di (__a, __b, 5);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshl_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshl_nv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshl_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshl_nv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshl_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshl_nv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vshl_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vshl_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshl_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshl_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshl_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshl_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshl_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshl_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vshl_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vshl_ndi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vshlq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vshl_nv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshlq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshl_nv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshlq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshl_nv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshlq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshl_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vshlq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vshl_nv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshlq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshl_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshlq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshl_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshlq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshl_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqshl_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vqshl_nv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqshl_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vqshl_nv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqshl_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vqshl_nv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqshl_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vqshl_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshl_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshl_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshl_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshl_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshl_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshl_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqshl_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vqshl_ndi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqshlq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vqshl_nv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqshlq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vqshl_nv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqshlq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vqshl_nv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqshlq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vqshl_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqshlq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vqshl_nv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqshlq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vqshl_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqshlq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vqshl_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqshlq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vqshl_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshlu_n_s8 (int8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshlu_nv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshlu_n_s16 (int16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshlu_nv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshlu_n_s32 (int32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshlu_nv2si (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqshlu_n_s64 (int64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vqshlu_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqshluq_n_s8 (int8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vqshlu_nv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqshluq_n_s16 (int16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vqshlu_nv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqshluq_n_s32 (int32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vqshlu_nv4si (__a, __b, 1);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqshluq_n_s64 (int64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vqshlu_nv2di (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshll_n_s8 (int8x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshll_nv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshll_n_s16 (int16x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshll_nv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshll_n_s32 (int32x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshll_nv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshll_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshll_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshll_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshll_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshll_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshll_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsra_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsra_nv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsra_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsra_nv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsra_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsra_nv2si (__a, __b, __c, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsra_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsra_ndi (__a, __b, __c, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsra_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsra_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsra_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsra_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsra_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsra_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsra_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsra_ndi ((int64x1_t) __a, (int64x1_t) __b, __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsraq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsra_nv16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsraq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsra_nv8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsraq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsra_nv4si (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsraq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsra_nv2di (__a, __b, __c, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsraq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsra_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsraq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsra_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsraq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsra_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsraq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsra_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrsra_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsra_nv8qi (__a, __b, __c, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrsra_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsra_nv4hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrsra_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsra_nv2si (__a, __b, __c, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vrsra_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsra_ndi (__a, __b, __c, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrsra_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsra_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrsra_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsra_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrsra_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsra_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vrsra_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsra_ndi ((int64x1_t) __a, (int64x1_t) __b, __c, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrsraq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsra_nv16qi (__a, __b, __c, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrsraq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsra_nv8hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrsraq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsra_nv4si (__a, __b, __c, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vrsraq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsra_nv2di (__a, __b, __c, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrsraq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsra_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrsraq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsra_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrsraq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsra_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vrsraq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsra_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c, 4);
}
# 4430 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsri_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsri_nv8qi (__a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsri_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsri_nv4hi (__a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsri_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsri_nv2si (__a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsri_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsri_ndi (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsri_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsri_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsri_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsri_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsri_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsri_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsri_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsri_ndi ((int64x1_t) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vsri_n_p8 (poly8x8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vsri_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vsri_n_p16 (poly16x4_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vsri_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}
# 4498 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsriq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsri_nv16qi (__a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsriq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsri_nv8hi (__a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsriq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsri_nv4si (__a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsriq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsri_nv2di (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsriq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsri_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsriq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsri_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsriq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsri_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsriq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsri_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vsriq_n_p8 (poly8x16_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vsri_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vsriq_n_p16 (poly16x8_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vsri_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}
# 4566 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsli_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsli_nv8qi (__a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsli_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsli_nv4hi (__a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsli_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsli_nv2si (__a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsli_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsli_ndi (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsli_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsli_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsli_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsli_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsli_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsli_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsli_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsli_ndi ((int64x1_t) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vsli_n_p8 (poly8x8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vsli_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vsli_n_p16 (poly16x4_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vsli_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}
# 4634 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsliq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsli_nv16qi (__a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsliq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsli_nv8hi (__a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsliq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsli_nv4si (__a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsliq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsli_nv2di (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsliq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsli_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsliq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsli_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsliq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsli_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsliq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsli_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vsliq_n_p8 (poly8x16_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vsli_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vsliq_n_p16 (poly16x8_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vsli_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vabs_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vabsv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vabs_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vabsv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vabs_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vabsv2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vabs_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vabsv2sf (__a, 3);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vabsq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vabsv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabsq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vabsv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabsq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vabsv4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vabsq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vabsv4sf (__a, 3);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqabs_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vqabsv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqabs_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vqabsv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqabs_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vqabsv2si (__a, 1);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqabsq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vqabsv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqabsq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vqabsv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqabsq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vqabsv4si (__a, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vneg_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vnegv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vneg_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vnegv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vneg_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vnegv2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vneg_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vnegv2sf (__a, 3);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vnegq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vnegv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vnegq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vnegv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vnegq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vnegv4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vnegq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vnegv4sf (__a, 3);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqneg_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vqnegv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqneg_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vqnegv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqneg_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vqnegv2si (__a, 1);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqnegq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vqnegv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqnegq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vqnegv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqnegq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vqnegv4si (__a, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmvn_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vmvnv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmvn_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vmvnv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmvn_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vmvnv2si (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmvn_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vmvnv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmvn_u16 (uint16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vmvnv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmvn_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vmvnv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vmvn_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vmvnv8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmvnq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vmvnv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmvnq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vmvnv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmvnq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vmvnv4si (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmvnq_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vmvnv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmvnq_u16 (uint16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vmvnv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmvnq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vmvnv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vmvnq_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vmvnv16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vcls_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vclsv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vcls_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vclsv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcls_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vclsv2si (__a, 1);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vclsq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vclsv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vclsq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vclsv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vclsq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vclsv4si (__a, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vclz_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vclzv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vclz_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vclzv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vclz_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vclzv2si (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vclz_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vclzv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vclz_u16 (uint16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vclzv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclz_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vclzv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vclzq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vclzv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vclzq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vclzv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vclzq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vclzv4si (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vclzq_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vclzv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vclzq_u16 (uint16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vclzv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vclzq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vclzv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vcnt_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vcntv8qi (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcnt_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vcntv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vcnt_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vcntv8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vcntq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vcntv16qi (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcntq_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vcntv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vcntq_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vcntv16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrecpe_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vrecpev2sf (__a, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrecpe_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vrecpev2si ((int32x2_t) __a, 0);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrecpeq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vrecpev4sf (__a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrecpeq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vrecpev4si ((int32x4_t) __a, 0);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrsqrte_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vrsqrtev2sf (__a, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrsqrte_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vrsqrtev2si ((int32x2_t) __a, 0);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrsqrteq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vrsqrtev4sf (__a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrsqrteq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vrsqrtev4si ((int32x4_t) __a, 0);
}

__extension__ static __inline int8_t __attribute__ ((__always_inline__))
vget_lane_s8 (int8x8_t __a, const int __b)
{
  return (int8_t)__builtin_neon_vget_lanev8qi (__a, __b, 1);
}

__extension__ static __inline int16_t __attribute__ ((__always_inline__))
vget_lane_s16 (int16x4_t __a, const int __b)
{
  return (int16_t)__builtin_neon_vget_lanev4hi (__a, __b, 1);
}

__extension__ static __inline int32_t __attribute__ ((__always_inline__))
vget_lane_s32 (int32x2_t __a, const int __b)
{
  return (int32_t)__builtin_neon_vget_lanev2si (__a, __b, 1);
}

__extension__ static __inline float32_t __attribute__ ((__always_inline__))
vget_lane_f32 (float32x2_t __a, const int __b)
{
  return (float32_t)__builtin_neon_vget_lanev2sf (__a, __b, 3);
}

__extension__ static __inline uint8_t __attribute__ ((__always_inline__))
vget_lane_u8 (uint8x8_t __a, const int __b)
{
  return (uint8_t)__builtin_neon_vget_lanev8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16_t __attribute__ ((__always_inline__))
vget_lane_u16 (uint16x4_t __a, const int __b)
{
  return (uint16_t)__builtin_neon_vget_lanev4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32_t __attribute__ ((__always_inline__))
vget_lane_u32 (uint32x2_t __a, const int __b)
{
  return (uint32_t)__builtin_neon_vget_lanev2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline poly8_t __attribute__ ((__always_inline__))
vget_lane_p8 (poly8x8_t __a, const int __b)
{
  return (poly8_t)__builtin_neon_vget_lanev8qi ((int8x8_t) __a, __b, 2);
}

__extension__ static __inline poly16_t __attribute__ ((__always_inline__))
vget_lane_p16 (poly16x4_t __a, const int __b)
{
  return (poly16_t)__builtin_neon_vget_lanev4hi ((int16x4_t) __a, __b, 2);
}

__extension__ static __inline int64_t __attribute__ ((__always_inline__))
vget_lane_s64 (int64x1_t __a, const int __b)
{
  return (int64_t)__builtin_neon_vget_lanedi (__a, __b, 1);
}

__extension__ static __inline uint64_t __attribute__ ((__always_inline__))
vget_lane_u64 (uint64x1_t __a, const int __b)
{
  return (uint64_t)__builtin_neon_vget_lanedi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8_t __attribute__ ((__always_inline__))
vgetq_lane_s8 (int8x16_t __a, const int __b)
{
  return (int8_t)__builtin_neon_vget_lanev16qi (__a, __b, 1);
}

__extension__ static __inline int16_t __attribute__ ((__always_inline__))
vgetq_lane_s16 (int16x8_t __a, const int __b)
{
  return (int16_t)__builtin_neon_vget_lanev8hi (__a, __b, 1);
}

__extension__ static __inline int32_t __attribute__ ((__always_inline__))
vgetq_lane_s32 (int32x4_t __a, const int __b)
{
  return (int32_t)__builtin_neon_vget_lanev4si (__a, __b, 1);
}

__extension__ static __inline float32_t __attribute__ ((__always_inline__))
vgetq_lane_f32 (float32x4_t __a, const int __b)
{
  return (float32_t)__builtin_neon_vget_lanev4sf (__a, __b, 3);
}

__extension__ static __inline uint8_t __attribute__ ((__always_inline__))
vgetq_lane_u8 (uint8x16_t __a, const int __b)
{
  return (uint8_t)__builtin_neon_vget_lanev16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16_t __attribute__ ((__always_inline__))
vgetq_lane_u16 (uint16x8_t __a, const int __b)
{
  return (uint16_t)__builtin_neon_vget_lanev8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32_t __attribute__ ((__always_inline__))
vgetq_lane_u32 (uint32x4_t __a, const int __b)
{
  return (uint32_t)__builtin_neon_vget_lanev4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline poly8_t __attribute__ ((__always_inline__))
vgetq_lane_p8 (poly8x16_t __a, const int __b)
{
  return (poly8_t)__builtin_neon_vget_lanev16qi ((int8x16_t) __a, __b, 2);
}

__extension__ static __inline poly16_t __attribute__ ((__always_inline__))
vgetq_lane_p16 (poly16x8_t __a, const int __b)
{
  return (poly16_t)__builtin_neon_vget_lanev8hi ((int16x8_t) __a, __b, 2);
}

__extension__ static __inline int64_t __attribute__ ((__always_inline__))
vgetq_lane_s64 (int64x2_t __a, const int __b)
{
  return (int64_t)__builtin_neon_vget_lanev2di (__a, __b, 1);
}

__extension__ static __inline uint64_t __attribute__ ((__always_inline__))
vgetq_lane_u64 (uint64x2_t __a, const int __b)
{
  return (uint64_t)__builtin_neon_vget_lanev2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vset_lane_s8 (int8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vset_lanev8qi ((__builtin_neon_qi) __a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vset_lane_s16 (int16_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vset_lanev4hi ((__builtin_neon_hi) __a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vset_lane_s32 (int32_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vset_lanev2si ((__builtin_neon_si) __a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vset_lane_f32 (float32_t __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vset_lanev2sf ((__builtin_neon_sf) __a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vset_lane_u8 (uint8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vset_lanev8qi ((__builtin_neon_qi) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vset_lane_u16 (uint16_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vset_lanev4hi ((__builtin_neon_hi) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vset_lane_u32 (uint32_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vset_lanev2si ((__builtin_neon_si) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vset_lane_p8 (poly8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vset_lanev8qi ((__builtin_neon_qi) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vset_lane_p16 (poly16_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vset_lanev4hi ((__builtin_neon_hi) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vset_lane_s64 (int64_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vset_lanedi ((__builtin_neon_di) __a, __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vset_lane_u64 (uint64_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vset_lanedi ((__builtin_neon_di) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsetq_lane_s8 (int8_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vset_lanev16qi ((__builtin_neon_qi) __a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsetq_lane_s16 (int16_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vset_lanev8hi ((__builtin_neon_hi) __a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsetq_lane_s32 (int32_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vset_lanev4si ((__builtin_neon_si) __a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vsetq_lane_f32 (float32_t __a, float32x4_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vset_lanev4sf ((__builtin_neon_sf) __a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsetq_lane_u8 (uint8_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vset_lanev16qi ((__builtin_neon_qi) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsetq_lane_u16 (uint16_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vset_lanev8hi ((__builtin_neon_hi) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsetq_lane_u32 (uint32_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vset_lanev4si ((__builtin_neon_si) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vsetq_lane_p8 (poly8_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vset_lanev16qi ((__builtin_neon_qi) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vsetq_lane_p16 (poly16_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vset_lanev8hi ((__builtin_neon_hi) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsetq_lane_s64 (int64_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vset_lanev2di ((__builtin_neon_di) __a, __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsetq_lane_u64 (uint64_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vset_lanev2di ((__builtin_neon_di) __a, (int64x2_t) __b, __c);
}
# 5410 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vcreate_s8 (uint64_t __a)
{
  return (int8x8_t)__builtin_neon_vcreatev8qi ((__builtin_neon_di) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vcreate_s16 (uint64_t __a)
{
  return (int16x4_t)__builtin_neon_vcreatev4hi ((__builtin_neon_di) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcreate_s32 (uint64_t __a)
{
  return (int32x2_t)__builtin_neon_vcreatev2si ((__builtin_neon_di) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vcreate_s64 (uint64_t __a)
{
  return (int64x1_t)__builtin_neon_vcreatedi ((__builtin_neon_di) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcreate_f32 (uint64_t __a)
{
  return (float32x2_t)__builtin_neon_vcreatev2sf ((__builtin_neon_di) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcreate_u8 (uint64_t __a)
{
  return (uint8x8_t)__builtin_neon_vcreatev8qi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcreate_u16 (uint64_t __a)
{
  return (uint16x4_t)__builtin_neon_vcreatev4hi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcreate_u32 (uint64_t __a)
{
  return (uint32x2_t)__builtin_neon_vcreatev2si ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vcreate_u64 (uint64_t __a)
{
  return (uint64x1_t)__builtin_neon_vcreatedi ((__builtin_neon_di) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vcreate_p8 (uint64_t __a)
{
  return (poly8x8_t)__builtin_neon_vcreatev8qi ((__builtin_neon_di) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vcreate_p16 (uint64_t __a)
{
  return (poly16x4_t)__builtin_neon_vcreatev4hi ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vdup_n_s8 (int8_t __a)
{
  return (int8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vdup_n_s16 (int16_t __a)
{
  return (int16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vdup_n_s32 (int32_t __a)
{
  return (int32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vdup_n_f32 (float32_t __a)
{
  return (float32x2_t)__builtin_neon_vdup_nv2sf ((__builtin_neon_sf) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vdup_n_u8 (uint8_t __a)
{
  return (uint8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vdup_n_u16 (uint16_t __a)
{
  return (uint16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vdup_n_u32 (uint32_t __a)
{
  return (uint32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vdup_n_p8 (poly8_t __a)
{
  return (poly8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vdup_n_p16 (poly16_t __a)
{
  return (poly16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}
# 5538 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vdup_n_s64 (int64_t __a)
{
  return (int64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vdup_n_u64 (uint64_t __a)
{
  return (uint64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}
# 5558 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vdupq_n_s8 (int8_t __a)
{
  return (int8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vdupq_n_s16 (int16_t __a)
{
  return (int16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vdupq_n_s32 (int32_t __a)
{
  return (int32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vdupq_n_f32 (float32_t __a)
{
  return (float32x4_t)__builtin_neon_vdup_nv4sf ((__builtin_neon_sf) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vdupq_n_u8 (uint8_t __a)
{
  return (uint8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vdupq_n_u16 (uint16_t __a)
{
  return (uint16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vdupq_n_u32 (uint32_t __a)
{
  return (uint32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vdupq_n_p8 (poly8_t __a)
{
  return (poly8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vdupq_n_p16 (poly16_t __a)
{
  return (poly16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vdupq_n_s64 (int64_t __a)
{
  return (int64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vdupq_n_u64 (uint64_t __a)
{
  return (uint64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmov_n_s8 (int8_t __a)
{
  return (int8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmov_n_s16 (int16_t __a)
{
  return (int16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmov_n_s32 (int32_t __a)
{
  return (int32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmov_n_f32 (float32_t __a)
{
  return (float32x2_t)__builtin_neon_vdup_nv2sf ((__builtin_neon_sf) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmov_n_u8 (uint8_t __a)
{
  return (uint8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmov_n_u16 (uint16_t __a)
{
  return (uint16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmov_n_u32 (uint32_t __a)
{
  return (uint32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vmov_n_p8 (poly8_t __a)
{
  return (poly8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vmov_n_p16 (poly16_t __a)
{
  return (poly16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vmov_n_s64 (int64_t __a)
{
  return (int64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vmov_n_u64 (uint64_t __a)
{
  return (uint64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmovq_n_s8 (int8_t __a)
{
  return (int8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmovq_n_s16 (int16_t __a)
{
  return (int16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmovq_n_s32 (int32_t __a)
{
  return (int32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmovq_n_f32 (float32_t __a)
{
  return (float32x4_t)__builtin_neon_vdup_nv4sf ((__builtin_neon_sf) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmovq_n_u8 (uint8_t __a)
{
  return (uint8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmovq_n_u16 (uint16_t __a)
{
  return (uint16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmovq_n_u32 (uint32_t __a)
{
  return (uint32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vmovq_n_p8 (poly8_t __a)
{
  return (poly8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vmovq_n_p16 (poly16_t __a)
{
  return (poly16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmovq_n_s64 (int64_t __a)
{
  return (int64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmovq_n_u64 (uint64_t __a)
{
  return (uint64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vdup_lane_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vdup_lanev8qi (__a, __b);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vdup_lane_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vdup_lanev4hi (__a, __b);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vdup_lane_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vdup_lanev2si (__a, __b);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vdup_lane_f32 (float32x2_t __a, const int __b)
{
  return (float32x2_t)__builtin_neon_vdup_lanev2sf (__a, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vdup_lane_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vdup_lanev8qi ((int8x8_t) __a, __b);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vdup_lane_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vdup_lanev4hi ((int16x4_t) __a, __b);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vdup_lane_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vdup_lanev2si ((int32x2_t) __a, __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vdup_lane_p8 (poly8x8_t __a, const int __b)
{
  return (poly8x8_t)__builtin_neon_vdup_lanev8qi ((int8x8_t) __a, __b);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vdup_lane_p16 (poly16x4_t __a, const int __b)
{
  return (poly16x4_t)__builtin_neon_vdup_lanev4hi ((int16x4_t) __a, __b);
}
# 5818 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vdup_lane_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vdup_lanedi (__a, __b);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vdup_lane_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vdup_lanedi ((int64x1_t) __a, __b);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vdupq_lane_s8 (int8x8_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vdup_lanev16qi (__a, __b);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vdupq_lane_s16 (int16x4_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vdup_lanev8hi (__a, __b);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vdupq_lane_s32 (int32x2_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vdup_lanev4si (__a, __b);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vdupq_lane_f32 (float32x2_t __a, const int __b)
{
  return (float32x4_t)__builtin_neon_vdup_lanev4sf (__a, __b);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vdupq_lane_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vdup_lanev16qi ((int8x8_t) __a, __b);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vdupq_lane_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vdup_lanev8hi ((int16x4_t) __a, __b);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vdupq_lane_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vdup_lanev4si ((int32x2_t) __a, __b);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vdupq_lane_p8 (poly8x8_t __a, const int __b)
{
  return (poly8x16_t)__builtin_neon_vdup_lanev16qi ((int8x8_t) __a, __b);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vdupq_lane_p16 (poly16x4_t __a, const int __b)
{
  return (poly16x8_t)__builtin_neon_vdup_lanev8hi ((int16x4_t) __a, __b);
}
# 5892 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vdupq_lane_s64 (int64x1_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vdup_lanev2di (__a, __b);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vdupq_lane_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vdup_lanev2di ((int64x1_t) __a, __b);
}
# 5912 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vcombine_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x16_t)__builtin_neon_vcombinev8qi (__a, __b);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vcombine_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x8_t)__builtin_neon_vcombinev4hi (__a, __b);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vcombine_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x4_t)__builtin_neon_vcombinev2si (__a, __b);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vcombine_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x2_t)__builtin_neon_vcombinedi (__a, __b);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcombine_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x4_t)__builtin_neon_vcombinev2sf (__a, __b);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcombine_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x16_t)__builtin_neon_vcombinev8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcombine_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x8_t)__builtin_neon_vcombinev4hi ((int16x4_t) __a, (int16x4_t) __b);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcombine_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x4_t)__builtin_neon_vcombinev2si ((int32x2_t) __a, (int32x2_t) __b);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vcombine_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x2_t)__builtin_neon_vcombinedi ((int64x1_t) __a, (int64x1_t) __b);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vcombine_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (poly8x16_t)__builtin_neon_vcombinev8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vcombine_p16 (poly16x4_t __a, poly16x4_t __b)
{
  return (poly16x8_t)__builtin_neon_vcombinev4hi ((int16x4_t) __a, (int16x4_t) __b);
}
# 5986 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vget_high_s8 (int8x16_t __a)
{
  return (int8x8_t)__builtin_neon_vget_highv16qi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vget_high_s16 (int16x8_t __a)
{
  return (int16x4_t)__builtin_neon_vget_highv8hi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vget_high_s32 (int32x4_t __a)
{
  return (int32x2_t)__builtin_neon_vget_highv4si (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vget_high_s64 (int64x2_t __a)
{
  return (int64x1_t)__builtin_neon_vget_highv2di (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vget_high_f32 (float32x4_t __a)
{
  return (float32x2_t)__builtin_neon_vget_highv4sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vget_high_u8 (uint8x16_t __a)
{
  return (uint8x8_t)__builtin_neon_vget_highv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vget_high_u16 (uint16x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vget_highv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vget_high_u32 (uint32x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vget_highv4si ((int32x4_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vget_high_u64 (uint64x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vget_highv2di ((int64x2_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vget_high_p8 (poly8x16_t __a)
{
  return (poly8x8_t)__builtin_neon_vget_highv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vget_high_p16 (poly16x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vget_highv8hi ((int16x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vget_low_s8 (int8x16_t __a)
{
  return (int8x8_t)__builtin_neon_vget_lowv16qi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vget_low_s16 (int16x8_t __a)
{
  return (int16x4_t)__builtin_neon_vget_lowv8hi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vget_low_s32 (int32x4_t __a)
{
  return (int32x2_t)__builtin_neon_vget_lowv4si (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vget_low_f32 (float32x4_t __a)
{
  return (float32x2_t)__builtin_neon_vget_lowv4sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vget_low_u8 (uint8x16_t __a)
{
  return (uint8x8_t)__builtin_neon_vget_lowv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vget_low_u16 (uint16x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vget_lowv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vget_low_u32 (uint32x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vget_lowv4si ((int32x4_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vget_low_p8 (poly8x16_t __a)
{
  return (poly8x8_t)__builtin_neon_vget_lowv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vget_low_p16 (poly16x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vget_lowv8hi ((int16x8_t) __a);
}
# 6114 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vget_low_s64 (int64x2_t __a)
{
  return (int64x1_t)__builtin_neon_vget_lowv2di (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vget_low_u64 (uint64x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vget_lowv2di ((int64x2_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcvt_s32_f32 (float32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vcvtv2sf (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_f32_s32 (int32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vcvtv2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_f32_u32 (uint32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vcvtv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcvt_u32_f32 (float32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vcvtv2sf (__a, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vcvtq_s32_f32 (float32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vcvtv4sf (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_f32_s32 (int32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vcvtv4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_f32_u32 (uint32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vcvtv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcvtq_u32_f32 (float32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vcvtv4sf (__a, 0);
}
# 6190 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcvt_n_s32_f32 (float32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vcvt_nv2sf (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_n_f32_s32 (int32x2_t __a, const int __b)
{
  return (float32x2_t)__builtin_neon_vcvt_nv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_n_f32_u32 (uint32x2_t __a, const int __b)
{
  return (float32x2_t)__builtin_neon_vcvt_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcvt_n_u32_f32 (float32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vcvt_nv2sf (__a, __b, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vcvtq_n_s32_f32 (float32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vcvt_nv4sf (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_n_f32_s32 (int32x4_t __a, const int __b)
{
  return (float32x4_t)__builtin_neon_vcvt_nv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_n_f32_u32 (uint32x4_t __a, const int __b)
{
  return (float32x4_t)__builtin_neon_vcvt_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcvtq_n_u32_f32 (float32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vcvt_nv4sf (__a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmovn_s16 (int16x8_t __a)
{
  return (int8x8_t)__builtin_neon_vmovnv8hi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmovn_s32 (int32x4_t __a)
{
  return (int16x4_t)__builtin_neon_vmovnv4si (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmovn_s64 (int64x2_t __a)
{
  return (int32x2_t)__builtin_neon_vmovnv2di (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmovn_u16 (uint16x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vmovnv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmovn_u32 (uint32x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vmovnv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmovn_u64 (uint64x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vmovnv2di ((int64x2_t) __a, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqmovn_s16 (int16x8_t __a)
{
  return (int8x8_t)__builtin_neon_vqmovnv8hi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqmovn_s32 (int32x4_t __a)
{
  return (int16x4_t)__builtin_neon_vqmovnv4si (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqmovn_s64 (int64x2_t __a)
{
  return (int32x2_t)__builtin_neon_vqmovnv2di (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqmovn_u16 (uint16x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vqmovnv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqmovn_u32 (uint32x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vqmovnv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqmovn_u64 (uint64x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vqmovnv2di ((int64x2_t) __a, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqmovun_s16 (int16x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vqmovunv8hi (__a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqmovun_s32 (int32x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vqmovunv4si (__a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqmovun_s64 (int64x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vqmovunv2di (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmovl_s8 (int8x8_t __a)
{
  return (int16x8_t)__builtin_neon_vmovlv8qi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmovl_s16 (int16x4_t __a)
{
  return (int32x4_t)__builtin_neon_vmovlv4hi (__a, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmovl_s32 (int32x2_t __a)
{
  return (int64x2_t)__builtin_neon_vmovlv2si (__a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmovl_u8 (uint8x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vmovlv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmovl_u16 (uint16x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vmovlv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmovl_u32 (uint32x2_t __a)
{
  return (uint64x2_t)__builtin_neon_vmovlv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl1_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vtbl1v8qi (__a, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl1_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtbl1v8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl1_p8 (poly8x8_t __a, uint8x8_t __b)
{
  return (poly8x8_t)__builtin_neon_vtbl1v8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl2_s8 (int8x8x2_t __a, int8x8_t __b)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __au = { __a };
  return (int8x8_t)__builtin_neon_vtbl2v8qi (__au.__o, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl2_u8 (uint8x8x2_t __a, uint8x8_t __b)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __au = { __a };
  return (uint8x8_t)__builtin_neon_vtbl2v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl2_p8 (poly8x8x2_t __a, uint8x8_t __b)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __au = { __a };
  return (poly8x8_t)__builtin_neon_vtbl2v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl3_s8 (int8x8x3_t __a, int8x8_t __b)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __au = { __a };
  return (int8x8_t)__builtin_neon_vtbl3v8qi (__au.__o, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl3_u8 (uint8x8x3_t __a, uint8x8_t __b)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __au = { __a };
  return (uint8x8_t)__builtin_neon_vtbl3v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl3_p8 (poly8x8x3_t __a, uint8x8_t __b)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __au = { __a };
  return (poly8x8_t)__builtin_neon_vtbl3v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl4_s8 (int8x8x4_t __a, int8x8_t __b)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __au = { __a };
  return (int8x8_t)__builtin_neon_vtbl4v8qi (__au.__o, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl4_u8 (uint8x8x4_t __a, uint8x8_t __b)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __au = { __a };
  return (uint8x8_t)__builtin_neon_vtbl4v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl4_p8 (poly8x8x4_t __a, uint8x8_t __b)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __au = { __a };
  return (poly8x8_t)__builtin_neon_vtbl4v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx1_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vtbx1v8qi (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx1_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vtbx1v8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx1_p8 (poly8x8_t __a, poly8x8_t __b, uint8x8_t __c)
{
  return (poly8x8_t)__builtin_neon_vtbx1v8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx2_s8 (int8x8_t __a, int8x8x2_t __b, int8x8_t __c)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  return (int8x8_t)__builtin_neon_vtbx2v8qi (__a, __bu.__o, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx2_u8 (uint8x8_t __a, uint8x8x2_t __b, uint8x8_t __c)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  return (uint8x8_t)__builtin_neon_vtbx2v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx2_p8 (poly8x8_t __a, poly8x8x2_t __b, uint8x8_t __c)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  return (poly8x8_t)__builtin_neon_vtbx2v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx3_s8 (int8x8_t __a, int8x8x3_t __b, int8x8_t __c)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  return (int8x8_t)__builtin_neon_vtbx3v8qi (__a, __bu.__o, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx3_u8 (uint8x8_t __a, uint8x8x3_t __b, uint8x8_t __c)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  return (uint8x8_t)__builtin_neon_vtbx3v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx3_p8 (poly8x8_t __a, poly8x8x3_t __b, uint8x8_t __c)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  return (poly8x8_t)__builtin_neon_vtbx3v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx4_s8 (int8x8_t __a, int8x8x4_t __b, int8x8_t __c)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  return (int8x8_t)__builtin_neon_vtbx4v8qi (__a, __bu.__o, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx4_u8 (uint8x8_t __a, uint8x8x4_t __b, uint8x8_t __c)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  return (uint8x8_t)__builtin_neon_vtbx4v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx4_p8 (poly8x8_t __a, poly8x8x4_t __b, uint8x8_t __c)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  return (poly8x8_t)__builtin_neon_vtbx4v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmul_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vmul_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmul_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vmul_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmul_lane_f32 (float32x2_t __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vmul_lanev2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmul_lane_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vmul_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmul_lane_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vmul_lanev2si ((int32x2_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmulq_lane_s16 (int16x8_t __a, int16x4_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vmul_lanev8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmulq_lane_s32 (int32x4_t __a, int32x2_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vmul_lanev4si (__a, __b, __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmulq_lane_f32 (float32x4_t __a, float32x2_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vmul_lanev4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmulq_lane_u16 (uint16x8_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vmul_lanev8hi ((int16x8_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmulq_lane_u32 (uint32x4_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vmul_lanev4si ((int32x4_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmla_lane_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int16x4_t)__builtin_neon_vmla_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmla_lane_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int32x2_t)__builtin_neon_vmla_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmla_lane_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c, const int __d)
{
  return (float32x2_t)__builtin_neon_vmla_lanev2sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmla_lane_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x4_t)__builtin_neon_vmla_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmla_lane_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x2_t)__builtin_neon_vmla_lanev2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlaq_lane_s16 (int16x8_t __a, int16x8_t __b, int16x4_t __c, const int __d)
{
  return (int16x8_t)__builtin_neon_vmla_lanev8hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlaq_lane_s32 (int32x4_t __a, int32x4_t __b, int32x2_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmla_lanev4si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlaq_lane_f32 (float32x4_t __a, float32x4_t __b, float32x2_t __c, const int __d)
{
  return (float32x4_t)__builtin_neon_vmla_lanev4sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlaq_lane_u16 (uint16x8_t __a, uint16x8_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x8_t)__builtin_neon_vmla_lanev8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlaq_lane_u32 (uint32x4_t __a, uint32x4_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmla_lanev4si ((int32x4_t) __a, (int32x4_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlal_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmlal_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlal_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vmlal_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlal_lane_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmlal_lanev4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlal_lane_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint64x2_t)__builtin_neon_vmlal_lanev2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlal_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vqdmlal_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlal_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vqdmlal_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmls_lane_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int16x4_t)__builtin_neon_vmls_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmls_lane_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int32x2_t)__builtin_neon_vmls_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmls_lane_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c, const int __d)
{
  return (float32x2_t)__builtin_neon_vmls_lanev2sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmls_lane_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x4_t)__builtin_neon_vmls_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmls_lane_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x2_t)__builtin_neon_vmls_lanev2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsq_lane_s16 (int16x8_t __a, int16x8_t __b, int16x4_t __c, const int __d)
{
  return (int16x8_t)__builtin_neon_vmls_lanev8hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsq_lane_s32 (int32x4_t __a, int32x4_t __b, int32x2_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmls_lanev4si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlsq_lane_f32 (float32x4_t __a, float32x4_t __b, float32x2_t __c, const int __d)
{
  return (float32x4_t)__builtin_neon_vmls_lanev4sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsq_lane_u16 (uint16x8_t __a, uint16x8_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x8_t)__builtin_neon_vmls_lanev8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsq_lane_u32 (uint32x4_t __a, uint32x4_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmls_lanev4si ((int32x4_t) __a, (int32x4_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsl_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmlsl_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlsl_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vmlsl_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsl_lane_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmlsl_lanev4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlsl_lane_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint64x2_t)__builtin_neon_vmlsl_lanev2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlsl_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vqdmlsl_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlsl_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vqdmlsl_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmull_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vmull_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmull_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vmull_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmull_lane_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vmull_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmull_lane_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vmull_lanev2si ((int32x2_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmull_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vqdmull_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmull_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vqdmull_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqdmulhq_lane_s16 (int16x8_t __a, int16x4_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vqdmulh_lanev8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmulhq_lane_s32 (int32x4_t __a, int32x2_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vqdmulh_lanev4si (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqdmulh_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vqdmulh_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqdmulh_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vqdmulh_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrdmulhq_lane_s16 (int16x8_t __a, int16x4_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vqdmulh_lanev8hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrdmulhq_lane_s32 (int32x4_t __a, int32x2_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vqdmulh_lanev4si (__a, __b, __c, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrdmulh_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vqdmulh_lanev4hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrdmulh_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vqdmulh_lanev2si (__a, __b, __c, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmul_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int16x4_t)__builtin_neon_vmul_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmul_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int32x2_t)__builtin_neon_vmul_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmul_n_f32 (float32x2_t __a, float32_t __b)
{
  return (float32x2_t)__builtin_neon_vmul_nv2sf (__a, (__builtin_neon_sf) __b, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmul_n_u16 (uint16x4_t __a, uint16_t __b)
{
  return (uint16x4_t)__builtin_neon_vmul_nv4hi ((int16x4_t) __a, (__builtin_neon_hi) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmul_n_u32 (uint32x2_t __a, uint32_t __b)
{
  return (uint32x2_t)__builtin_neon_vmul_nv2si ((int32x2_t) __a, (__builtin_neon_si) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmulq_n_s16 (int16x8_t __a, int16_t __b)
{
  return (int16x8_t)__builtin_neon_vmul_nv8hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmulq_n_s32 (int32x4_t __a, int32_t __b)
{
  return (int32x4_t)__builtin_neon_vmul_nv4si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmulq_n_f32 (float32x4_t __a, float32_t __b)
{
  return (float32x4_t)__builtin_neon_vmul_nv4sf (__a, (__builtin_neon_sf) __b, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmulq_n_u16 (uint16x8_t __a, uint16_t __b)
{
  return (uint16x8_t)__builtin_neon_vmul_nv8hi ((int16x8_t) __a, (__builtin_neon_hi) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmulq_n_u32 (uint32x4_t __a, uint32_t __b)
{
  return (uint32x4_t)__builtin_neon_vmul_nv4si ((int32x4_t) __a, (__builtin_neon_si) __b, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmull_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int32x4_t)__builtin_neon_vmull_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmull_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int64x2_t)__builtin_neon_vmull_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmull_n_u16 (uint16x4_t __a, uint16_t __b)
{
  return (uint32x4_t)__builtin_neon_vmull_nv4hi ((int16x4_t) __a, (__builtin_neon_hi) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmull_n_u32 (uint32x2_t __a, uint32_t __b)
{
  return (uint64x2_t)__builtin_neon_vmull_nv2si ((int32x2_t) __a, (__builtin_neon_si) __b, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmull_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmull_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmull_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int64x2_t)__builtin_neon_vqdmull_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqdmulhq_n_s16 (int16x8_t __a, int16_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulh_nv8hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmulhq_n_s32 (int32x4_t __a, int32_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulh_nv4si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqdmulh_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulh_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqdmulh_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulh_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrdmulhq_n_s16 (int16x8_t __a, int16_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulh_nv8hi (__a, (__builtin_neon_hi) __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrdmulhq_n_s32 (int32x4_t __a, int32_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulh_nv4si (__a, (__builtin_neon_si) __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrdmulh_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulh_nv4hi (__a, (__builtin_neon_hi) __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrdmulh_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulh_nv2si (__a, (__builtin_neon_si) __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmla_n_s16 (int16x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int16x4_t)__builtin_neon_vmla_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmla_n_s32 (int32x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int32x2_t)__builtin_neon_vmla_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmla_n_f32 (float32x2_t __a, float32x2_t __b, float32_t __c)
{
  return (float32x2_t)__builtin_neon_vmla_nv2sf (__a, __b, (__builtin_neon_sf) __c, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmla_n_u16 (uint16x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint16x4_t)__builtin_neon_vmla_nv4hi ((int16x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmla_n_u32 (uint32x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint32x2_t)__builtin_neon_vmla_nv2si ((int32x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlaq_n_s16 (int16x8_t __a, int16x8_t __b, int16_t __c)
{
  return (int16x8_t)__builtin_neon_vmla_nv8hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlaq_n_s32 (int32x4_t __a, int32x4_t __b, int32_t __c)
{
  return (int32x4_t)__builtin_neon_vmla_nv4si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlaq_n_f32 (float32x4_t __a, float32x4_t __b, float32_t __c)
{
  return (float32x4_t)__builtin_neon_vmla_nv4sf (__a, __b, (__builtin_neon_sf) __c, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlaq_n_u16 (uint16x8_t __a, uint16x8_t __b, uint16_t __c)
{
  return (uint16x8_t)__builtin_neon_vmla_nv8hi ((int16x8_t) __a, (int16x8_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlaq_n_u32 (uint32x4_t __a, uint32x4_t __b, uint32_t __c)
{
  return (uint32x4_t)__builtin_neon_vmla_nv4si ((int32x4_t) __a, (int32x4_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlal_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vmlal_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlal_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vmlal_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlal_n_u16 (uint32x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlal_nv4hi ((int32x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlal_n_u32 (uint64x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlal_nv2si ((int64x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlal_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlal_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlal_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlal_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmls_n_s16 (int16x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int16x4_t)__builtin_neon_vmls_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmls_n_s32 (int32x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int32x2_t)__builtin_neon_vmls_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmls_n_f32 (float32x2_t __a, float32x2_t __b, float32_t __c)
{
  return (float32x2_t)__builtin_neon_vmls_nv2sf (__a, __b, (__builtin_neon_sf) __c, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmls_n_u16 (uint16x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint16x4_t)__builtin_neon_vmls_nv4hi ((int16x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmls_n_u32 (uint32x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint32x2_t)__builtin_neon_vmls_nv2si ((int32x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsq_n_s16 (int16x8_t __a, int16x8_t __b, int16_t __c)
{
  return (int16x8_t)__builtin_neon_vmls_nv8hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsq_n_s32 (int32x4_t __a, int32x4_t __b, int32_t __c)
{
  return (int32x4_t)__builtin_neon_vmls_nv4si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlsq_n_f32 (float32x4_t __a, float32x4_t __b, float32_t __c)
{
  return (float32x4_t)__builtin_neon_vmls_nv4sf (__a, __b, (__builtin_neon_sf) __c, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsq_n_u16 (uint16x8_t __a, uint16x8_t __b, uint16_t __c)
{
  return (uint16x8_t)__builtin_neon_vmls_nv8hi ((int16x8_t) __a, (int16x8_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsq_n_u32 (uint32x4_t __a, uint32x4_t __b, uint32_t __c)
{
  return (uint32x4_t)__builtin_neon_vmls_nv4si ((int32x4_t) __a, (int32x4_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsl_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vmlsl_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlsl_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vmlsl_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsl_n_u16 (uint32x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlsl_nv4hi ((int32x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlsl_n_u32 (uint64x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlsl_nv2si ((int64x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlsl_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlsl_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlsl_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlsl_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}
# 7206 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vext_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vextv8qi (__a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vext_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vextv4hi (__a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vext_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vextv2si (__a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vext_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vextdi (__a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vext_f32 (float32x2_t __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vextv2sf (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vext_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vextv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vext_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vextv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vext_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vextv2si ((int32x2_t) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vext_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vextdi ((int64x1_t) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vext_p8 (poly8x8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vextv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vext_p16 (poly16x4_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vextv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}
# 7280 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vextq_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vextv16qi (__a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vextq_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vextv8hi (__a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vextq_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vextv4si (__a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vextq_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vextv2di (__a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vextq_f32 (float32x4_t __a, float32x4_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vextv4sf (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vextq_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vextv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vextq_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vextv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vextq_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vextv4si ((int32x4_t) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vextq_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vextv2di ((int64x2_t) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vextq_p8 (poly8x16_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vextv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vextq_p16 (poly16x8_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vextv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrev64_s8 (int8x8_t __a)
{
  return (int8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 7, 6, 5, 4, 3, 2, 1, 0 });
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrev64_s16 (int16x4_t __a)
{
  return (int16x4_t) __builtin_shuffle (__a, (uint16x4_t) { 3, 2, 1, 0 });
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrev64_s32 (int32x2_t __a)
{
  return (int32x2_t) __builtin_shuffle (__a, (uint32x2_t) { 1, 0 });
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrev64_f32 (float32x2_t __a)
{
  return (float32x2_t) __builtin_shuffle (__a, (uint32x2_t) { 1, 0 });
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrev64_u8 (uint8x8_t __a)
{
  return (uint8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 7, 6, 5, 4, 3, 2, 1, 0 });
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrev64_u16 (uint16x4_t __a)
{
  return (uint16x4_t) __builtin_shuffle (__a, (uint16x4_t) { 3, 2, 1, 0 });
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrev64_u32 (uint32x2_t __a)
{
  return (uint32x2_t) __builtin_shuffle (__a, (uint32x2_t) { 1, 0 });
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vrev64_p8 (poly8x8_t __a)
{
  return (poly8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 7, 6, 5, 4, 3, 2, 1, 0 });
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vrev64_p16 (poly16x4_t __a)
{
  return (poly16x4_t) __builtin_shuffle (__a, (uint16x4_t) { 3, 2, 1, 0 });
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrev64q_s8 (int8x16_t __a)
{
  return (int8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8 });
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrev64q_s16 (int16x8_t __a)
{
  return (int16x8_t) __builtin_shuffle (__a, (uint16x8_t) { 3, 2, 1, 0, 7, 6, 5, 4 });
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrev64q_s32 (int32x4_t __a)
{
  return (int32x4_t) __builtin_shuffle (__a, (uint32x4_t) { 1, 0, 3, 2 });
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrev64q_f32 (float32x4_t __a)
{
  return (float32x4_t) __builtin_shuffle (__a, (uint32x4_t) { 1, 0, 3, 2 });
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrev64q_u8 (uint8x16_t __a)
{
  return (uint8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8 });
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrev64q_u16 (uint16x8_t __a)
{
  return (uint16x8_t) __builtin_shuffle (__a, (uint16x8_t) { 3, 2, 1, 0, 7, 6, 5, 4 });
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrev64q_u32 (uint32x4_t __a)
{
  return (uint32x4_t) __builtin_shuffle (__a, (uint32x4_t) { 1, 0, 3, 2 });
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vrev64q_p8 (poly8x16_t __a)
{
  return (poly8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 7, 6, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8 });
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vrev64q_p16 (poly16x8_t __a)
{
  return (poly16x8_t) __builtin_shuffle (__a, (uint16x8_t) { 3, 2, 1, 0, 7, 6, 5, 4 });
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrev32_s8 (int8x8_t __a)
{
  return (int8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 3, 2, 1, 0, 7, 6, 5, 4 });
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrev32_s16 (int16x4_t __a)
{
  return (int16x4_t) __builtin_shuffle (__a, (uint16x4_t) { 1, 0, 3, 2 });
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrev32_u8 (uint8x8_t __a)
{
  return (uint8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 3, 2, 1, 0, 7, 6, 5, 4 });
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrev32_u16 (uint16x4_t __a)
{
  return (uint16x4_t) __builtin_shuffle (__a, (uint16x4_t) { 1, 0, 3, 2 });
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vrev32_p8 (poly8x8_t __a)
{
  return (poly8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 3, 2, 1, 0, 7, 6, 5, 4 });
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vrev32_p16 (poly16x4_t __a)
{
  return (poly16x4_t) __builtin_shuffle (__a, (uint16x4_t) { 1, 0, 3, 2 });
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrev32q_s8 (int8x16_t __a)
{
  return (int8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12 });
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrev32q_s16 (int16x8_t __a)
{
  return (int16x8_t) __builtin_shuffle (__a, (uint16x8_t) { 1, 0, 3, 2, 5, 4, 7, 6 });
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrev32q_u8 (uint8x16_t __a)
{
  return (uint8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12 });
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrev32q_u16 (uint16x8_t __a)
{
  return (uint16x8_t) __builtin_shuffle (__a, (uint16x8_t) { 1, 0, 3, 2, 5, 4, 7, 6 });
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vrev32q_p8 (poly8x16_t __a)
{
  return (poly8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 3, 2, 1, 0, 7, 6, 5, 4, 11, 10, 9, 8, 15, 14, 13, 12 });
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vrev32q_p16 (poly16x8_t __a)
{
  return (poly16x8_t) __builtin_shuffle (__a, (uint16x8_t) { 1, 0, 3, 2, 5, 4, 7, 6 });
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrev16_s8 (int8x8_t __a)
{
  return (int8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 1, 0, 3, 2, 5, 4, 7, 6 });
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrev16_u8 (uint8x8_t __a)
{
  return (uint8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 1, 0, 3, 2, 5, 4, 7, 6 });
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vrev16_p8 (poly8x8_t __a)
{
  return (poly8x8_t) __builtin_shuffle (__a, (uint8x8_t) { 1, 0, 3, 2, 5, 4, 7, 6 });
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrev16q_s8 (int8x16_t __a)
{
  return (int8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14 });
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrev16q_u8 (uint8x16_t __a)
{
  return (uint8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14 });
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vrev16q_p8 (poly8x16_t __a)
{
  return (poly8x16_t) __builtin_shuffle (__a, (uint8x16_t) { 1, 0, 3, 2, 5, 4, 7, 6, 9, 8, 11, 10, 13, 12, 15, 14 });
}
# 7570 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vbsl_s8 (uint8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vbslv8qi ((int8x8_t) __a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vbsl_s16 (uint16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vbslv4hi ((int16x4_t) __a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vbsl_s32 (uint32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vbslv2si ((int32x2_t) __a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vbsl_s64 (uint64x1_t __a, int64x1_t __b, int64x1_t __c)
{
  return (int64x1_t)__builtin_neon_vbsldi ((int64x1_t) __a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vbsl_f32 (uint32x2_t __a, float32x2_t __b, float32x2_t __c)
{
  return (float32x2_t)__builtin_neon_vbslv2sf ((int32x2_t) __a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vbsl_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vbslv8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vbsl_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vbslv4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vbsl_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vbslv2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vbsl_u64 (uint64x1_t __a, uint64x1_t __b, uint64x1_t __c)
{
  return (uint64x1_t)__builtin_neon_vbsldi ((int64x1_t) __a, (int64x1_t) __b, (int64x1_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vbsl_p8 (uint8x8_t __a, poly8x8_t __b, poly8x8_t __c)
{
  return (poly8x8_t)__builtin_neon_vbslv8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vbsl_p16 (uint16x4_t __a, poly16x4_t __b, poly16x4_t __c)
{
  return (poly16x4_t)__builtin_neon_vbslv4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c);
}
# 7644 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vbslq_s8 (uint8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vbslv16qi ((int8x16_t) __a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vbslq_s16 (uint16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vbslv8hi ((int16x8_t) __a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vbslq_s32 (uint32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vbslv4si ((int32x4_t) __a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vbslq_s64 (uint64x2_t __a, int64x2_t __b, int64x2_t __c)
{
  return (int64x2_t)__builtin_neon_vbslv2di ((int64x2_t) __a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vbslq_f32 (uint32x4_t __a, float32x4_t __b, float32x4_t __c)
{
  return (float32x4_t)__builtin_neon_vbslv4sf ((int32x4_t) __a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vbslq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vbslv16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vbslq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vbslv8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vbslq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vbslv4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vbslq_u64 (uint64x2_t __a, uint64x2_t __b, uint64x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vbslv2di ((int64x2_t) __a, (int64x2_t) __b, (int64x2_t) __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vbslq_p8 (uint8x16_t __a, poly8x16_t __b, poly8x16_t __c)
{
  return (poly8x16_t)__builtin_neon_vbslv16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vbslq_p16 (uint16x8_t __a, poly16x8_t __b, poly16x8_t __c)
{
  return (poly16x8_t)__builtin_neon_vbslv8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c);
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vtrn_s8 (int8x8_t __a, int8x8_t __b)
{
  int8x8x2_t __rv;
  __rv.val[0] = (int8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 8, 2, 10, 4, 12, 6, 14 });
  __rv.val[1] = (int8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 1, 9, 3, 11, 5, 13, 7, 15 });
  return __rv;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vtrn_s16 (int16x4_t __a, int16x4_t __b)
{
  int16x4x2_t __rv;
  __rv.val[0] = (int16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 4, 2, 6 });
  __rv.val[1] = (int16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 1, 5, 3, 7 });
  return __rv;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vtrn_u8 (uint8x8_t __a, uint8x8_t __b)
{
  uint8x8x2_t __rv;
  __rv.val[0] = (uint8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 8, 2, 10, 4, 12, 6, 14 });
  __rv.val[1] = (uint8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 1, 9, 3, 11, 5, 13, 7, 15 });
  return __rv;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vtrn_u16 (uint16x4_t __a, uint16x4_t __b)
{
  uint16x4x2_t __rv;
  __rv.val[0] = (uint16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 4, 2, 6 });
  __rv.val[1] = (uint16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 1, 5, 3, 7 });
  return __rv;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vtrn_p8 (poly8x8_t __a, poly8x8_t __b)
{
  poly8x8x2_t __rv;
  __rv.val[0] = (poly8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 8, 2, 10, 4, 12, 6, 14 });
  __rv.val[1] = (poly8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 1, 9, 3, 11, 5, 13, 7, 15 });
  return __rv;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vtrn_p16 (poly16x4_t __a, poly16x4_t __b)
{
  poly16x4x2_t __rv;
  __rv.val[0] = (poly16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 4, 2, 6 });
  __rv.val[1] = (poly16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 1, 5, 3, 7 });
  return __rv;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vtrn_s32 (int32x2_t __a, int32x2_t __b)
{
  int32x2x2_t __rv;
  __rv.val[0] = (int32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (int32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vtrn_f32 (float32x2_t __a, float32x2_t __b)
{
  float32x2x2_t __rv;
  __rv.val[0] = (float32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (float32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vtrn_u32 (uint32x2_t __a, uint32x2_t __b)
{
  uint32x2x2_t __rv;
  __rv.val[0] = (uint32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (uint32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vtrnq_s8 (int8x16_t __a, int8x16_t __b)
{
  int8x16x2_t __rv;
  __rv.val[0] = (int8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 16, 2, 18, 4, 20, 6, 22, 8, 24, 10, 26, 12, 28, 14, 30 });
  __rv.val[1] = (int8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 1, 17, 3, 19, 5, 21, 7, 23, 9, 25, 11, 27, 13, 29, 15, 31 });
  return __rv;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vtrnq_s16 (int16x8_t __a, int16x8_t __b)
{
  int16x8x2_t __rv;
  __rv.val[0] = (int16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 8, 2, 10, 4, 12, 6, 14 });
  __rv.val[1] = (int16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 1, 9, 3, 11, 5, 13, 7, 15 });
  return __rv;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vtrnq_s32 (int32x4_t __a, int32x4_t __b)
{
  int32x4x2_t __rv;
  __rv.val[0] = (int32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 4, 2, 6 });
  __rv.val[1] = (int32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 1, 5, 3, 7 });
  return __rv;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vtrnq_f32 (float32x4_t __a, float32x4_t __b)
{
  float32x4x2_t __rv;
  __rv.val[0] = (float32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 4, 2, 6 });
  __rv.val[1] = (float32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 1, 5, 3, 7 });
  return __rv;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vtrnq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  uint8x16x2_t __rv;
  __rv.val[0] = (uint8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 16, 2, 18, 4, 20, 6, 22, 8, 24, 10, 26, 12, 28, 14, 30 });
  __rv.val[1] = (uint8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 1, 17, 3, 19, 5, 21, 7, 23, 9, 25, 11, 27, 13, 29, 15, 31 });
  return __rv;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vtrnq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  uint16x8x2_t __rv;
  __rv.val[0] = (uint16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 8, 2, 10, 4, 12, 6, 14 });
  __rv.val[1] = (uint16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 1, 9, 3, 11, 5, 13, 7, 15 });
  return __rv;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vtrnq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  uint32x4x2_t __rv;
  __rv.val[0] = (uint32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 4, 2, 6 });
  __rv.val[1] = (uint32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 1, 5, 3, 7 });
  return __rv;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vtrnq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  poly8x16x2_t __rv;
  __rv.val[0] = (poly8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 16, 2, 18, 4, 20, 6, 22, 8, 24, 10, 26, 12, 28, 14, 30 });
  __rv.val[1] = (poly8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 1, 17, 3, 19, 5, 21, 7, 23, 9, 25, 11, 27, 13, 29, 15, 31 });
  return __rv;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vtrnq_p16 (poly16x8_t __a, poly16x8_t __b)
{
  poly16x8x2_t __rv;
  __rv.val[0] = (poly16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 8, 2, 10, 4, 12, 6, 14 });
  __rv.val[1] = (poly16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 1, 9, 3, 11, 5, 13, 7, 15 });
  return __rv;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vzip_s8 (int8x8_t __a, int8x8_t __b)
{
  int8x8x2_t __rv;
  __rv.val[0] = (int8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 8, 1, 9, 2, 10, 3, 11 });
  __rv.val[1] = (int8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 4, 12, 5, 13, 6, 14, 7, 15 });
  return __rv;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vzip_s16 (int16x4_t __a, int16x4_t __b)
{
  int16x4x2_t __rv;
  __rv.val[0] = (int16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 4, 1, 5 });
  __rv.val[1] = (int16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 2, 6, 3, 7 });
  return __rv;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vzip_u8 (uint8x8_t __a, uint8x8_t __b)
{
  uint8x8x2_t __rv;
  __rv.val[0] = (uint8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 8, 1, 9, 2, 10, 3, 11 });
  __rv.val[1] = (uint8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 4, 12, 5, 13, 6, 14, 7, 15 });
  return __rv;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vzip_u16 (uint16x4_t __a, uint16x4_t __b)
{
  uint16x4x2_t __rv;
  __rv.val[0] = (uint16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 4, 1, 5 });
  __rv.val[1] = (uint16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 2, 6, 3, 7 });
  return __rv;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vzip_p8 (poly8x8_t __a, poly8x8_t __b)
{
  poly8x8x2_t __rv;
  __rv.val[0] = (poly8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 8, 1, 9, 2, 10, 3, 11 });
  __rv.val[1] = (poly8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 4, 12, 5, 13, 6, 14, 7, 15 });
  return __rv;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vzip_p16 (poly16x4_t __a, poly16x4_t __b)
{
  poly16x4x2_t __rv;
  __rv.val[0] = (poly16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 4, 1, 5 });
  __rv.val[1] = (poly16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 2, 6, 3, 7 });
  return __rv;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vzip_s32 (int32x2_t __a, int32x2_t __b)
{
  int32x2x2_t __rv;
  __rv.val[0] = (int32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (int32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vzip_f32 (float32x2_t __a, float32x2_t __b)
{
  float32x2x2_t __rv;
  __rv.val[0] = (float32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (float32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vzip_u32 (uint32x2_t __a, uint32x2_t __b)
{
  uint32x2x2_t __rv;
  __rv.val[0] = (uint32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (uint32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vzipq_s8 (int8x16_t __a, int8x16_t __b)
{
  int8x16x2_t __rv;
  __rv.val[0] = (int8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23 });
  __rv.val[1] = (int8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31 });
  return __rv;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vzipq_s16 (int16x8_t __a, int16x8_t __b)
{
  int16x8x2_t __rv;
  __rv.val[0] = (int16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 8, 1, 9, 2, 10, 3, 11 });
  __rv.val[1] = (int16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 4, 12, 5, 13, 6, 14, 7, 15 });
  return __rv;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vzipq_s32 (int32x4_t __a, int32x4_t __b)
{
  int32x4x2_t __rv;
  __rv.val[0] = (int32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 4, 1, 5 });
  __rv.val[1] = (int32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 2, 6, 3, 7 });
  return __rv;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vzipq_f32 (float32x4_t __a, float32x4_t __b)
{
  float32x4x2_t __rv;
  __rv.val[0] = (float32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 4, 1, 5 });
  __rv.val[1] = (float32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 2, 6, 3, 7 });
  return __rv;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vzipq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  uint8x16x2_t __rv;
  __rv.val[0] = (uint8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23 });
  __rv.val[1] = (uint8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31 });
  return __rv;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vzipq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  uint16x8x2_t __rv;
  __rv.val[0] = (uint16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 8, 1, 9, 2, 10, 3, 11 });
  __rv.val[1] = (uint16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 4, 12, 5, 13, 6, 14, 7, 15 });
  return __rv;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vzipq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  uint32x4x2_t __rv;
  __rv.val[0] = (uint32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 4, 1, 5 });
  __rv.val[1] = (uint32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 2, 6, 3, 7 });
  return __rv;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vzipq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  poly8x16x2_t __rv;
  __rv.val[0] = (poly8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23 });
  __rv.val[1] = (poly8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31 });
  return __rv;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vzipq_p16 (poly16x8_t __a, poly16x8_t __b)
{
  poly16x8x2_t __rv;
  __rv.val[0] = (poly16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 8, 1, 9, 2, 10, 3, 11 });
  __rv.val[1] = (poly16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 4, 12, 5, 13, 6, 14, 7, 15 });
  return __rv;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vuzp_s8 (int8x8_t __a, int8x8_t __b)
{
  int8x8x2_t __rv;
  __rv.val[0] = (int8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 2, 4, 6, 8, 10, 12, 14 });
  __rv.val[1] = (int8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 1, 3, 5, 7, 9, 11, 13, 15 });
  return __rv;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vuzp_s16 (int16x4_t __a, int16x4_t __b)
{
  int16x4x2_t __rv;
  __rv.val[0] = (int16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 2, 4, 6 });
  __rv.val[1] = (int16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 1, 3, 5, 7 });
  return __rv;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vuzp_s32 (int32x2_t __a, int32x2_t __b)
{
  int32x2x2_t __rv;
  __rv.val[0] = (int32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (int32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vuzp_f32 (float32x2_t __a, float32x2_t __b)
{
  float32x2x2_t __rv;
  __rv.val[0] = (float32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (float32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vuzp_u8 (uint8x8_t __a, uint8x8_t __b)
{
  uint8x8x2_t __rv;
  __rv.val[0] = (uint8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 2, 4, 6, 8, 10, 12, 14 });
  __rv.val[1] = (uint8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 1, 3, 5, 7, 9, 11, 13, 15 });
  return __rv;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vuzp_u16 (uint16x4_t __a, uint16x4_t __b)
{
  uint16x4x2_t __rv;
  __rv.val[0] = (uint16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 2, 4, 6 });
  __rv.val[1] = (uint16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 1, 3, 5, 7 });
  return __rv;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vuzp_u32 (uint32x2_t __a, uint32x2_t __b)
{
  uint32x2x2_t __rv;
  __rv.val[0] = (uint32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 0, 2 });
  __rv.val[1] = (uint32x2_t) __builtin_shuffle (__a, __b, (uint32x2_t) { 1, 3 });
  return __rv;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vuzp_p8 (poly8x8_t __a, poly8x8_t __b)
{
  poly8x8x2_t __rv;
  __rv.val[0] = (poly8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 0, 2, 4, 6, 8, 10, 12, 14 });
  __rv.val[1] = (poly8x8_t) __builtin_shuffle (__a, __b, (uint8x8_t) { 1, 3, 5, 7, 9, 11, 13, 15 });
  return __rv;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vuzp_p16 (poly16x4_t __a, poly16x4_t __b)
{
  poly16x4x2_t __rv;
  __rv.val[0] = (poly16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 0, 2, 4, 6 });
  __rv.val[1] = (poly16x4_t) __builtin_shuffle (__a, __b, (uint16x4_t) { 1, 3, 5, 7 });
  return __rv;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vuzpq_s8 (int8x16_t __a, int8x16_t __b)
{
  int8x16x2_t __rv;
  __rv.val[0] = (int8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30 });
  __rv.val[1] = (int8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31 });
  return __rv;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vuzpq_s16 (int16x8_t __a, int16x8_t __b)
{
  int16x8x2_t __rv;
  __rv.val[0] = (int16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 2, 4, 6, 8, 10, 12, 14 });
  __rv.val[1] = (int16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 1, 3, 5, 7, 9, 11, 13, 15 });
  return __rv;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vuzpq_s32 (int32x4_t __a, int32x4_t __b)
{
  int32x4x2_t __rv;
  __rv.val[0] = (int32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 2, 4, 6 });
  __rv.val[1] = (int32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 1, 3, 5, 7 });
  return __rv;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vuzpq_f32 (float32x4_t __a, float32x4_t __b)
{
  float32x4x2_t __rv;
  __rv.val[0] = (float32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 2, 4, 6 });
  __rv.val[1] = (float32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 1, 3, 5, 7 });
  return __rv;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vuzpq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  uint8x16x2_t __rv;
  __rv.val[0] = (uint8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30 });
  __rv.val[1] = (uint8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31 });
  return __rv;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vuzpq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  uint16x8x2_t __rv;
  __rv.val[0] = (uint16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 2, 4, 6, 8, 10, 12, 14 });
  __rv.val[1] = (uint16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 1, 3, 5, 7, 9, 11, 13, 15 });
  return __rv;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vuzpq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  uint32x4x2_t __rv;
  __rv.val[0] = (uint32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 0, 2, 4, 6 });
  __rv.val[1] = (uint32x4_t) __builtin_shuffle (__a, __b, (uint32x4_t) { 1, 3, 5, 7 });
  return __rv;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vuzpq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  poly8x16x2_t __rv;
  __rv.val[0] = (poly8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30 });
  __rv.val[1] = (poly8x16_t) __builtin_shuffle (__a, __b, (uint8x16_t) { 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31 });
  return __rv;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vuzpq_p16 (poly16x8_t __a, poly16x8_t __b)
{
  poly16x8x2_t __rv;
  __rv.val[0] = (poly16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 0, 2, 4, 6, 8, 10, 12, 14 });
  __rv.val[1] = (poly16x8_t) __builtin_shuffle (__a, __b, (uint16x8_t) { 1, 3, 5, 7, 9, 11, 13, 15 });
  return __rv;
}
# 8204 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vld1_s8 (const int8_t * __a)
{
  return (int8x8_t)__builtin_neon_vld1v8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vld1_s16 (const int16_t * __a)
{
  return (int16x4_t)__builtin_neon_vld1v4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vld1_s32 (const int32_t * __a)
{
  return (int32x2_t)__builtin_neon_vld1v2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vld1_s64 (const int64_t * __a)
{
  return (int64x1_t)__builtin_neon_vld1di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vld1_f32 (const float32_t * __a)
{
  return (float32x2_t)__builtin_neon_vld1v2sf ((const __builtin_neon_sf *) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vld1_u8 (const uint8_t * __a)
{
  return (uint8x8_t)__builtin_neon_vld1v8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vld1_u16 (const uint16_t * __a)
{
  return (uint16x4_t)__builtin_neon_vld1v4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vld1_u32 (const uint32_t * __a)
{
  return (uint32x2_t)__builtin_neon_vld1v2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vld1_u64 (const uint64_t * __a)
{
  return (uint64x1_t)__builtin_neon_vld1di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vld1_p8 (const poly8_t * __a)
{
  return (poly8x8_t)__builtin_neon_vld1v8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vld1_p16 (const poly16_t * __a)
{
  return (poly16x4_t)__builtin_neon_vld1v4hi ((const __builtin_neon_hi *) __a);
}
# 8278 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vld1q_s8 (const int8_t * __a)
{
  return (int8x16_t)__builtin_neon_vld1v16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vld1q_s16 (const int16_t * __a)
{
  return (int16x8_t)__builtin_neon_vld1v8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vld1q_s32 (const int32_t * __a)
{
  return (int32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vld1q_s64 (const int64_t * __a)
{
  return (int64x2_t)__builtin_neon_vld1v2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vld1q_f32 (const float32_t * __a)
{
  return (float32x4_t)__builtin_neon_vld1v4sf ((const __builtin_neon_sf *) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vld1q_u8 (const uint8_t * __a)
{
  return (uint8x16_t)__builtin_neon_vld1v16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vld1q_u16 (const uint16_t * __a)
{
  return (uint16x8_t)__builtin_neon_vld1v8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vld1q_u32 (const uint32_t * __a)
{
  return (uint32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vld1q_u64 (const uint64_t * __a)
{
  return (uint64x2_t)__builtin_neon_vld1v2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vld1q_p8 (const poly8_t * __a)
{
  return (poly8x16_t)__builtin_neon_vld1v16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vld1q_p16 (const poly16_t * __a)
{
  return (poly16x8_t)__builtin_neon_vld1v8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vld1_lane_s8 (const int8_t * __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vld1_lanev8qi ((const __builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vld1_lane_s16 (const int16_t * __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vld1_lanev4hi ((const __builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vld1_lane_s32 (const int32_t * __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vld1_lanev2si ((const __builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vld1_lane_f32 (const float32_t * __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vld1_lanev2sf ((const __builtin_neon_sf *) __a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vld1_lane_u8 (const uint8_t * __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vld1_lanev8qi ((const __builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vld1_lane_u16 (const uint16_t * __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vld1_lanev4hi ((const __builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vld1_lane_u32 (const uint32_t * __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vld1_lanev2si ((const __builtin_neon_si *) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vld1_lane_p8 (const poly8_t * __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vld1_lanev8qi ((const __builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vld1_lane_p16 (const poly16_t * __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vld1_lanev4hi ((const __builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}
# 8406 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vld1_lane_s64 (const int64_t * __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vld1_lanedi ((const __builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vld1_lane_u64 (const uint64_t * __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vld1_lanedi ((const __builtin_neon_di *) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vld1q_lane_s8 (const int8_t * __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vld1_lanev16qi ((const __builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vld1q_lane_s16 (const int16_t * __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vld1_lanev8hi ((const __builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vld1q_lane_s32 (const int32_t * __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vld1_lanev4si ((const __builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vld1q_lane_f32 (const float32_t * __a, float32x4_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vld1_lanev4sf ((const __builtin_neon_sf *) __a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vld1q_lane_u8 (const uint8_t * __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vld1_lanev16qi ((const __builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vld1q_lane_u16 (const uint16_t * __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vld1_lanev8hi ((const __builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vld1q_lane_u32 (const uint32_t * __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vld1_lanev4si ((const __builtin_neon_si *) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vld1q_lane_p8 (const poly8_t * __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vld1_lanev16qi ((const __builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vld1q_lane_p16 (const poly16_t * __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vld1_lanev8hi ((const __builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}
# 8480 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vld1q_lane_s64 (const int64_t * __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vld1_lanev2di ((const __builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vld1q_lane_u64 (const uint64_t * __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vld1_lanev2di ((const __builtin_neon_di *) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vld1_dup_s8 (const int8_t * __a)
{
  return (int8x8_t)__builtin_neon_vld1_dupv8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vld1_dup_s16 (const int16_t * __a)
{
  return (int16x4_t)__builtin_neon_vld1_dupv4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vld1_dup_s32 (const int32_t * __a)
{
  return (int32x2_t)__builtin_neon_vld1_dupv2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vld1_dup_f32 (const float32_t * __a)
{
  return (float32x2_t)__builtin_neon_vld1_dupv2sf ((const __builtin_neon_sf *) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vld1_dup_u8 (const uint8_t * __a)
{
  return (uint8x8_t)__builtin_neon_vld1_dupv8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vld1_dup_u16 (const uint16_t * __a)
{
  return (uint16x4_t)__builtin_neon_vld1_dupv4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vld1_dup_u32 (const uint32_t * __a)
{
  return (uint32x2_t)__builtin_neon_vld1_dupv2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vld1_dup_p8 (const poly8_t * __a)
{
  return (poly8x8_t)__builtin_neon_vld1_dupv8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vld1_dup_p16 (const poly16_t * __a)
{
  return (poly16x4_t)__builtin_neon_vld1_dupv4hi ((const __builtin_neon_hi *) __a);
}
# 8554 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vld1_dup_s64 (const int64_t * __a)
{
  return (int64x1_t)__builtin_neon_vld1_dupdi ((const __builtin_neon_di *) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vld1_dup_u64 (const uint64_t * __a)
{
  return (uint64x1_t)__builtin_neon_vld1_dupdi ((const __builtin_neon_di *) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vld1q_dup_s8 (const int8_t * __a)
{
  return (int8x16_t)__builtin_neon_vld1_dupv16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vld1q_dup_s16 (const int16_t * __a)
{
  return (int16x8_t)__builtin_neon_vld1_dupv8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vld1q_dup_s32 (const int32_t * __a)
{
  return (int32x4_t)__builtin_neon_vld1_dupv4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vld1q_dup_f32 (const float32_t * __a)
{
  return (float32x4_t)__builtin_neon_vld1_dupv4sf ((const __builtin_neon_sf *) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vld1q_dup_u8 (const uint8_t * __a)
{
  return (uint8x16_t)__builtin_neon_vld1_dupv16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vld1q_dup_u16 (const uint16_t * __a)
{
  return (uint16x8_t)__builtin_neon_vld1_dupv8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vld1q_dup_u32 (const uint32_t * __a)
{
  return (uint32x4_t)__builtin_neon_vld1_dupv4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vld1q_dup_p8 (const poly8_t * __a)
{
  return (poly8x16_t)__builtin_neon_vld1_dupv16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vld1q_dup_p16 (const poly16_t * __a)
{
  return (poly16x8_t)__builtin_neon_vld1_dupv8hi ((const __builtin_neon_hi *) __a);
}
# 8628 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vld1q_dup_s64 (const int64_t * __a)
{
  return (int64x2_t)__builtin_neon_vld1_dupv2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vld1q_dup_u64 (const uint64_t * __a)
{
  return (uint64x2_t)__builtin_neon_vld1_dupv2di ((const __builtin_neon_di *) __a);
}
# 8648 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s8 (int8_t * __a, int8x8_t __b)
{
  __builtin_neon_vst1v8qi ((__builtin_neon_qi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s16 (int16_t * __a, int16x4_t __b)
{
  __builtin_neon_vst1v4hi ((__builtin_neon_hi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s32 (int32_t * __a, int32x2_t __b)
{
  __builtin_neon_vst1v2si ((__builtin_neon_si *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s64 (int64_t * __a, int64x1_t __b)
{
  __builtin_neon_vst1di ((__builtin_neon_di *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_f32 (float32_t * __a, float32x2_t __b)
{
  __builtin_neon_vst1v2sf ((__builtin_neon_sf *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u8 (uint8_t * __a, uint8x8_t __b)
{
  __builtin_neon_vst1v8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u16 (uint16_t * __a, uint16x4_t __b)
{
  __builtin_neon_vst1v4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u32 (uint32_t * __a, uint32x2_t __b)
{
  __builtin_neon_vst1v2si ((__builtin_neon_si *) __a, (int32x2_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u64 (uint64_t * __a, uint64x1_t __b)
{
  __builtin_neon_vst1di ((__builtin_neon_di *) __a, (int64x1_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_p8 (poly8_t * __a, poly8x8_t __b)
{
  __builtin_neon_vst1v8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_p16 (poly16_t * __a, poly16x4_t __b)
{
  __builtin_neon_vst1v4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b);
}
# 8722 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s8 (int8_t * __a, int8x16_t __b)
{
  __builtin_neon_vst1v16qi ((__builtin_neon_qi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s16 (int16_t * __a, int16x8_t __b)
{
  __builtin_neon_vst1v8hi ((__builtin_neon_hi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s32 (int32_t * __a, int32x4_t __b)
{
  __builtin_neon_vst1v4si ((__builtin_neon_si *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s64 (int64_t * __a, int64x2_t __b)
{
  __builtin_neon_vst1v2di ((__builtin_neon_di *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_f32 (float32_t * __a, float32x4_t __b)
{
  __builtin_neon_vst1v4sf ((__builtin_neon_sf *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u8 (uint8_t * __a, uint8x16_t __b)
{
  __builtin_neon_vst1v16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u16 (uint16_t * __a, uint16x8_t __b)
{
  __builtin_neon_vst1v8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u32 (uint32_t * __a, uint32x4_t __b)
{
  __builtin_neon_vst1v4si ((__builtin_neon_si *) __a, (int32x4_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u64 (uint64_t * __a, uint64x2_t __b)
{
  __builtin_neon_vst1v2di ((__builtin_neon_di *) __a, (int64x2_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_p8 (poly8_t * __a, poly8x16_t __b)
{
  __builtin_neon_vst1v16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_p16 (poly16_t * __a, poly16x8_t __b)
{
  __builtin_neon_vst1v8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s8 (int8_t * __a, int8x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8qi ((__builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s16 (int16_t * __a, int16x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4hi ((__builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s32 (int32_t * __a, int32x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2si ((__builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_f32 (float32_t * __a, float32x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2sf ((__builtin_neon_sf *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u8 (uint8_t * __a, uint8x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u16 (uint16_t * __a, uint16x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u32 (uint32_t * __a, uint32x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2si ((__builtin_neon_si *) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_p8 (poly8_t * __a, poly8x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_p16 (poly16_t * __a, poly16x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}
# 8850 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s64 (int64_t * __a, int64x1_t __b, const int __c)
{
  __builtin_neon_vst1_lanedi ((__builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u64 (uint64_t * __a, uint64x1_t __b, const int __c)
{
  __builtin_neon_vst1_lanedi ((__builtin_neon_di *) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s8 (int8_t * __a, int8x16_t __b, const int __c)
{
  __builtin_neon_vst1_lanev16qi ((__builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s16 (int16_t * __a, int16x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8hi ((__builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s32 (int32_t * __a, int32x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4si ((__builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_f32 (float32_t * __a, float32x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4sf ((__builtin_neon_sf *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u8 (uint8_t * __a, uint8x16_t __b, const int __c)
{
  __builtin_neon_vst1_lanev16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u16 (uint16_t * __a, uint16x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u32 (uint32_t * __a, uint32x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4si ((__builtin_neon_si *) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_p8 (poly8_t * __a, poly8x16_t __b, const int __c)
{
  __builtin_neon_vst1_lanev16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_p16 (poly16_t * __a, poly16x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}
# 8924 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s64 (int64_t * __a, int64x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2di ((__builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u64 (uint64_t * __a, uint64x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2di ((__builtin_neon_di *) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vld2_s8 (const int8_t * __a)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vld2_s16 (const int16_t * __a)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vld2_s32 (const int32_t * __a)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vld2_f32 (const float32_t * __a)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v2sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vld2_u8 (const uint8_t * __a)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vld2_u16 (const uint16_t * __a)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vld2_u32 (const uint32_t * __a)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vld2_p8 (const poly8_t * __a)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vld2_p16 (const poly16_t * __a)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}
# 9018 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1x2_t __attribute__ ((__always_inline__))
vld2_s64 (const int64_t * __a)
{
  union { int64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x2_t __attribute__ ((__always_inline__))
vld2_u64 (const uint64_t * __a)
{
  union { uint64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vld2q_s8 (const int8_t * __a)
{
  union { int8x16x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vld2q_s16 (const int16_t * __a)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vld2q_s32 (const int32_t * __a)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vld2q_f32 (const float32_t * __a)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vld2q_u8 (const uint8_t * __a)
{
  union { uint8x16x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vld2q_u16 (const uint16_t * __a)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vld2q_u32 (const uint32_t * __a)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vld2q_p8 (const poly8_t * __a)
{
  union { poly8x16x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vld2q_p16 (const poly16_t * __a)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vld2_lane_s8 (const int8_t * __a, int8x8x2_t __b, const int __c)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vld2_lane_s16 (const int16_t * __a, int16x4x2_t __b, const int __c)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vld2_lane_s32 (const int32_t * __a, int32x2x2_t __b, const int __c)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vld2_lane_f32 (const float32_t * __a, float32x2x2_t __b, const int __c)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev2sf ((const __builtin_neon_sf *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vld2_lane_u8 (const uint8_t * __a, uint8x8x2_t __b, const int __c)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vld2_lane_u16 (const uint16_t * __a, uint16x4x2_t __b, const int __c)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vld2_lane_u32 (const uint32_t * __a, uint32x2x2_t __b, const int __c)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vld2_lane_p8 (const poly8_t * __a, poly8x8x2_t __b, const int __c)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vld2_lane_p16 (const poly16_t * __a, poly16x4x2_t __b, const int __c)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vld2q_lane_s16 (const int16_t * __a, int16x8x2_t __b, const int __c)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vld2q_lane_s32 (const int32_t * __a, int32x4x2_t __b, const int __c)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vld2q_lane_f32 (const float32_t * __a, float32x4x2_t __b, const int __c)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4sf ((const __builtin_neon_sf *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vld2q_lane_u16 (const uint16_t * __a, uint16x8x2_t __b, const int __c)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vld2q_lane_u32 (const uint32_t * __a, uint32x4x2_t __b, const int __c)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vld2q_lane_p16 (const poly16_t * __a, poly16x8x2_t __b, const int __c)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vld2_dup_s8 (const int8_t * __a)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vld2_dup_s16 (const int16_t * __a)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vld2_dup_s32 (const int32_t * __a)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vld2_dup_f32 (const float32_t * __a)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv2sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vld2_dup_u8 (const uint8_t * __a)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vld2_dup_u16 (const uint16_t * __a)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vld2_dup_u32 (const uint32_t * __a)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vld2_dup_p8 (const poly8_t * __a)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vld2_dup_p16 (const poly16_t * __a)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}
# 9323 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1x2_t __attribute__ ((__always_inline__))
vld2_dup_s64 (const int64_t * __a)
{
  union { int64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x2_t __attribute__ ((__always_inline__))
vld2_dup_u64 (const uint64_t * __a)
{
  union { uint64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s8 (int8_t * __a, int8x8x2_t __b)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s16 (int16_t * __a, int16x4x2_t __b)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s32 (int32_t * __a, int32x2x2_t __b)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_f32 (float32_t * __a, float32x2x2_t __b)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v2sf ((__builtin_neon_sf *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u8 (uint8_t * __a, uint8x8x2_t __b)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u16 (uint16_t * __a, uint16x4x2_t __b)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u32 (uint32_t * __a, uint32x2x2_t __b)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_p8 (poly8_t * __a, poly8x8x2_t __b)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_p16 (poly16_t * __a, poly16x4x2_t __b)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}
# 9411 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s64 (int64_t * __a, int64x1x2_t __b)
{
  union { int64x1x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u64 (uint64_t * __a, uint64x1x2_t __b)
{
  union { uint64x1x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_s8 (int8_t * __a, int8x16x2_t __b)
{
  union { int8x16x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_s16 (int16_t * __a, int16x8x2_t __b)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_s32 (int32_t * __a, int32x4x2_t __b)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_f32 (float32_t * __a, float32x4x2_t __b)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v4sf ((__builtin_neon_sf *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_u8 (uint8_t * __a, uint8x16x2_t __b)
{
  union { uint8x16x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_u16 (uint16_t * __a, uint16x8x2_t __b)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_u32 (uint32_t * __a, uint32x4x2_t __b)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_p8 (poly8_t * __a, poly8x16x2_t __b)
{
  union { poly8x16x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_p16 (poly16_t * __a, poly16x8x2_t __b)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_s8 (int8_t * __a, int8x8x2_t __b, const int __c)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_s16 (int16_t * __a, int16x4x2_t __b, const int __c)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_s32 (int32_t * __a, int32x2x2_t __b, const int __c)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_f32 (float32_t * __a, float32x2x2_t __b, const int __c)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev2sf ((__builtin_neon_sf *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_u8 (uint8_t * __a, uint8x8x2_t __b, const int __c)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_u16 (uint16_t * __a, uint16x4x2_t __b, const int __c)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_u32 (uint32_t * __a, uint32x2x2_t __b, const int __c)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_p8 (poly8_t * __a, poly8x8x2_t __b, const int __c)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_p16 (poly16_t * __a, poly16x4x2_t __b, const int __c)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_s16 (int16_t * __a, int16x8x2_t __b, const int __c)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_s32 (int32_t * __a, int32x4x2_t __b, const int __c)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_f32 (float32_t * __a, float32x4x2_t __b, const int __c)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4sf ((__builtin_neon_sf *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_u16 (uint16_t * __a, uint16x8x2_t __b, const int __c)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_u32 (uint32_t * __a, uint32x4x2_t __b, const int __c)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_p16 (poly16_t * __a, poly16x8x2_t __b, const int __c)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline int8x8x3_t __attribute__ ((__always_inline__))
vld3_s8 (const int8_t * __a)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x3_t __attribute__ ((__always_inline__))
vld3_s16 (const int16_t * __a)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x3_t __attribute__ ((__always_inline__))
vld3_s32 (const int32_t * __a)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x3_t __attribute__ ((__always_inline__))
vld3_f32 (const float32_t * __a)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v2sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x3_t __attribute__ ((__always_inline__))
vld3_u8 (const uint8_t * __a)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x3_t __attribute__ ((__always_inline__))
vld3_u16 (const uint16_t * __a)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x3_t __attribute__ ((__always_inline__))
vld3_u32 (const uint32_t * __a)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x3_t __attribute__ ((__always_inline__))
vld3_p8 (const poly8_t * __a)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x3_t __attribute__ ((__always_inline__))
vld3_p16 (const poly16_t * __a)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}
# 9675 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1x3_t __attribute__ ((__always_inline__))
vld3_s64 (const int64_t * __a)
{
  union { int64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x3_t __attribute__ ((__always_inline__))
vld3_u64 (const uint64_t * __a)
{
  union { uint64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x16x3_t __attribute__ ((__always_inline__))
vld3q_s8 (const int8_t * __a)
{
  union { int8x16x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x8x3_t __attribute__ ((__always_inline__))
vld3q_s16 (const int16_t * __a)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x4x3_t __attribute__ ((__always_inline__))
vld3q_s32 (const int32_t * __a)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x4x3_t __attribute__ ((__always_inline__))
vld3q_f32 (const float32_t * __a)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x16x3_t __attribute__ ((__always_inline__))
vld3q_u8 (const uint8_t * __a)
{
  union { uint8x16x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x8x3_t __attribute__ ((__always_inline__))
vld3q_u16 (const uint16_t * __a)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x4x3_t __attribute__ ((__always_inline__))
vld3q_u32 (const uint32_t * __a)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x16x3_t __attribute__ ((__always_inline__))
vld3q_p8 (const poly8_t * __a)
{
  union { poly8x16x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x8x3_t __attribute__ ((__always_inline__))
vld3q_p16 (const poly16_t * __a)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x8x3_t __attribute__ ((__always_inline__))
vld3_lane_s8 (const int8_t * __a, int8x8x3_t __b, const int __c)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x4x3_t __attribute__ ((__always_inline__))
vld3_lane_s16 (const int16_t * __a, int16x4x3_t __b, const int __c)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x2x3_t __attribute__ ((__always_inline__))
vld3_lane_s32 (const int32_t * __a, int32x2x3_t __b, const int __c)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x2x3_t __attribute__ ((__always_inline__))
vld3_lane_f32 (const float32_t * __a, float32x2x3_t __b, const int __c)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev2sf ((const __builtin_neon_sf *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint8x8x3_t __attribute__ ((__always_inline__))
vld3_lane_u8 (const uint8_t * __a, uint8x8x3_t __b, const int __c)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x4x3_t __attribute__ ((__always_inline__))
vld3_lane_u16 (const uint16_t * __a, uint16x4x3_t __b, const int __c)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x2x3_t __attribute__ ((__always_inline__))
vld3_lane_u32 (const uint32_t * __a, uint32x2x3_t __b, const int __c)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly8x8x3_t __attribute__ ((__always_inline__))
vld3_lane_p8 (const poly8_t * __a, poly8x8x3_t __b, const int __c)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x4x3_t __attribute__ ((__always_inline__))
vld3_lane_p16 (const poly16_t * __a, poly16x4x3_t __b, const int __c)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x8x3_t __attribute__ ((__always_inline__))
vld3q_lane_s16 (const int16_t * __a, int16x8x3_t __b, const int __c)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x4x3_t __attribute__ ((__always_inline__))
vld3q_lane_s32 (const int32_t * __a, int32x4x3_t __b, const int __c)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x4x3_t __attribute__ ((__always_inline__))
vld3q_lane_f32 (const float32_t * __a, float32x4x3_t __b, const int __c)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4sf ((const __builtin_neon_sf *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x8x3_t __attribute__ ((__always_inline__))
vld3q_lane_u16 (const uint16_t * __a, uint16x8x3_t __b, const int __c)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x4x3_t __attribute__ ((__always_inline__))
vld3q_lane_u32 (const uint32_t * __a, uint32x4x3_t __b, const int __c)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x8x3_t __attribute__ ((__always_inline__))
vld3q_lane_p16 (const poly16_t * __a, poly16x8x3_t __b, const int __c)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int8x8x3_t __attribute__ ((__always_inline__))
vld3_dup_s8 (const int8_t * __a)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x3_t __attribute__ ((__always_inline__))
vld3_dup_s16 (const int16_t * __a)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x3_t __attribute__ ((__always_inline__))
vld3_dup_s32 (const int32_t * __a)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x3_t __attribute__ ((__always_inline__))
vld3_dup_f32 (const float32_t * __a)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv2sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x3_t __attribute__ ((__always_inline__))
vld3_dup_u8 (const uint8_t * __a)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x3_t __attribute__ ((__always_inline__))
vld3_dup_u16 (const uint16_t * __a)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x3_t __attribute__ ((__always_inline__))
vld3_dup_u32 (const uint32_t * __a)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x3_t __attribute__ ((__always_inline__))
vld3_dup_p8 (const poly8_t * __a)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x3_t __attribute__ ((__always_inline__))
vld3_dup_p16 (const poly16_t * __a)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}
# 9980 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1x3_t __attribute__ ((__always_inline__))
vld3_dup_s64 (const int64_t * __a)
{
  union { int64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x3_t __attribute__ ((__always_inline__))
vld3_dup_u64 (const uint64_t * __a)
{
  union { uint64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s8 (int8_t * __a, int8x8x3_t __b)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s16 (int16_t * __a, int16x4x3_t __b)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s32 (int32_t * __a, int32x2x3_t __b)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_f32 (float32_t * __a, float32x2x3_t __b)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v2sf ((__builtin_neon_sf *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u8 (uint8_t * __a, uint8x8x3_t __b)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u16 (uint16_t * __a, uint16x4x3_t __b)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u32 (uint32_t * __a, uint32x2x3_t __b)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_p8 (poly8_t * __a, poly8x8x3_t __b)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_p16 (poly16_t * __a, poly16x4x3_t __b)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}
# 10068 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s64 (int64_t * __a, int64x1x3_t __b)
{
  union { int64x1x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u64 (uint64_t * __a, uint64x1x3_t __b)
{
  union { uint64x1x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_s8 (int8_t * __a, int8x16x3_t __b)
{
  union { int8x16x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_s16 (int16_t * __a, int16x8x3_t __b)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_s32 (int32_t * __a, int32x4x3_t __b)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_f32 (float32_t * __a, float32x4x3_t __b)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v4sf ((__builtin_neon_sf *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_u8 (uint8_t * __a, uint8x16x3_t __b)
{
  union { uint8x16x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_u16 (uint16_t * __a, uint16x8x3_t __b)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_u32 (uint32_t * __a, uint32x4x3_t __b)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_p8 (poly8_t * __a, poly8x16x3_t __b)
{
  union { poly8x16x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_p16 (poly16_t * __a, poly16x8x3_t __b)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_s8 (int8_t * __a, int8x8x3_t __b, const int __c)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_s16 (int16_t * __a, int16x4x3_t __b, const int __c)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_s32 (int32_t * __a, int32x2x3_t __b, const int __c)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_f32 (float32_t * __a, float32x2x3_t __b, const int __c)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev2sf ((__builtin_neon_sf *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_u8 (uint8_t * __a, uint8x8x3_t __b, const int __c)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_u16 (uint16_t * __a, uint16x4x3_t __b, const int __c)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_u32 (uint32_t * __a, uint32x2x3_t __b, const int __c)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_p8 (poly8_t * __a, poly8x8x3_t __b, const int __c)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_p16 (poly16_t * __a, poly16x4x3_t __b, const int __c)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_s16 (int16_t * __a, int16x8x3_t __b, const int __c)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_s32 (int32_t * __a, int32x4x3_t __b, const int __c)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_f32 (float32_t * __a, float32x4x3_t __b, const int __c)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4sf ((__builtin_neon_sf *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_u16 (uint16_t * __a, uint16x8x3_t __b, const int __c)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_u32 (uint32_t * __a, uint32x4x3_t __b, const int __c)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_p16 (poly16_t * __a, poly16x8x3_t __b, const int __c)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline int8x8x4_t __attribute__ ((__always_inline__))
vld4_s8 (const int8_t * __a)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x4_t __attribute__ ((__always_inline__))
vld4_s16 (const int16_t * __a)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x4_t __attribute__ ((__always_inline__))
vld4_s32 (const int32_t * __a)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x4_t __attribute__ ((__always_inline__))
vld4_f32 (const float32_t * __a)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v2sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x4_t __attribute__ ((__always_inline__))
vld4_u8 (const uint8_t * __a)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x4_t __attribute__ ((__always_inline__))
vld4_u16 (const uint16_t * __a)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x4_t __attribute__ ((__always_inline__))
vld4_u32 (const uint32_t * __a)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x4_t __attribute__ ((__always_inline__))
vld4_p8 (const poly8_t * __a)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x4_t __attribute__ ((__always_inline__))
vld4_p16 (const poly16_t * __a)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}
# 10332 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1x4_t __attribute__ ((__always_inline__))
vld4_s64 (const int64_t * __a)
{
  union { int64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x4_t __attribute__ ((__always_inline__))
vld4_u64 (const uint64_t * __a)
{
  union { uint64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x16x4_t __attribute__ ((__always_inline__))
vld4q_s8 (const int8_t * __a)
{
  union { int8x16x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x8x4_t __attribute__ ((__always_inline__))
vld4q_s16 (const int16_t * __a)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x4x4_t __attribute__ ((__always_inline__))
vld4q_s32 (const int32_t * __a)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x4x4_t __attribute__ ((__always_inline__))
vld4q_f32 (const float32_t * __a)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x16x4_t __attribute__ ((__always_inline__))
vld4q_u8 (const uint8_t * __a)
{
  union { uint8x16x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x8x4_t __attribute__ ((__always_inline__))
vld4q_u16 (const uint16_t * __a)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x4x4_t __attribute__ ((__always_inline__))
vld4q_u32 (const uint32_t * __a)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x16x4_t __attribute__ ((__always_inline__))
vld4q_p8 (const poly8_t * __a)
{
  union { poly8x16x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x8x4_t __attribute__ ((__always_inline__))
vld4q_p16 (const poly16_t * __a)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x8x4_t __attribute__ ((__always_inline__))
vld4_lane_s8 (const int8_t * __a, int8x8x4_t __b, const int __c)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x4x4_t __attribute__ ((__always_inline__))
vld4_lane_s16 (const int16_t * __a, int16x4x4_t __b, const int __c)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x2x4_t __attribute__ ((__always_inline__))
vld4_lane_s32 (const int32_t * __a, int32x2x4_t __b, const int __c)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x2x4_t __attribute__ ((__always_inline__))
vld4_lane_f32 (const float32_t * __a, float32x2x4_t __b, const int __c)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev2sf ((const __builtin_neon_sf *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint8x8x4_t __attribute__ ((__always_inline__))
vld4_lane_u8 (const uint8_t * __a, uint8x8x4_t __b, const int __c)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x4x4_t __attribute__ ((__always_inline__))
vld4_lane_u16 (const uint16_t * __a, uint16x4x4_t __b, const int __c)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x2x4_t __attribute__ ((__always_inline__))
vld4_lane_u32 (const uint32_t * __a, uint32x2x4_t __b, const int __c)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly8x8x4_t __attribute__ ((__always_inline__))
vld4_lane_p8 (const poly8_t * __a, poly8x8x4_t __b, const int __c)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x4x4_t __attribute__ ((__always_inline__))
vld4_lane_p16 (const poly16_t * __a, poly16x4x4_t __b, const int __c)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x8x4_t __attribute__ ((__always_inline__))
vld4q_lane_s16 (const int16_t * __a, int16x8x4_t __b, const int __c)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x4x4_t __attribute__ ((__always_inline__))
vld4q_lane_s32 (const int32_t * __a, int32x4x4_t __b, const int __c)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x4x4_t __attribute__ ((__always_inline__))
vld4q_lane_f32 (const float32_t * __a, float32x4x4_t __b, const int __c)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4sf ((const __builtin_neon_sf *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x8x4_t __attribute__ ((__always_inline__))
vld4q_lane_u16 (const uint16_t * __a, uint16x8x4_t __b, const int __c)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x4x4_t __attribute__ ((__always_inline__))
vld4q_lane_u32 (const uint32_t * __a, uint32x4x4_t __b, const int __c)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x8x4_t __attribute__ ((__always_inline__))
vld4q_lane_p16 (const poly16_t * __a, poly16x8x4_t __b, const int __c)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int8x8x4_t __attribute__ ((__always_inline__))
vld4_dup_s8 (const int8_t * __a)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x4_t __attribute__ ((__always_inline__))
vld4_dup_s16 (const int16_t * __a)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x4_t __attribute__ ((__always_inline__))
vld4_dup_s32 (const int32_t * __a)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x4_t __attribute__ ((__always_inline__))
vld4_dup_f32 (const float32_t * __a)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv2sf ((const __builtin_neon_sf *) __a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x4_t __attribute__ ((__always_inline__))
vld4_dup_u8 (const uint8_t * __a)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x4_t __attribute__ ((__always_inline__))
vld4_dup_u16 (const uint16_t * __a)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x4_t __attribute__ ((__always_inline__))
vld4_dup_u32 (const uint32_t * __a)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x4_t __attribute__ ((__always_inline__))
vld4_dup_p8 (const poly8_t * __a)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x4_t __attribute__ ((__always_inline__))
vld4_dup_p16 (const poly16_t * __a)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}
# 10637 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1x4_t __attribute__ ((__always_inline__))
vld4_dup_s64 (const int64_t * __a)
{
  union { int64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x4_t __attribute__ ((__always_inline__))
vld4_dup_u64 (const uint64_t * __a)
{
  union { uint64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s8 (int8_t * __a, int8x8x4_t __b)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s16 (int16_t * __a, int16x4x4_t __b)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s32 (int32_t * __a, int32x2x4_t __b)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_f32 (float32_t * __a, float32x2x4_t __b)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v2sf ((__builtin_neon_sf *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u8 (uint8_t * __a, uint8x8x4_t __b)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u16 (uint16_t * __a, uint16x4x4_t __b)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u32 (uint32_t * __a, uint32x2x4_t __b)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_p8 (poly8_t * __a, poly8x8x4_t __b)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_p16 (poly16_t * __a, poly16x4x4_t __b)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}
# 10725 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s64 (int64_t * __a, int64x1x4_t __b)
{
  union { int64x1x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u64 (uint64_t * __a, uint64x1x4_t __b)
{
  union { uint64x1x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_s8 (int8_t * __a, int8x16x4_t __b)
{
  union { int8x16x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_s16 (int16_t * __a, int16x8x4_t __b)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_s32 (int32_t * __a, int32x4x4_t __b)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_f32 (float32_t * __a, float32x4x4_t __b)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v4sf ((__builtin_neon_sf *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_u8 (uint8_t * __a, uint8x16x4_t __b)
{
  union { uint8x16x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_u16 (uint16_t * __a, uint16x8x4_t __b)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_u32 (uint32_t * __a, uint32x4x4_t __b)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_p8 (poly8_t * __a, poly8x16x4_t __b)
{
  union { poly8x16x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_p16 (poly16_t * __a, poly16x8x4_t __b)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_s8 (int8_t * __a, int8x8x4_t __b, const int __c)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_s16 (int16_t * __a, int16x4x4_t __b, const int __c)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_s32 (int32_t * __a, int32x2x4_t __b, const int __c)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_f32 (float32_t * __a, float32x2x4_t __b, const int __c)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev2sf ((__builtin_neon_sf *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_u8 (uint8_t * __a, uint8x8x4_t __b, const int __c)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_u16 (uint16_t * __a, uint16x4x4_t __b, const int __c)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_u32 (uint32_t * __a, uint32x2x4_t __b, const int __c)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_p8 (poly8_t * __a, poly8x8x4_t __b, const int __c)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_p16 (poly16_t * __a, poly16x4x4_t __b, const int __c)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_s16 (int16_t * __a, int16x8x4_t __b, const int __c)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_s32 (int32_t * __a, int32x4x4_t __b, const int __c)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_f32 (float32_t * __a, float32x4x4_t __b, const int __c)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4sf ((__builtin_neon_sf *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_u16 (uint16_t * __a, uint16x8x4_t __b, const int __c)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_u32 (uint32_t * __a, uint32x4x4_t __b, const int __c)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_p16 (poly16_t * __a, poly16x8x4_t __b, const int __c)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vand_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vandv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vand_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vandv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vand_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vandv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vand_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vandv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vand_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vandv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vand_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vandv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vand_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vanddi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vand_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vanddi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vandq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vandv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vandq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vandv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vandq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vandv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vandq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vandv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vandq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vandv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vandq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vandv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vandq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vandv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vandq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vandv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vorr_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vorrv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vorr_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vorrv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vorr_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vorrv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vorr_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vorrv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vorr_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vorrv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vorr_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vorrv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vorr_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vorrdi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vorr_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vorrdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vorrq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vorrv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vorrq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vorrv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vorrq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vorrv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vorrq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vorrv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vorrq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vorrv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vorrq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vorrv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vorrq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vorrv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vorrq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vorrv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
veor_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_veorv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
veor_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_veorv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
veor_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_veorv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
veor_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_veorv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
veor_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_veorv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
veor_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_veorv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
veor_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_veordi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
veor_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_veordi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
veorq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_veorv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
veorq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_veorv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
veorq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_veorv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
veorq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_veorv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
veorq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_veorv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
veorq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_veorv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
veorq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_veorv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
veorq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_veorv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vbic_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vbicv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vbic_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vbicv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vbic_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vbicv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vbic_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vbicv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vbic_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vbicv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vbic_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vbicv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vbic_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vbicdi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vbic_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vbicdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vbicq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vbicv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vbicq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vbicv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vbicq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vbicv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vbicq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vbicv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vbicq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vbicv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vbicq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vbicv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vbicq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vbicv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vbicq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vbicv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vorn_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vornv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vorn_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vornv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vorn_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vornv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vorn_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vornv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vorn_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vornv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vorn_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vornv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vorn_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vorndi (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vorn_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vorndi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vornq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vornv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vornq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vornv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vornq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vornv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vornq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vornv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vornq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vornv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vornq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vornv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vornq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vornv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vornq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vornv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}


__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_p16 (poly16x4_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_f32 (float32x2_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv2sf (__a);
}
# 11408 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s64 (int64x1_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qidi (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u64 (uint64x1_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qidi ((int64x1_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s8 (int8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv8qi (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s16 (int16x4_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv4hi (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s32 (int32x2_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv2si (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u8 (uint8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u16 (uint16x4_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u32 (uint32x2_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv2si ((int32x2_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_p8 (poly8x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_f32 (float32x2_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv2sf (__a);
}
# 11476 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s64 (int64x1_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hidi (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u64 (uint64x1_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hidi ((int64x1_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s8 (int8x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv8qi (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s16 (int16x4_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv4hi (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s32 (int32x2_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv2si (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u8 (uint8x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u16 (uint16x4_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u32 (uint32x2_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv2si ((int32x2_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_p8 (poly8x8_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv8qi ((int8x8_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_p16 (poly16x4_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv4hi ((int16x4_t) __a);
}
# 11544 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s64 (int64x1_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfdi (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u64 (uint64x1_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfdi ((int64x1_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s8 (int8x8_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv8qi (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s16 (int16x4_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv4hi (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s32 (int32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv2si (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u8 (uint8x8_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv8qi ((int8x8_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u16 (uint16x4_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv4hi ((int16x4_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u32 (uint32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv2si ((int32x2_t) __a);
}
# 11680 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_p8 (poly8x8_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_p16 (poly16x4_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_f32 (float32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv2sf (__a);
}
# 11706 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u64 (uint64x1_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdidi ((int64x1_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_s8 (int8x8_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv8qi (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_s16 (int16x4_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv4hi (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_s32 (int32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv2si (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u8 (uint8x8_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u16 (uint16x4_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u32 (uint32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv2si ((int32x2_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_p8 (poly8x8_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_p16 (poly16x4_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_f32 (float32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv2sf (__a);
}
# 11774 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s64 (int64x1_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdidi (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s8 (int8x8_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv8qi (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s16 (int16x4_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv4hi (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s32 (int32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv2si (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_u8 (uint8x8_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_u16 (uint16x4_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_u32 (uint32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv2si ((int32x2_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_p8 (poly8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_p16 (poly16x4_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_f32 (float32x2_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv2sf (__a);
}
# 11842 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_s64 (int64x1_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qidi (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u64 (uint64x1_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qidi ((int64x1_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_s16 (int16x4_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv4hi (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_s32 (int32x2_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv2si (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u8 (uint8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u16 (uint16x4_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u32 (uint32x2_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv2si ((int32x2_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_p8 (poly8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_p16 (poly16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_f32 (float32x2_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv2sf (__a);
}
# 11910 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_s64 (int64x1_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hidi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u64 (uint64x1_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hidi ((int64x1_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_s8 (int8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv8qi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_s32 (int32x2_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv2si (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u8 (uint8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u16 (uint16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u32 (uint32x2_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv2si ((int32x2_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_p8 (poly8x8_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_p16 (poly16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_f32 (float32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv2sf (__a);
}
# 11978 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_s64 (int64x1_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2sidi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u64 (uint64x1_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2sidi ((int64x1_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_s8 (int8x8_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv8qi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_s16 (int16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv4hi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u8 (uint8x8_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u16 (uint16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u32 (uint32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv2si ((int32x2_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_p8 (poly8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_p16 (poly16x4_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_f32 (float32x2_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv2sf (__a);
}
# 12046 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s64 (int64x1_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qidi (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_u64 (uint64x1_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qidi ((int64x1_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s8 (int8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv8qi (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s16 (int16x4_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv4hi (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s32 (int32x2_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv2si (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_u16 (uint16x4_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_u32 (uint32x2_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv2si ((int32x2_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_p8 (poly8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_p16 (poly16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_f32 (float32x2_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv2sf (__a);
}
# 12114 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s64 (int64x1_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hidi (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_u64 (uint64x1_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hidi ((int64x1_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s8 (int8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv8qi (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s16 (int16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv4hi (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s32 (int32x2_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv2si (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_u8 (uint8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_u32 (uint32x2_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv2si ((int32x2_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_p8 (poly8x8_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_p16 (poly16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_f32 (float32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv2sf (__a);
}
# 12182 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s64 (int64x1_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2sidi (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_u64 (uint64x1_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2sidi ((int64x1_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s8 (int8x8_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv8qi (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s16 (int16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv4hi (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s32 (int32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv2si (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_u8 (uint8x8_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_u16 (uint16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_p16 (poly16x8_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_f32 (float32x4_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv4sf (__a);
}
# 12252 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s64 (int64x2_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv2di (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u64 (uint64x2_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv2di ((int64x2_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s8 (int8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv16qi (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s16 (int16x8_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv8hi (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s32 (int32x4_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv4si (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u8 (uint8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u16 (uint16x8_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u32 (uint32x4_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv4si ((int32x4_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_p8 (poly8x16_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_f32 (float32x4_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv4sf (__a);
}
# 12328 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s64 (int64x2_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv2di (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u64 (uint64x2_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv2di ((int64x2_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s8 (int8x16_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv16qi (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s16 (int16x8_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv8hi (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s32 (int32x4_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv4si (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u8 (uint8x16_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u16 (uint16x8_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u32 (uint32x4_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv4si ((int32x4_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_p8 (poly8x16_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv16qi ((int8x16_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_p16 (poly16x8_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv8hi ((int16x8_t) __a);
}
# 12404 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s64 (int64x2_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv2di (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u64 (uint64x2_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv2di ((int64x2_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s8 (int8x16_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv16qi (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s16 (int16x8_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv8hi (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s32 (int32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv4si (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u8 (uint8x16_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv16qi ((int8x16_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u16 (uint16x8_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv8hi ((int16x8_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u32 (uint32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv4si ((int32x4_t) __a);
}
# 12644 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_p8 (poly8x16_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_p16 (poly16x8_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_f32 (float32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div4sf (__a);
}
# 12678 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u64 (uint64x2_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div2di ((int64x2_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_s8 (int8x16_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div16qi (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_s16 (int16x8_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div8hi (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_s32 (int32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div4si (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u8 (uint8x16_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u16 (uint16x8_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u32 (uint32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div4si ((int32x4_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_p8 (poly8x16_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_p16 (poly16x8_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_f32 (float32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div4sf (__a);
}
# 12754 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s64 (int64x2_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div2di (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s8 (int8x16_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div16qi (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s16 (int16x8_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div8hi (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s32 (int32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div4si (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_u8 (uint8x16_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_u16 (uint16x8_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_u32 (uint32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div4si ((int32x4_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_p8 (poly8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_p16 (poly16x8_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_f32 (float32x4_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv4sf (__a);
}
# 12830 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_s64 (int64x2_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv2di (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u64 (uint64x2_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv2di ((int64x2_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_s16 (int16x8_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv8hi (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_s32 (int32x4_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv4si (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u8 (uint8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u16 (uint16x8_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u32 (uint32x4_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv4si ((int32x4_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_p8 (poly8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_p16 (poly16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_f32 (float32x4_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv4sf (__a);
}
# 12906 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_s64 (int64x2_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv2di (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u64 (uint64x2_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv2di ((int64x2_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_s8 (int8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv16qi (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_s32 (int32x4_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv4si (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u8 (uint8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u16 (uint16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u32 (uint32x4_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv4si ((int32x4_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_p8 (poly8x16_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_p16 (poly16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_f32 (float32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv4sf (__a);
}
# 12982 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_s64 (int64x2_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv2di (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u64 (uint64x2_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv2di ((int64x2_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_s8 (int8x16_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv16qi (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_s16 (int16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv8hi (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u8 (uint8x16_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u16 (uint16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u32 (uint32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv4si ((int32x4_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_p8 (poly8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_p16 (poly16x8_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_f32 (float32x4_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv4sf (__a);
}
# 13058 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s64 (int64x2_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv2di (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_u64 (uint64x2_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv2di ((int64x2_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s8 (int8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv16qi (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s16 (int16x8_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv8hi (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s32 (int32x4_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv4si (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_u16 (uint16x8_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_u32 (uint32x4_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv4si ((int32x4_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_p8 (poly8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_p16 (poly16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_f32 (float32x4_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv4sf (__a);
}
# 13134 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s64 (int64x2_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv2di (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_u64 (uint64x2_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv2di ((int64x2_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s8 (int8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv16qi (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s16 (int16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv8hi (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s32 (int32x4_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv4si (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_u8 (uint8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_u32 (uint32x4_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv4si ((int32x4_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_p8 (poly8x16_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_p16 (poly16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_f32 (float32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv4sf (__a);
}
# 13210 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\arm_neon.h" 3 4
__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s64 (int64x2_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv2di (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_u64 (uint64x2_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv2di ((int64x2_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s8 (int8x16_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv16qi (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s16 (int16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv8hi (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s32 (int32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv4si (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_u8 (uint8x16_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_u16 (uint16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}
# 21 "../../../libs/png/arm/filter_neon_intrinsics.c" 2
# 41 "../../../libs/png/arm/filter_neon_intrinsics.c"
void
png_read_filter_row_up_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_bytep rp_stop = row + row_info->rowbytes;
   png_const_bytep pp = prev_row;

   for (; rp < rp_stop; rp += 16, pp += 16)
   {
      uint8x16_t qrp, qpp;

      qrp = vld1q_u8(rp);
      qpp = vld1q_u8(pp);
      qrp = vaddq_u8(qrp, qpp);
      vst1q_u8(rp, qrp);
   }
}

void
png_read_filter_row_sub3_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_bytep rp_stop = row + row_info->rowbytes;

   uint8x16_t vtmp = vld1q_u8(rp);
   uint8x8x2_t *vrpt = ((void*)(&vtmp));
   uint8x8x2_t vrp = *vrpt;

   uint8x8x4_t vdest;
   vdest.val[3] = vdup_n_u8(0);

   for (; rp < rp_stop;)
   {
      uint8x8_t vtmp1, vtmp2;
      uint32x2_t *temp_pointer;

      vtmp1 = vext_u8(vrp.val[0], vrp.val[1], 3);
      vdest.val[0] = vadd_u8(vdest.val[3], vrp.val[0]);
      vtmp2 = vext_u8(vrp.val[0], vrp.val[1], 6);
      vdest.val[1] = vadd_u8(vdest.val[0], vtmp1);

      vtmp1 = vext_u8(vrp.val[1], vrp.val[1], 1);
      vdest.val[2] = vadd_u8(vdest.val[1], vtmp2);
      vdest.val[3] = vadd_u8(vdest.val[2], vtmp1);

      vtmp = vld1q_u8(rp + 12);
      vrpt = ((void*)(&vtmp));
      vrp = *vrpt;

      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[0])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[1])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[2])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[3])), *temp_pointer), 0);
      rp += 3;
   }

   (void)prev_row;
}

void
png_read_filter_row_sub4_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_bytep rp_stop = row + row_info->rowbytes;

   uint8x8x4_t vdest;
   vdest.val[3] = vdup_n_u8(0);

   for (; rp < rp_stop; rp += 16)
   {
      uint32x2x4_t vtmp = vld4_u32(((void*)(rp)));
      uint8x8x4_t *vrpt = ((void*)(&vtmp));
      uint8x8x4_t vrp = *vrpt;
      uint32x2x4_t *temp_pointer;

      vdest.val[0] = vadd_u8(vdest.val[3], vrp.val[0]);
      vdest.val[1] = vadd_u8(vdest.val[0], vrp.val[1]);
      vdest.val[2] = vadd_u8(vdest.val[1], vrp.val[2]);
      vdest.val[3] = vadd_u8(vdest.val[2], vrp.val[3]);
      vst4_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest)), *temp_pointer), 0);
   }

   (void)prev_row;
}

void
png_read_filter_row_avg3_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_const_bytep pp = prev_row;
   png_bytep rp_stop = row + row_info->rowbytes;

   uint8x16_t vtmp;
   uint8x8x2_t *vrpt;
   uint8x8x2_t vrp;
   uint8x8x4_t vdest;
   vdest.val[3] = vdup_n_u8(0);

   vtmp = vld1q_u8(rp);
   vrpt = ((void*)(&vtmp));
   vrp = *vrpt;

   for (; rp < rp_stop; pp += 12)
   {
      uint8x8_t vtmp1, vtmp2, vtmp3;

      uint8x8x2_t *vppt;
      uint8x8x2_t vpp;

      uint32x2_t *temp_pointer;

      vtmp = vld1q_u8(pp);
      vppt = ((void*)(&vtmp));
      vpp = *vppt;

      vtmp1 = vext_u8(vrp.val[0], vrp.val[1], 3);
      vdest.val[0] = vhadd_u8(vdest.val[3], vpp.val[0]);
      vdest.val[0] = vadd_u8(vdest.val[0], vrp.val[0]);

      vtmp2 = vext_u8(vpp.val[0], vpp.val[1], 3);
      vtmp3 = vext_u8(vrp.val[0], vrp.val[1], 6);
      vdest.val[1] = vhadd_u8(vdest.val[0], vtmp2);
      vdest.val[1] = vadd_u8(vdest.val[1], vtmp1);

      vtmp2 = vext_u8(vpp.val[0], vpp.val[1], 6);
      vtmp1 = vext_u8(vrp.val[1], vrp.val[1], 1);

      vtmp = vld1q_u8(rp + 12);
      vrpt = ((void*)(&vtmp));
      vrp = *vrpt;

      vdest.val[2] = vhadd_u8(vdest.val[1], vtmp2);
      vdest.val[2] = vadd_u8(vdest.val[2], vtmp3);

      vtmp2 = vext_u8(vpp.val[1], vpp.val[1], 1);

      vdest.val[3] = vhadd_u8(vdest.val[2], vtmp2);
      vdest.val[3] = vadd_u8(vdest.val[3], vtmp1);

      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[0])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[1])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[2])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[3])), *temp_pointer), 0);
      rp += 3;
   }
}

void
png_read_filter_row_avg4_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_bytep rp_stop = row + row_info->rowbytes;
   png_const_bytep pp = prev_row;

   uint8x8x4_t vdest;
   vdest.val[3] = vdup_n_u8(0);

   for (; rp < rp_stop; rp += 16, pp += 16)
   {
      uint32x2x4_t vtmp;
      uint8x8x4_t *vrpt, *vppt;
      uint8x8x4_t vrp, vpp;
      uint32x2x4_t *temp_pointer;

      vtmp = vld4_u32(((void*)(rp)));
      vrpt = ((void*)(&vtmp));
      vrp = *vrpt;
      vtmp = vld4_u32(((const void*)(pp)));
      vppt = ((void*)(&vtmp));
      vpp = *vppt;

      vdest.val[0] = vhadd_u8(vdest.val[3], vpp.val[0]);
      vdest.val[0] = vadd_u8(vdest.val[0], vrp.val[0]);
      vdest.val[1] = vhadd_u8(vdest.val[0], vpp.val[1]);
      vdest.val[1] = vadd_u8(vdest.val[1], vrp.val[1]);
      vdest.val[2] = vhadd_u8(vdest.val[1], vpp.val[2]);
      vdest.val[2] = vadd_u8(vdest.val[2], vrp.val[2]);
      vdest.val[3] = vhadd_u8(vdest.val[2], vpp.val[3]);
      vdest.val[3] = vadd_u8(vdest.val[3], vrp.val[3]);

      vst4_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest)), *temp_pointer), 0);
   }
}

static uint8x8_t
paeth(uint8x8_t a, uint8x8_t b, uint8x8_t c)
{
   uint8x8_t d, e;
   uint16x8_t p1, pa, pb, pc;

   p1 = vaddl_u8(a, b);
   pc = vaddl_u8(c, c);
   pa = vabdl_u8(b, c);
   pb = vabdl_u8(a, c);
   pc = vabdq_u16(p1, pc);

   p1 = vcleq_u16(pa, pb);
   pa = vcleq_u16(pa, pc);
   pb = vcleq_u16(pb, pc);

   p1 = vandq_u16(p1, pa);

   d = vmovn_u16(pb);
   e = vmovn_u16(p1);

   d = vbsl_u8(d, b, c);
   e = vbsl_u8(e, a, d);

   return e;
}

void
png_read_filter_row_paeth3_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_const_bytep pp = prev_row;
   png_bytep rp_stop = row + row_info->rowbytes;

   uint8x16_t vtmp;
   uint8x8x2_t *vrpt;
   uint8x8x2_t vrp;
   uint8x8_t vlast = vdup_n_u8(0);
   uint8x8x4_t vdest;
   vdest.val[3] = vdup_n_u8(0);

   vtmp = vld1q_u8(rp);
   vrpt = ((void*)(&vtmp));
   vrp = *vrpt;

   for (; rp < rp_stop; pp += 12)
   {
      uint8x8x2_t *vppt;
      uint8x8x2_t vpp;
      uint8x8_t vtmp1, vtmp2, vtmp3;
      uint32x2_t *temp_pointer;

      vtmp = vld1q_u8(pp);
      vppt = ((void*)(&vtmp));
      vpp = *vppt;

      vdest.val[0] = paeth(vdest.val[3], vpp.val[0], vlast);
      vdest.val[0] = vadd_u8(vdest.val[0], vrp.val[0]);

      vtmp1 = vext_u8(vrp.val[0], vrp.val[1], 3);
      vtmp2 = vext_u8(vpp.val[0], vpp.val[1], 3);
      vdest.val[1] = paeth(vdest.val[0], vtmp2, vpp.val[0]);
      vdest.val[1] = vadd_u8(vdest.val[1], vtmp1);

      vtmp1 = vext_u8(vrp.val[0], vrp.val[1], 6);
      vtmp3 = vext_u8(vpp.val[0], vpp.val[1], 6);
      vdest.val[2] = paeth(vdest.val[1], vtmp3, vtmp2);
      vdest.val[2] = vadd_u8(vdest.val[2], vtmp1);

      vtmp1 = vext_u8(vrp.val[1], vrp.val[1], 1);
      vtmp2 = vext_u8(vpp.val[1], vpp.val[1], 1);

      vtmp = vld1q_u8(rp + 12);
      vrpt = ((void*)(&vtmp));
      vrp = *vrpt;

      vdest.val[3] = paeth(vdest.val[2], vtmp2, vtmp3);
      vdest.val[3] = vadd_u8(vdest.val[3], vtmp1);

      vlast = vtmp2;

      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[0])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[1])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[2])), *temp_pointer), 0);
      rp += 3;
      vst1_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest.val[3])), *temp_pointer), 0);
      rp += 3;
   }
}

void
png_read_filter_row_paeth4_neon(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp = row;
   png_bytep rp_stop = row + row_info->rowbytes;
   png_const_bytep pp = prev_row;

   uint8x8_t vlast = vdup_n_u8(0);
   uint8x8x4_t vdest;
   vdest.val[3] = vdup_n_u8(0);

   for (; rp < rp_stop; rp += 16, pp += 16)
   {
      uint32x2x4_t vtmp;
      uint8x8x4_t *vrpt, *vppt;
      uint8x8x4_t vrp, vpp;
      uint32x2x4_t *temp_pointer;

      vtmp = vld4_u32(((void*)(rp)));
      vrpt = ((void*)(&vtmp));
      vrp = *vrpt;
      vtmp = vld4_u32(((const void*)(pp)));
      vppt = ((void*)(&vtmp));
      vpp = *vppt;

      vdest.val[0] = paeth(vdest.val[3], vpp.val[0], vlast);
      vdest.val[0] = vadd_u8(vdest.val[0], vrp.val[0]);
      vdest.val[1] = paeth(vdest.val[0], vpp.val[1], vpp.val[0]);
      vdest.val[1] = vadd_u8(vdest.val[1], vrp.val[1]);
      vdest.val[2] = paeth(vdest.val[1], vpp.val[2], vpp.val[1]);
      vdest.val[2] = vadd_u8(vdest.val[2], vrp.val[2]);
      vdest.val[3] = paeth(vdest.val[2], vpp.val[3], vpp.val[2]);
      vdest.val[3] = vadd_u8(vdest.val[3], vrp.val[3]);

      vlast = vpp.val[3];

      vst4_lane_u32(((void*)(rp)), (temp_pointer = ((void*)(&vdest)), *temp_pointer), 0);
   }
}
