# 1 "../../../libs/minzip/Zip.c"
# 1 "<command-line>"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "../../../libs/minzip/Zip.c"





# 1 "../../../libs/minzip/safe_iop.h" 1
# 59 "../../../libs/minzip/safe_iop.h"
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 1 3 4
# 34 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\syslimits.h" 1 3 4






# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 1 3 4
# 168 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 1 3 4
# 25 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 3 4
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
# 26 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 2 3 4
# 143 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix1_lim.h" 1 3 4
# 160 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix1_lim.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\local_lim.h" 1 3 4
# 38 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\local_lim.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\linux\\limits.h" 1 3 4
# 39 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\local_lim.h" 2 3 4
# 161 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix1_lim.h" 2 3 4
# 144 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 2 3 4



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix2_lim.h" 1 3 4
# 148 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\limits.h" 2 3 4
# 169 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 2 3 4
# 8 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\syslimits.h" 2 3 4
# 35 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 2 3 4
# 60 "../../../libs/minzip/safe_iop.h" 2
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\assert.h" 1 3 4
# 64 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 61 "../../../libs/minzip/safe_iop.h" 2

typedef enum { SAFE_IOP_TYPE_S32 = 1,
               SAFE_IOP_TYPE_U32,
               SAFE_IOP_TYPE_DEFAULT = SAFE_IOP_TYPE_S32,
             } safe_type_t;
# 696 "../../../libs/minzip/safe_iop.h"
int safe_iopf(void * result, const char * const fmt, ...);
# 7 "../../../libs/minzip/Zip.c" 2
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
# 30 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




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





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;

typedef __caddr_t caddr_t;







typedef __key_t key_t;
# 135 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 1 3 4
# 57 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4


typedef __clock_t clock_t;



# 73 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4


typedef __time_t time_t;



# 91 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4
typedef __timer_t timer_t;
# 136 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4
# 149 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 212 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 150 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
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
# 219 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\endian.h" 1 3 4
# 36 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\endian.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\endian.h" 1 3 4
# 37 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\endian.h" 2 3 4
# 60 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\endian.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\byteswap.h" 1 3 4
# 34 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\byteswap.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\byteswap-16.h" 1 3 4
# 35 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\byteswap.h" 2 3 4
# 43 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 74 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\endian.h" 2 3 4
# 220 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 1 3 4
# 30 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\select.h" 1 3 4
# 31 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 2 3 4


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sigset.h" 1 3 4
# 22 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 1 3 4
# 120 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 2 3 4

# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\time.h" 1 3 4
# 30 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 96 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 3 4

# 106 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\select.h" 3 4

# 223 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\sysmacros.h" 1 3 4
# 24 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 58 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\sysmacros.h" 3 4

# 226 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 273 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\pthreadtypes.h" 1 3 4
# 37 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[36];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;




typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;


    int __kind;
    unsigned int __nusers;
    __extension__ union
    {
      int __spins;
      __pthread_slist_t __list;
    };
  } __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  long int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  long int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
# 144 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\pthreadtypes.h" 3 4
    unsigned char __flags;
    unsigned char __shared;
    unsigned char __pad1;
    unsigned char __pad2;

    int __writer;
  } __data;
  char __size[32];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[20];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 274 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\types.h" 2 3 4



# 422 "../../../libs/zlib/src/zconf.h" 2





# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 1 3 4
# 40 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 428 "../../../libs/zlib/src/zconf.h" 2
# 452 "../../../libs/zlib/src/zconf.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4

# 202 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\posix_opt.h" 1 3 4
# 203 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\environments.h" 1 3 4
# 22 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\environments.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\wordsize.h" 1 3 4
# 23 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\environments.h" 2 3 4
# 207 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4
# 226 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 227 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4
# 255 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
typedef __useconds_t useconds_t;
# 267 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 287 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 304 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
# 334 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 353 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 417 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 432 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 444 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 469 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
# 511 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 525 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 543 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




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
# 598 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;




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



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 660 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));






extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 700 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 756 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));





extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 871 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\getopt.h" 1 3 4
# 57 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\getopt.h" 3 4
extern char *optarg;
# 71 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 150 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 872 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 969 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 993 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1016 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1037 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1058 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1081 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1112 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4
extern int fdatasync (int __fildes);
# 1151 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\unistd.h" 3 4

# 453 "../../../libs/zlib/src/zconf.h" 2
# 35 "../../../libs/zlib/src/zlib.h" 2
# 80 "../../../libs/zlib/src/zlib.h"
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);

struct internal_state;

typedef struct z_stream_s {
    Bytef *next_in;
    uInt avail_in;
    uLong total_in;

    Bytef *next_out;
    uInt avail_out;
    uLong total_out;

    char *msg;
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
typedef unsigned (*in_func) (void *, unsigned char * *)
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
# 8 "../../../libs/minzip/Zip.c" 2

# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\errno.h" 1 3 4
# 31 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\errno.h" 3 4




# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\errno.h" 1 3 4
# 24 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\errno.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\linux\\errno.h" 1 3 4



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\asm\\errno.h" 1 3 4



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\asm-generic\\errno.h" 1 3 4



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\asm-generic\\errno-base.h" 1 3 4
# 5 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\asm-generic\\errno.h" 2 3 4
# 5 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\asm\\errno.h" 2 3 4
# 5 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\linux\\errno.h" 2 3 4
# 25 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\errno.h" 2 3 4
# 50 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 36 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\errno.h" 2 3 4
# 58 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\errno.h" 3 4

# 10 "../../../libs/minzip/Zip.c" 2
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 1 3 4
# 28 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4







# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl.h" 1 3 4
# 28 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };
# 54 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl-linux.h" 1 3 4
# 323 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl-linux.h" 3 4

# 397 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl-linux.h" 3 4

# 54 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\fcntl.h" 2 3 4
# 36 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 2 3 4
# 67 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 1 3 4
# 68 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 2 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stat.h" 1 3 4
# 38 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stat.h" 3 4
struct stat
  {
    __dev_t st_dev;
    unsigned short int __pad1;

    __ino_t st_ino;



    __mode_t st_mode;
    __nlink_t st_nlink;
    __uid_t st_uid;
    __gid_t st_gid;
    __dev_t st_rdev;
    unsigned short int __pad2;

    __off_t st_size;



    __blksize_t st_blksize;


    __blkcnt_t st_blocks;
# 72 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 87 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stat.h" 3 4
    unsigned long int __glibc_reserved4;
    unsigned long int __glibc_reserved5;



  };
# 69 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 2 3 4
# 160 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 169 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 193 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 215 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 261 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 283 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 305 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\fcntl.h" 3 4

# 11 "../../../libs/minzip/Zip.c" 2
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include-fixed\\limits.h" 1 3 4
# 12 "../../../libs/minzip/Zip.c" 2
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
# 128 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 3 4
typedef unsigned int uintptr_t;
# 137 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdint.h" 3 4
__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
# 10 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdint.h" 2 3 4
# 13 "../../../libs/minzip/Zip.c" 2
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 1 3 4
# 32 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 324 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 33 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4








# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\waitflags.h" 1 3 4
# 42 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\waitstatus.h" 1 3 4
# 66 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\waitstatus.h" 3 4
union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4
# 67 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
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







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 305 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
# 321 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\alloca.h" 1 3 4
# 24 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\alloca.h" 3 4
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 25 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 513 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));













extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 578 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 620 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 642 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 663 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 712 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4





extern int system (const char *__command) ;

# 734 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 752 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 775 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 812 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 899 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 951 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stdlib-float.h" 1 3 4
# 956 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 2 3 4
# 968 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdlib.h" 3 4

# 14 "../../../libs/minzip/Zip.c" 2
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 1 3 4
# 37 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 1 3 4
# 38 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 2 3 4
# 103 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\stat.h" 1 3 4
# 106 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 2 3 4
# 209 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 238 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 263 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 284 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));





extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));
# 321 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ , __leaf__));
# 399 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
# 442 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4
extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 5)));
# 534 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\sys\\stat.h" 3 4

# 15 "../../../libs/minzip/Zip.c" 2



# 1 "../../../libs/minzip/Zip.h" 1
# 9 "../../../libs/minzip/Zip.h"
# 1 "../../../libs/minzip/inline_magic.h" 1
# 10 "../../../libs/minzip/Zip.h" 2


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\utime.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\utime.h" 3 4






# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\time.h" 1 3 4
# 34 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\utime.h" 2 3 4



struct utimbuf
  {
    __time_t actime;
    __time_t modtime;
  };



extern int utime (const char *__file,
    const struct utimbuf *__file_times)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 13 "../../../libs/minzip/Zip.h" 2

# 1 "../../../libs/minzip/Hash.h" 1
# 15 "../../../libs/minzip/Hash.h"
# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stdbool.h" 1 3 4
# 16 "../../../libs/minzip/Hash.h" 2
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\assert.h" 1 3 4
# 64 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 17 "../../../libs/minzip/Hash.h" 2


typedef unsigned int (*HashCompute)(const void * item);






typedef int (*HashCompareFunc)(const void * tableItem, const void * looseItem);





typedef void (*HashFreeFunc)(void * ptr);




typedef int (*HashForeachFunc)(void * data, void * arg);
# 49 "../../../libs/minzip/Hash.h"
typedef struct HashEntry {
  unsigned int hashValue;
  void * data;
} HashEntry;
# 61 "../../../libs/minzip/Hash.h"
typedef struct HashTable {
  int tableSize;
  int numEntries;
  int numDeadEntries;
  HashEntry * pEntries;
  HashFreeFunc freeFunc;
} HashTable;
# 77 "../../../libs/minzip/Hash.h"
HashTable * mzHashTableCreate(size_t initialSize, HashFreeFunc freeFunc);







size_t mzHashSize(size_t size);




void mzHashTableClear(HashTable * pHashTable);




void mzHashTableFree(HashTable * pHashTable);




extern inline __attribute((__gnu_inline__)) int mzHashTableNumEntries(HashTable * pHashTable) {
  return pHashTable->numEntries;
}




extern inline __attribute((__gnu_inline__)) int mzHashTableMemUsage(HashTable * pHashTable) {
  return sizeof(HashTable) + pHashTable->tableSize * sizeof(HashEntry);
}
# 120 "../../../libs/minzip/Hash.h"
void * mzHashTableLookup(HashTable * pHashTable, unsigned int itemHash, void * item,
                         HashCompareFunc cmpFunc, _Bool doAdd);





_Bool mzHashTableRemove(HashTable * pHashTable, unsigned int hash, void * item);






int mzHashForeach(HashTable * pHashTable, HashForeachFunc func, void * arg);
# 147 "../../../libs/minzip/Hash.h"
typedef struct HashIter {
  void * data;
  HashTable * pHashTable;
  int idx;
} HashIter;
extern inline __attribute((__gnu_inline__)) void mzHashIterNext(HashIter * pIter) {
  int i = pIter->idx + 1;
  int lim = pIter->pHashTable->tableSize;

  for ( ; i < lim; i++) {
    void * data = pIter->pHashTable->pEntries[i].data;

    if (data != ((void *)0) && data != ((void*) 0xcbcacccd)) {
      break;
    }
  }

  pIter->idx = i;
}
extern inline __attribute((__gnu_inline__)) void mzHashIterBegin(HashTable * pHashTable, HashIter * pIter) {
  pIter->pHashTable = pHashTable;
  pIter->idx = -1;
  mzHashIterNext(pIter);
}
extern inline __attribute((__gnu_inline__)) _Bool mzHashIterDone(HashIter * pIter) {
  return (pIter->idx >= pIter->pHashTable->tableSize);
}
extern inline __attribute((__gnu_inline__)) void * mzHashIterData(HashIter * pIter) {
  ((pIter->idx >= 0 && pIter->idx < pIter->pHashTable->tableSize) ? (void) (0) : __assert_fail ("pIter->idx >= 0 && pIter->idx < pIter->pHashTable->tableSize", "../../../libs/minzip/Hash.h", 175, __PRETTY_FUNCTION__));
  return pIter->pHashTable->pEntries[pIter->idx].data;
}
# 186 "../../../libs/minzip/Hash.h"
typedef unsigned int (*HashCalcFunc)(const void * item);
void mzHashTableProbeCount(HashTable * pHashTable, HashCalcFunc calcFunc,
                           HashCompareFunc cmpFunc);
# 15 "../../../libs/minzip/Zip.h" 2
# 1 "../../../libs/minzip/SysUtil.h" 1
# 16 "../../../libs/minzip/SysUtil.h"
typedef struct MemMapping {
  void * addr;
  size_t length;

  void * baseAddr;
  size_t baseLength;
} MemMapping;


extern inline __attribute((__gnu_inline__)) void sysCopyMap(MemMapping * dst, const MemMapping * src) {
  *dst = *src;
}
# 38 "../../../libs/minzip/SysUtil.h"
int sysLoadFileInShmem(int fd, MemMapping * pMap);







int sysMapFileInShmem(int fd, MemMapping * pMap);




int sysMapFileSegmentInShmem(int fd, off_t start, long length,
                             MemMapping * pMap);






void sysReleaseShmem(MemMapping * pMap);
# 16 "../../../libs/minzip/Zip.h" 2
# 25 "../../../libs/minzip/Zip.h"
typedef struct ZipEntry {
  unsigned int fileNameLen;
  const char * fileName;
  long offset;
  long compLen;
  long uncompLen;
  int compression;
  long modTime;
  long crc32;
  int versionMadeBy;
  long externalFileAttributes;
} ZipEntry;




typedef struct ZipArchive {
  int fd;
  unsigned int numEntries;
  ZipEntry * pEntries;
  HashTable * pHash;
  MemMapping map;
} ZipArchive;





typedef struct {
  const char * str;
  size_t len;
} UnterminatedString;







int mzOpenZipArchive(const char * fileName, ZipArchive * pArchive);







void mzCloseZipArchive(ZipArchive * pArchive);





const ZipEntry * mzFindZipEntry(const ZipArchive * pArchive,
                                const char * entryName);




extern inline __attribute((__gnu_inline__)) unsigned int mzZipEntryCount(const ZipArchive * pArchive) {
  return pArchive->numEntries;
}




extern inline __attribute((__gnu_inline__)) const ZipEntry *
mzGetZipEntryAt(const ZipArchive * pArchive, unsigned int index) {
  if (index < pArchive->numEntries) {
    return pArchive->pEntries + index;
  }

  return ((void *)0);
}




extern inline __attribute((__gnu_inline__)) unsigned int
mzGetZipEntryIndex(const ZipArchive * pArchive, const ZipEntry * pEntry) {
  return pEntry - pArchive->pEntries;
}




extern inline __attribute((__gnu_inline__)) UnterminatedString mzGetZipEntryFileName(const ZipEntry * pEntry) {
  UnterminatedString ret;
  ret.str = pEntry->fileName;
  ret.len = pEntry->fileNameLen;
  return ret;
}
extern inline __attribute((__gnu_inline__)) long mzGetZipEntryOffset(const ZipEntry * pEntry) {
  return pEntry->offset;
}
extern inline __attribute((__gnu_inline__)) long mzGetZipEntryUncompLen(const ZipEntry * pEntry) {
  return pEntry->uncompLen;
}
extern inline __attribute((__gnu_inline__)) long mzGetZipEntryModTime(const ZipEntry * pEntry) {
  return pEntry->modTime;
}
extern inline __attribute((__gnu_inline__)) long mzGetZipEntryCrc32(const ZipEntry * pEntry) {
  return pEntry->crc32;
}
_Bool mzIsZipEntrySymlink(const ZipEntry * pEntry);






typedef _Bool (*ProcessZipEntryContentsFunction)(const unsigned char * data,
    int dataLen, void * cookie);
# 149 "../../../libs/minzip/Zip.h"
_Bool mzProcessZipEntryContents(const ZipArchive * pArchive,
                               const ZipEntry * pEntry, ProcessZipEntryContentsFunction processFunction,
                               void * cookie);




_Bool mzReadZipEntry(const ZipArchive * pArchive, const ZipEntry * pEntry,
                    char * buf, int bufLen);





_Bool mzIsZipEntryIntact(const ZipArchive * pArchive, const ZipEntry * pEntry);




_Bool mzExtractZipEntryToFile(const ZipArchive * pArchive,
                             const ZipEntry * pEntry, int fd);
# 200 "../../../libs/minzip/Zip.h"
enum { MZ_EXTRACT_FILES_ONLY = 1, MZ_EXTRACT_DRY_RUN = 2 };
_Bool mzExtractRecursive(const ZipArchive * pArchive,
                        const char * zipDir, const char * targetDir,
                        int flags, const struct utimbuf * timestamp,
                        void (*callback)(const char * fn, void *), void * cookie);
# 19 "../../../libs/minzip/Zip.c" 2
# 1 "../../../libs/minzip/Bits.h" 1
# 12 "../../../libs/minzip/Bits.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4





# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 33 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 2 3 4
# 44 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4


extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





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






# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\xlocale.h" 1 3 4
# 27 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 164 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
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





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 427 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 445 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 489 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 517 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 534 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 557 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 644 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\string.h" 3 4

# 13 "../../../libs/minzip/Bits.h" 2




extern inline __attribute((__gnu_inline__)) unsigned char get1(unsigned const char * pSrc) {
  return *pSrc;
}




extern inline __attribute((__gnu_inline__)) unsigned short get2BE(unsigned char const * pSrc) {
  unsigned short result;
  result = *pSrc++ << 8;
  result |= *pSrc++;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned int get4BE(unsigned char const * pSrc) {
  unsigned int result;
  result = *pSrc++ << 24;
  result |= *pSrc++ << 16;
  result |= *pSrc++ << 8;
  result |= *pSrc++;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned long long get8BE(unsigned char const * pSrc) {
  unsigned long long result;
  result = (unsigned long long) * pSrc++ << 56;
  result |= (unsigned long long) * pSrc++ << 48;
  result |= (unsigned long long) * pSrc++ << 40;
  result |= (unsigned long long) * pSrc++ << 32;
  result |= (unsigned long long) * pSrc++ << 24;
  result |= (unsigned long long) * pSrc++ << 16;
  result |= (unsigned long long) * pSrc++ << 8;
  result |= (unsigned long long) * pSrc++;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned short get2LE(unsigned char const * pSrc) {
  unsigned short result;
  result = *pSrc++;
  result |= *pSrc++ << 8;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned int get4LE(unsigned char const * pSrc) {
  unsigned int result;
  result = *pSrc++;
  result |= *pSrc++ << 8;
  result |= *pSrc++ << 16;
  result |= *pSrc++ << 24;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned long long get8LE(unsigned char const * pSrc) {
  unsigned long long result;
  result = (unsigned long long) * pSrc++;
  result |= (unsigned long long) * pSrc++ << 8;
  result |= (unsigned long long) * pSrc++ << 16;
  result |= (unsigned long long) * pSrc++ << 24;
  result |= (unsigned long long) * pSrc++ << 32;
  result |= (unsigned long long) * pSrc++ << 40;
  result |= (unsigned long long) * pSrc++ << 48;
  result |= (unsigned long long) * pSrc++ << 56;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned char read1(unsigned const char ** ppSrc) {
  return *(*ppSrc)++;
}




extern inline __attribute((__gnu_inline__)) unsigned short read2BE(unsigned char const ** ppSrc) {
  unsigned short result;
  result = *(*ppSrc)++ << 8;
  result |= *(*ppSrc)++;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned int read4BE(unsigned char const ** ppSrc) {
  unsigned int result;
  result = *(*ppSrc)++ << 24;
  result |= *(*ppSrc)++ << 16;
  result |= *(*ppSrc)++ << 8;
  result |= *(*ppSrc)++;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned long long read8BE(unsigned char const ** ppSrc) {
  unsigned long long result;
  result = (unsigned long long) * (*ppSrc)++ << 56;
  result |= (unsigned long long) * (*ppSrc)++ << 48;
  result |= (unsigned long long) * (*ppSrc)++ << 40;
  result |= (unsigned long long) * (*ppSrc)++ << 32;
  result |= (unsigned long long) * (*ppSrc)++ << 24;
  result |= (unsigned long long) * (*ppSrc)++ << 16;
  result |= (unsigned long long) * (*ppSrc)++ << 8;
  result |= (unsigned long long) * (*ppSrc)++;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned short read2LE(unsigned char const ** ppSrc) {
  unsigned short result;
  result = *(*ppSrc)++;
  result |= *(*ppSrc)++ << 8;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned int read4LE(unsigned char const ** ppSrc) {
  unsigned int result;
  result = *(*ppSrc)++;
  result |= *(*ppSrc)++ << 8;
  result |= *(*ppSrc)++ << 16;
  result |= *(*ppSrc)++ << 24;
  return result;
}




extern inline __attribute((__gnu_inline__)) unsigned long long read8LE(unsigned char const ** ppSrc) {
  unsigned long long result;
  result = (unsigned long long) * (*ppSrc)++;
  result |= (unsigned long long) * (*ppSrc)++ << 8;
  result |= (unsigned long long) * (*ppSrc)++ << 16;
  result |= (unsigned long long) * (*ppSrc)++ << 24;
  result |= (unsigned long long) * (*ppSrc)++ << 32;
  result |= (unsigned long long) * (*ppSrc)++ << 40;
  result |= (unsigned long long) * (*ppSrc)++ << 48;
  result |= (unsigned long long) * (*ppSrc)++ << 56;
  return result;
}




extern inline __attribute((__gnu_inline__)) void skipUtf8String(unsigned char const ** ppSrc) {
  unsigned int length = read4BE(ppSrc);
  (*ppSrc) += length;
}






extern inline __attribute((__gnu_inline__)) int readUtf8String(unsigned char const ** ppSrc, char * buf, size_t bufLen) {
  unsigned int length = read4BE(ppSrc);
  size_t copyLen = (length < bufLen) ? length : bufLen - 1;
  memcpy(buf, *ppSrc, copyLen);
  buf[copyLen] = '\0';
  (*ppSrc) += length;
  return length;
}







extern inline __attribute((__gnu_inline__)) char * readNewUtf8String(unsigned char const ** ppSrc, size_t * pLength) {
  unsigned int length = read4BE(ppSrc);
  char * buf;
  buf = (char *) malloc(length + 1);
  memcpy(buf, *ppSrc, length);
  buf[length] = '\0';
  (*ppSrc) += length;
  *pLength = length;
  return buf;
}





extern inline __attribute((__gnu_inline__)) void set1(unsigned char * buf, unsigned char val) {
  *buf = (unsigned char)(val);
}




extern inline __attribute((__gnu_inline__)) void set2BE(unsigned char * buf, unsigned short val) {
  *buf++ = (unsigned char)(val >> 8);
  *buf = (unsigned char)(val);
}




extern inline __attribute((__gnu_inline__)) void set4BE(unsigned char * buf, unsigned int val) {
  *buf++ = (unsigned char)(val >> 24);
  *buf++ = (unsigned char)(val >> 16);
  *buf++ = (unsigned char)(val >> 8);
  *buf = (unsigned char)(val);
}




extern inline __attribute((__gnu_inline__)) void set8BE(unsigned char * buf, unsigned long long val) {
  *buf++ = (unsigned char)(val >> 56);
  *buf++ = (unsigned char)(val >> 48);
  *buf++ = (unsigned char)(val >> 40);
  *buf++ = (unsigned char)(val >> 32);
  *buf++ = (unsigned char)(val >> 24);
  *buf++ = (unsigned char)(val >> 16);
  *buf++ = (unsigned char)(val >> 8);
  *buf = (unsigned char)(val);
}




extern inline __attribute((__gnu_inline__)) void set2LE(unsigned char * buf, unsigned short val) {
  *buf++ = (unsigned char)(val);
  *buf = (unsigned char)(val >> 8);
}




extern inline __attribute((__gnu_inline__)) void set4LE(unsigned char * buf, unsigned int val) {
  *buf++ = (unsigned char)(val);
  *buf++ = (unsigned char)(val >> 8);
  *buf++ = (unsigned char)(val >> 16);
  *buf = (unsigned char)(val >> 24);
}




extern inline __attribute((__gnu_inline__)) void set8LE(unsigned char * buf, unsigned long long val) {
  *buf++ = (unsigned char)(val);
  *buf++ = (unsigned char)(val >> 8);
  *buf++ = (unsigned char)(val >> 16);
  *buf++ = (unsigned char)(val >> 24);
  *buf++ = (unsigned char)(val >> 32);
  *buf++ = (unsigned char)(val >> 40);
  *buf++ = (unsigned char)(val >> 48);
  *buf = (unsigned char)(val >> 56);
}




extern inline __attribute((__gnu_inline__)) void setUtf8String(unsigned char * buf, const unsigned char * str) {
  unsigned int strLen = strlen((const char *)str);
  set4BE(buf, strLen);
  memcpy(buf + sizeof(unsigned int), str, strLen);
}
# 20 "../../../libs/minzip/Zip.c" 2
# 1 "../../../libs/minzip/Log.h" 1
# 17 "../../../libs/minzip/Log.h"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 1 3 4
# 29 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4




# 1 "d:\\devtools\\linaro\\lib\\gcc\\arm-linux-gnueabihf\\4.8.3\\include\\stddef.h" 1 3 4
# 34 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4
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




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 209 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 227 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 266 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 306 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 319 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








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





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 412 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 443 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 463 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 638 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


# 665 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 737 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 773 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 792 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 824 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sys_errlist.h" 1 3 4
# 26 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\bits\\sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 854 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 873 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 913 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 943 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdio.h" 3 4

# 18 "../../../libs/minzip/Log.h" 2
# 21 "../../../libs/minzip/Zip.c" 2
# 1 "../../../libs/minzip/DirUtil.h" 1
# 36 "../../../libs/minzip/DirUtil.h"
int dirCreateHierarchy(const char * path, int mode,
                       const struct utimbuf * timestamp, _Bool stripFileName);



int dirUnlinkHierarchy(const char * path);






int dirSetHierarchyPermissions(const char * path,
                               int uid, int gid, int dirMode, int fileMode);
# 22 "../../../libs/minzip/Zip.c" 2


# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\assert.h" 1 3 4
# 64 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 25 "../../../libs/minzip/Zip.c" 2






enum {
  CENSIG = 0x02014b50,
  CENHDR = 46,

  CENVEM = 4,
  CENVER = 6,
  CENFLG = 8,
  CENHOW = 10,
  CENTIM = 12,
  CENCRC = 16,
  CENSIZ = 20,
  CENLEN = 24,
  CENNAM = 28,
  CENEXT = 30,
  CENCOM = 32,
  CENDSK = 34,
  CENATT = 36,
  CENATX = 38,
  CENOFF = 42,

  ENDSIG = 0x06054b50,
  ENDHDR = 22,

  ENDSUB = 8,
  ENDTOT = 10,
  ENDSIZ = 12,
  ENDOFF = 16,
  ENDCOM = 20,

  EXTSIG = 0x08074b50,
  EXTHDR = 16,

  EXTCRC = 4,
  EXTSIZ = 8,
  EXTLEN = 12,

  LOCSIG = 0x04034b50,
  LOCHDR = 30,

  LOCVER = 4,
  LOCFLG = 6,
  LOCHOW = 8,
  LOCTIM = 10,
  LOCCRC = 14,
  LOCSIZ = 18,
  LOCLEN = 22,
  LOCNAM = 26,
  LOCEXT = 28,

  STORED = 0,
  DEFLATED = 8,

  CENVEM_UNIX = 3 << 8,
};
# 103 "../../../libs/minzip/Zip.c"
static int hashcmpZipEntry(const void * ventry1, const void * ventry2) {
  const ZipEntry * entry1 = (const ZipEntry *) ventry1;
  const ZipEntry * entry2 = (const ZipEntry *) ventry2;

  if (entry1->fileNameLen != entry2->fileNameLen) {
    return entry1->fileNameLen - entry2->fileNameLen;
  }

  return memcmp(entry1->fileName, entry2->fileName, entry1->fileNameLen);
}






static int hashcmpZipName(const void * ventry, const void * vname) {
  const ZipEntry * entry = (const ZipEntry *) ventry;
  const char * name = (const char *) vname;
  unsigned int nameLen = strlen(name);

  if (entry->fileNameLen != nameLen) {
    return entry->fileNameLen - nameLen;
  }

  return memcmp(entry->fileName, name, nameLen);
}







static unsigned int computeHash(const char * name, int nameLen) {
  unsigned int hash = 2;

  while (nameLen--) {
    hash = hash * 31 + *name++;
  }

  return hash;
}

static void addEntryToHashTable(HashTable * pHash, ZipEntry * pEntry) {
  unsigned int itemHash = computeHash(pEntry->fileName, pEntry->fileNameLen);
  const ZipEntry * found;
  found = (const ZipEntry *)mzHashTableLookup(pHash,
          itemHash, pEntry, hashcmpZipEntry, 1);

  if (found != pEntry) {
    ((void)printf("minzip" ": " "WARNING: duplicate entry '%.*s' in Zip\n", found->fileNameLen, found->fileName))
                                             ;

  }
}

static int validFilename(const char * fileName, unsigned int fileNameLen) {

  if (fileNameLen >= 4096) {
    ((void)printf("minzip" ": " "Filename too long (%d chatacters)\n", fileNameLen));
    return 0;
  }


  unsigned int i;

  for (i = 0; i < fileNameLen; ++i) {
    if (fileName[i] < 32 || fileName[i] >= 127) {
      ((void)printf("minzip" ": " "Filename contains invalid character '\%03o'\n", fileName[i]));
      return 0;
    }
  }

  return 1;
}
# 187 "../../../libs/minzip/Zip.c"
static _Bool parseZipArchive(ZipArchive * pArchive, const MemMapping * pMap) {
  _Bool result = 0;
  const unsigned char * ptr;
  unsigned int i, numEntries, cdOffset;
  unsigned int val;





  val = get4LE(pMap->addr);

  if (val == ENDSIG) {
    ((void)printf("minzip" ": " "Found Zip archive, but it looks empty\n"));
    goto bail;
  }
  else if (val != LOCSIG) {
    ((void)0);
    goto bail;
  }





  ptr = ((const unsigned char *) pMap->addr) + pMap->length - ENDHDR;

  while (ptr >= (const unsigned char *) pMap->addr) {
    if (*ptr == (ENDSIG & 0xff) && get4LE(ptr) == ENDSIG) {
      break;
    }

    ptr--;
  }

  if (ptr < (const unsigned char *) pMap->addr) {
    ((void)printf("minzip" ": " "Could not find end-of-central-directory in Zip\n"));
    goto bail;
  }






  numEntries = get2LE(ptr + ENDSUB);
  cdOffset = get4LE(ptr + ENDOFF);
  ((void)0);

  if (numEntries == 0 || cdOffset >= pMap->length) {
    ((void)printf("minzip" ": " "Invalid entries=%d offset=%d (len=%zd)\n", numEntries, cdOffset, pMap->length))
                                            ;
    goto bail;
  }




  pArchive->numEntries = numEntries;
  pArchive->pEntries = (ZipEntry *) calloc(numEntries, sizeof(ZipEntry));
  pArchive->pHash = mzHashTableCreate(mzHashSize(numEntries), ((void *)0));

  if (pArchive->pEntries == ((void *)0) || pArchive->pHash == ((void *)0)) {
    goto bail;
  }

  ptr = ((const unsigned char *) pMap->addr) + cdOffset;

  for (i = 0; i < numEntries; i++) {
    ZipEntry * pEntry;
    unsigned int fileNameLen, extraLen, commentLen, localHdrOffset;
    const unsigned char * localHdr;
    const char * fileName;

    if (ptr + CENHDR > (const unsigned char *)pMap->addr + pMap->length) {
      ((void)printf("minzip" ": " "Ran off the end (at %d)\n", i));
      goto bail;
    }

    if (get4LE(ptr) != CENSIG) {
      ((void)printf("minzip" ": " "Missed a central dir sig (at %d)\n", i));
      goto bail;
    }

    localHdrOffset = get4LE(ptr + CENOFF);
    fileNameLen = get2LE(ptr + CENNAM);
    extraLen = get2LE(ptr + CENEXT);
    commentLen = get2LE(ptr + CENCOM);
    fileName = (const char *)ptr + CENHDR;

    if (fileName + fileNameLen > (const char *)pMap->addr + pMap->length) {
      ((void)printf("minzip" ": " "Filename ran off the end (at %d)\n", i));
      goto bail;
    }

    if (!validFilename(fileName, fileNameLen)) {
      ((void)printf("minzip" ": " "Invalid filename (at %d)\n", i));
      goto bail;
    }





    if (i > 0) {
      int low, high;
      low = 0;
      high = i - 1;

      while (low <= high) {
        int mid;
        int diff;
        int diffLen;
        mid = low + ((high - low) / 2);

        if (pArchive->pEntries[mid].fileNameLen < fileNameLen) {
          diffLen = pArchive->pEntries[mid].fileNameLen;
        }
        else {
          diffLen = fileNameLen;
        }

        diff = strncmp(pArchive->pEntries[mid].fileName, fileName,
                       diffLen);

        if (diff == 0) {
          diff = pArchive->pEntries[mid].fileNameLen - fileNameLen;
        }

        if (diff < 0) {
          low = mid + 1;
        }
        else if (diff > 0) {
          high = mid - 1;
        }
        else {
          high = mid;
          break;
        }
      }

      unsigned int target = high + 1;
      ((target <= i) ? (void) (0) : __assert_fail ("target <= i", "../../../libs/minzip/Zip.c", 329, __PRETTY_FUNCTION__));

      if (target != i) {



        memmove(pArchive->pEntries + target + 1,
                pArchive->pEntries + target,
                (i - target) * sizeof(ZipEntry));
      }

      pEntry = &pArchive->pEntries[target];
    }
    else {
      pEntry = &pArchive->pEntries[0];
    }






    pEntry->fileNameLen = fileNameLen;
    pEntry->fileName = fileName;
    pEntry->compLen = get4LE(ptr + CENSIZ);
    pEntry->uncompLen = get4LE(ptr + CENLEN);
    pEntry->compression = get2LE(ptr + CENHOW);
    pEntry->modTime = get4LE(ptr + CENTIM);
    pEntry->crc32 = get4LE(ptr + CENCRC);


    pEntry->versionMadeBy = get2LE(ptr + CENVEM);

    if ((pEntry->versionMadeBy & 0xff00) != 0 &&
        (pEntry->versionMadeBy & 0xff00) != CENVEM_UNIX) {
      ((void)printf("minzip" ": " "Incompatible \"version made by\": 0x%02x (at %d)\n", pEntry->versionMadeBy >> 8, i))
                                         ;
      goto bail;
    }

    pEntry->externalFileAttributes = get4LE(ptr + CENATX);



    if (!({ int OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; typeof((uintptr_t)pMap->addr) OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a = ((uintptr_t)pMap->addr); typeof((uintptr_t)localHdrOffset) OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b = ((uintptr_t)localHdrOffset); typeof((uintptr_t *)&localHdr) OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p = ((uintptr_t *)&localHdr); if (({ ((((((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0))) || (((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0))) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0)))) && (sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) == sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))))) ? (void) (0) : __assert_fail ("((((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0))) || (((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0))) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0)))) && (sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) == sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))))",
 "../../../libs/minzip/Zip.c"
# 373 "../../../libs/minzip/Zip.c" 3 4
         ,
 374
# 373 "../../../libs/minzip/Zip.c" 3 4
         , __PRETTY_FUNCTION__)); 1; })) { if (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) { OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = ({ int OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 1; if (((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0) && ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) { if ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))) OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; } else if (!((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0) && !((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) { if ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) < (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) - (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))) OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; } if (OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok && (OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) { *((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)*)(OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) = (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) + (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b); } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok; }); } else { OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = ({ int OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; if ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b) <= (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 0))) - (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))) { if ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) { *((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)*)(OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) = (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) + (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b); } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 1; } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok; }); } } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok; })
                                            ) {
      ((void)printf("minzip" ": " "Integer overflow adding in parseZipArchive\n"));
      goto bail;
    }

    if ((uintptr_t)localHdr + LOCHDR >
        (uintptr_t)pMap->addr + pMap->length) {
      ((void)printf("minzip" ": " "Bad offset to local header: %d (at %d)\n", localHdrOffset, i));
      goto bail;
    }

    if (get4LE(localHdr) != LOCSIG) {
      ((void)printf("minzip" ": " "Missed a local header sig (at %d)\n", i));
      goto bail;
    }

    pEntry->offset = localHdrOffset + LOCHDR
                     + get2LE(localHdr + LOCNAM) + get2LE(localHdr + LOCEXT);

    if (!({ int OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; typeof(pEntry->offset) OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a = (pEntry->offset); typeof(pEntry->compLen) OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b = (pEntry->compLen); typeof(((void *)0)) OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p = (((void *)0)); if (({ ((((((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0))) || (((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0))) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0)))) && (sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) == sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))))) ? (void) (0) : __assert_fail ("((((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0))) || (((((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0))) && (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b)) * 8) - 1)))) - 1)) > ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))0)))) && (sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) == sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))))", "../../../libs/minzip/Zip.c", 393, __PRETTY_FUNCTION__)); 1; })) { if (((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) <= ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) { OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = ({ int OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 1; if (((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0) && ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) { if ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))) OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; } else if (!((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0) && !((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) > (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))0)) { if ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) < (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(-((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 1 << ((sizeof(typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) * 8) - 1)))) - 1)) - (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b))) OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; } if (OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok && (OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) { *((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)*)(OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) = (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) + (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b); } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok; }); } else { OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = ({ int OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 0; if ((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b) <= (typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))(~((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)) 0))) - (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a))) { if ((OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) { *((typeof(OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a)*)(OPAQUE_SAFE_IOP_PREFIX_VARIABLE_p)) = (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__a) + (OPAQUE_SAFE_IOP_PREFIX_VARIABLE__b); } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok = 1; } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok; }); } } OPAQUE_SAFE_IOP_PREFIX_VARIABLE_ok; })) {
      ((void)printf("minzip" ": " "Integer overflow adding in parseZipArchive\n"));
      goto bail;
    }

    if ((size_t)pEntry->offset + pEntry->compLen > pMap->length) {
      ((void)printf("minzip" ": " "Data ran off the end (at %d)\n", i));
      goto bail;
    }
# 411 "../../../libs/minzip/Zip.c"
    ptr += CENHDR + fileNameLen + extraLen + commentLen;
  }







  for (i = 0; i < numEntries; i++) {


    addEntryToHashTable(pArchive->pHash, &pArchive->pEntries[i]);
  }


  result = 1;
bail:

  if (!result) {
    mzHashTableFree(pArchive->pHash);
    pArchive->pHash = ((void *)0);
  }

  return result;
}
# 452 "../../../libs/minzip/Zip.c"
int mzOpenZipArchive(const char * fileName, ZipArchive * pArchive) {
  MemMapping map;
  int err;
  ((void)0);
  map.addr = ((void *)0);
  memset(pArchive, 0, sizeof(*pArchive));
  pArchive->fd = open(fileName, 00, 0);

  if (pArchive->fd < 0) {
    err = (*__errno_location ()) ? (*__errno_location ()) : -1;
    ((void)0);
    goto bail;
  }

  if (sysMapFileInShmem(pArchive->fd, &map) != 0) {
    err = -1;
    ((void)printf("minzip" ": " "Map of '%s' failed\n", fileName));
    goto bail;
  }

  if (map.length < ENDHDR) {
    err = -1;
    ((void)0);
    goto bail;
  }

  if (!parseZipArchive(pArchive, &map)) {
    err = -1;
    ((void)0);
    goto bail;
  }

  err = 0;
  sysCopyMap(&pArchive->map, &map);
  map.addr = ((void *)0);
bail:

  if (err != 0) {
    mzCloseZipArchive(pArchive);
  }

  if (map.addr != ((void *)0)) {
    sysReleaseShmem(&map);
  }

  return err;
}






void mzCloseZipArchive(ZipArchive * pArchive) {
  ((void)0);

  if (pArchive->fd >= 0) {
    close(pArchive->fd);
  }

  if (pArchive->map.addr != ((void *)0)) {
    sysReleaseShmem(&pArchive->map);
  }

  free(pArchive->pEntries);
  mzHashTableFree(pArchive->pHash);
  pArchive->fd = -1;
  pArchive->pHash = ((void *)0);
  pArchive->pEntries = ((void *)0);
}






const ZipEntry * mzFindZipEntry(const ZipArchive * pArchive,
                                const char * entryName) {
  unsigned int itemHash = computeHash(entryName, strlen(entryName));
  return (const ZipEntry *)mzHashTableLookup(pArchive->pHash,
         itemHash, (char *) entryName, hashcmpZipName, 0);
}




_Bool mzIsZipEntrySymlink(const ZipEntry * pEntry) {
  if ((pEntry->versionMadeBy & 0xff00) == CENVEM_UNIX) {
    return ((((pEntry->externalFileAttributes >> 16)) & 0170000) == (0120000));
  }

  return 0;
}



static _Bool processStoredEntry(const ZipArchive * pArchive,
                               const ZipEntry * pEntry, ProcessZipEntryContentsFunction processFunction,
                               void * cookie) {
  size_t bytesLeft = pEntry->compLen;

  while (bytesLeft > 0) {
    unsigned char buf[32 * 1024];
    ssize_t n;
    size_t count;
    _Bool ret;
    count = bytesLeft;

    if (count > sizeof(buf)) {
      count = sizeof(buf);
    }

    n = read(pArchive->fd, buf, count);

    if (n < 0 || (size_t)n != count) {
      ((void)printf("minzip" ": " "Can't read %zu bytes from zip file: %d\n", count, (int) n));
      return 0;
    }

    ret = processFunction(buf, n, cookie);

    if (!ret) {
      return 0;
    }

    bytesLeft -= count;
  }

  return 1;
}

static _Bool processDeflatedEntry(const ZipArchive * pArchive,
                                 const ZipEntry * pEntry, ProcessZipEntryContentsFunction processFunction,
                                 void * cookie) {
  long result = -1;
  unsigned char readBuf[32 * 1024];
  unsigned char procBuf[32 * 1024];
  z_stream zstream;
  int zerr;
  long compRemaining;
  compRemaining = pEntry->compLen;



  memset(&zstream, 0, sizeof(zstream));
  zstream.zalloc = 0;
  zstream.zfree = 0;
  zstream.opaque = 0;
  zstream.next_in = ((void *)0);
  zstream.avail_in = 0;
  zstream.next_out = (Bytef *) procBuf;
  zstream.avail_out = sizeof(procBuf);
  zstream.data_type = 2;




  zerr = inflateInit2_((&zstream), (-15), "1.2.8", (int)sizeof(z_stream));

  if (zerr != 0) {
    if (zerr == (-6)) {
      ((void)printf("minzip" ": " "Installed zlib is not compatible with linked version (%s)\n", "1.2.8"))
                        ;
    }
    else {
      ((void)printf("minzip" ": " "Call to inflateInit2 failed (zerr=%d)\n", zerr));
    }

    goto bail;
  }




  do {

    if (zstream.avail_in == 0) {
      long getSize = (compRemaining > (long)sizeof(readBuf)) ?
                     (long)sizeof(readBuf) : compRemaining;
      ((void)0)
                                   ;
      int cc = read(pArchive->fd, readBuf, getSize);

      if (cc != (int) getSize) {
        ((void)printf("minzip" ": " "inflate read failed (%d vs %ld)\n", cc, getSize));
        goto z_bail;
      }

      compRemaining -= getSize;
      zstream.next_in = readBuf;
      zstream.avail_in = getSize;
    }


    zerr = inflate(&zstream, 0);

    if (zerr != 0 && zerr != 1) {
      ((void)printf("minzip" ": " "zlib inflate call failed (zerr=%d)\n", zerr));
      goto z_bail;
    }


    if (zstream.avail_out == 0 ||
        (zerr == 1 && zstream.avail_out != sizeof(procBuf))) {
      long procSize = zstream.next_out - procBuf;
      ((void)0);
      _Bool ret = processFunction(procBuf, procSize, cookie);

      if (!ret) {
        ((void)printf("minzip" ": " "Process function elected to fail (in inflate)\n"));
        goto z_bail;
      }

      zstream.next_out = procBuf;
      zstream.avail_out = sizeof(procBuf);
    }
  }
  while (zerr == 0);

  ((zerr == 1) ? (void) (0) : __assert_fail ("zerr == 1", "../../../libs/minzip/Zip.c", 671, __PRETTY_FUNCTION__));

  result = zstream.total_out;
z_bail:
  inflateEnd(&zstream);
bail:

  if (result != pEntry->uncompLen) {
    if (result != -1)
      ((void)printf("minzip" ": " "Size mismatch on inflated file (%ld vs %ld)\n", result, pEntry->uncompLen))
                                     ;

    return 0;
  }

  return 1;
}
# 699 "../../../libs/minzip/Zip.c"
_Bool mzProcessZipEntryContents(const ZipArchive * pArchive,
                               const ZipEntry * pEntry, ProcessZipEntryContentsFunction processFunction,
                               void * cookie) {
  _Bool ret = 0;
  off_t oldOff;

  oldOff = lseek(pArchive->fd, 0, 1);

  lseek(pArchive->fd, pEntry->offset, 0);

  switch (pEntry->compression) {
    case STORED:
      ret = processStoredEntry(pArchive, pEntry, processFunction, cookie);
      break;

    case DEFLATED:
      ret = processDeflatedEntry(pArchive, pEntry, processFunction, cookie);
      break;

    default:
      ((void)printf("minzip" ": " "Unsupported compression type %d for entry '%s'\n", pEntry->compression, pEntry->fileName))
                                                 ;
      break;
  }


  lseek(pArchive->fd, oldOff, 0);
  return ret;
}

static _Bool crcProcessFunction(const unsigned char * data, int dataLen,
                               void * crc) {
  *(unsigned long *)crc = crc32(*(unsigned long *)crc, data, dataLen);
  return 1;
}





_Bool mzIsZipEntryIntact(const ZipArchive * pArchive, const ZipEntry * pEntry) {
  unsigned long crc;
  _Bool ret;
  crc = crc32(0L, 0, 0);
  ret = mzProcessZipEntryContents(pArchive, pEntry, crcProcessFunction,
                                  (void *)&crc);

  if (!ret) {
    ((void)printf("minzip" ": " "Can't calculate CRC for entry\n"));
    return 0;
  }

  if (crc != (unsigned long)pEntry->crc32) {
    ((void)printf("minzip" ": " "CRC for entry %.*s (0x%08lx) != expected (0x%08lx)\n", pEntry->fileNameLen, pEntry->fileName, crc, pEntry->crc32))
                                                                   ;
    return 0;
  }

  return 1;
}

typedef struct {
  char * buf;
  int bufLen;
} CopyProcessArgs;

static _Bool copyProcessFunction(const unsigned char * data, int dataLen,
                                void * cookie) {
  CopyProcessArgs * args = (CopyProcessArgs *)cookie;

  if (dataLen <= args->bufLen) {
    memcpy(args->buf, data, dataLen);
    args->buf += dataLen;
    args->bufLen -= dataLen;
    return 1;
  }

  return 0;
}




_Bool mzReadZipEntry(const ZipArchive * pArchive, const ZipEntry * pEntry,
                    char * buf, int bufLen) {
  CopyProcessArgs args;
  _Bool ret;
  args.buf = buf;
  args.bufLen = bufLen;
  ret = mzProcessZipEntryContents(pArchive, pEntry, copyProcessFunction,
                                  (void *)&args);

  if (!ret) {
    ((void)printf("minzip" ": " "Can't extract entry to buffer.\n"));
    return 0;
  }

  return 1;
}

static _Bool writeProcessFunction(const unsigned char * data, int dataLen,
                                 void * fd) {
  ssize_t n = write((int)(intptr_t)fd, data, dataLen);

  if (n != dataLen) {
    ((void)printf("minzip" ": " "Can't write %d bytes (only %d) from zip file: %s\n", (int) dataLen, (int) n, strerror((*__errno_location ()))))
                                                 ;
    return 0;
  }

  return 1;
}




_Bool mzExtractZipEntryToFile(const ZipArchive * pArchive,
                             const ZipEntry * pEntry, int fd) {
  _Bool ret = mzProcessZipEntryContents(pArchive, pEntry, writeProcessFunction,
                                       (void *)(intptr_t)fd);

  if (!ret) {
    ((void)printf("minzip" ": " "Can't extract entry to file.\n"));
    return 0;
  }

  return 1;
}



typedef struct {
  const char * targetDir;
  const char * zipDir;
  char * buf;
  int targetDirLen;
  int zipDirLen;
  int bufLen;
} MzPathHelper;





static const char * targetEntryPath(MzPathHelper * helper, ZipEntry * pEntry) {
  int needLen;
  _Bool firstTime = (helper->buf == ((void *)0));


  needLen = helper->targetDirLen + 1 +
            pEntry->fileNameLen - helper->zipDirLen + 1;

  if (needLen > helper->bufLen) {
    char * newBuf;
    needLen *= 2;
    newBuf = (char *)realloc(helper->buf, needLen);

    if (newBuf == ((void *)0)) {
      return ((void *)0);
    }

    helper->buf = newBuf;
    helper->bufLen = needLen;
  }



  if (firstTime) {
    char * p = helper->buf;
    memcpy(p, helper->targetDir, helper->targetDirLen);
    p += helper->targetDirLen;

    if (p == helper->buf || p[-1] != '/') {
      helper->targetDirLen += 1;
      *p++ = '/';
    }
  }




  char * epath = helper->buf + helper->targetDirLen;
  memcpy(epath, pEntry->fileName + helper->zipDirLen,
         pEntry->fileNameLen - helper->zipDirLen);
  epath += pEntry->fileNameLen - helper->zipDirLen;
  *epath = '\0';
  return helper->buf;
}
# 908 "../../../libs/minzip/Zip.c"
_Bool mzExtractRecursive(const ZipArchive * pArchive,
                        const char * zipDir, const char * targetDir,
                        int flags, const struct utimbuf * timestamp,
                        void (*callback)(const char * fn, void *), void * cookie) {
  if (zipDir[0] == '/') {
    ((void)printf("minzip" ": " "mzExtractRecursive(): zipDir must be a relative path.\n"));
    return 0;
  }

  if (targetDir[0] != '/') {
    ((void)printf("minzip" ": " "mzExtractRecursive(): targetDir must be an absolute path.\n"));
    return 0;
  }

  unsigned int zipDirLen;
  char * zpath;
  zipDirLen = strlen(zipDir);
  zpath = (char *)malloc(zipDirLen + 2);

  if (zpath == ((void *)0)) {
    ((void)printf("minzip" ": " "Can't allocate %d bytes for zip path\n", zipDirLen + 2));
    return 0;
  }




  if (zipDirLen > 0) {





    memcpy(zpath, zipDir, zipDirLen);

    if (zpath[zipDirLen - 1] != '/') {
      zpath[zipDirLen++] = '/';
    }
  }

  zpath[zipDirLen] = '\0';


  MzPathHelper helper;
  helper.targetDir = targetDir;
  helper.targetDirLen = strlen(helper.targetDir);
  helper.zipDir = zpath;
  helper.zipDirLen = strlen(helper.zipDir);
  helper.buf = ((void *)0);
  helper.bufLen = 0;





  unsigned int i;
  _Bool seenMatch = 0;
  int ok = 1;

  for (i = 0; i < pArchive->numEntries; i++) {
    ZipEntry * pEntry = pArchive->pEntries + i;

    if (pEntry->fileNameLen < zipDirLen) {







      if (seenMatch) {



        break;
      }


      continue;
    }




    if (strncmp(pEntry->fileName, zpath, zipDirLen) != 0) {


      if (seenMatch) {



        break;
      }


      continue;
    }



    seenMatch = 1;


    const char * targetFile = targetEntryPath(&helper, pEntry);

    if (targetFile == ((void *)0)) {
      ((void)printf("minzip" ": " "Can't assemble target path for \"%.*s\"\n", pEntry->fileNameLen, pEntry->fileName))
                                                 ;
      ok = 0;
      break;
    }



    if (flags & MZ_EXTRACT_DRY_RUN) {
      if (callback != ((void *)0)) {
        callback(targetFile, cookie);
      }

      continue;
    }






    if (pEntry->fileName[pEntry->fileNameLen - 1] == '/') {
      if (!(flags & MZ_EXTRACT_FILES_ONLY)) {
        int ret = dirCreateHierarchy(
                    targetFile, 0755, timestamp, 0);

        if (ret != 0) {
          ((void)printf("minzip" ": " "Can't create containing directory for \"%s\": %s\n", targetFile, strerror((*__errno_location ()))))
                                           ;
          ok = 0;
          break;
        }

        ((void)printf("minzip" ": " "Extracted dir \"%s\"\n", targetFile));
      }
    }
    else {



      int ret = dirCreateHierarchy(
                  targetFile, 0755, timestamp, 1);

      if (ret != 0) {
        ((void)printf("minzip" ": " "Can't create containing directory for \"%s\": %s\n", targetFile, strerror((*__errno_location ()))))
                                         ;
        ok = 0;
        break;
      }




      if (!(flags & MZ_EXTRACT_FILES_ONLY) && mzIsZipEntrySymlink(pEntry)) {




        if (pEntry->uncompLen == 0) {
          ((void)printf("minzip" ": " "Symlink entry \"%s\" has no target\n", targetFile))
                          ;
          ok = 0;
          break;
        }

        char * linkTarget = malloc(pEntry->uncompLen + 1);

        if (linkTarget == ((void *)0)) {
          ok = 0;
          break;
        }

        ok = mzReadZipEntry(pArchive, pEntry, linkTarget,
                            pEntry->uncompLen);

        if (!ok) {
          ((void)printf("minzip" ": " "Can't read symlink target for \"%s\"\n", targetFile))
                          ;
          free(linkTarget);
          break;
        }

        linkTarget[pEntry->uncompLen] = '\0';


        ret = symlink(linkTarget, targetFile);

        if (ret != 0) {
          ((void)printf("minzip" ": " "Can't symlink \"%s\" to \"%s\": %s\n", targetFile, linkTarget, strerror((*__errno_location ()))))
                                                       ;
          free(linkTarget);
          ok = 0;
          break;
        }

        ((void)printf("minzip" ": " "Extracted symlink \"%s\" -> \"%s\"\n", targetFile, linkTarget))
                                    ;
        free(linkTarget);
      }
      else {



        int fd = creat(targetFile, 0644);

        if (fd < 0) {
          ((void)printf("minzip" ": " "Can't create target file \"%s\": %s\n", targetFile, strerror((*__errno_location ()))))
                                           ;
          ok = 0;
          break;
        }

        _Bool ok = mzExtractZipEntryToFile(pArchive, pEntry, fd);
        close(fd);

        if (!ok) {
          ((void)printf("minzip" ": " "Error extracting \"%s\"\n", targetFile));
          ok = 0;
          break;
        }

        if (timestamp != ((void *)0) && utime(targetFile, timestamp)) {
          ((void)printf("minzip" ": " "Error touching \"%s\"\n", targetFile));
          ok = 0;
          break;
        }

        ((void)printf("minzip" ": " "Extracted file \"%s\"\n", targetFile));
      }
    }

    if (callback != ((void *)0)) {
      callback(targetFile, cookie);
    }
  }

  free(helper.buf);
  free(zpath);
  return ok;
}
