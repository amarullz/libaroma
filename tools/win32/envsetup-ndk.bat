@ECHO OFF
REM
REM TOOLCHAIN AND ADB
REM
setx NDK_ROOT "D:\DevelTools\ndk\android-ndk-r10c"
setx SYSROOT_INC "%NDK_ROOT%\platforms\android-21\arch-arm"
setx LIBAROMA_GDB "%NDK_ROOT%\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin\arm-linux-androideabi-gdb.exe"
setx LIBAROMA_NM "%NDK_ROOT%\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin\arm-linux-androideabi-nm.exe"
setx LIBAROMA_ADB "D:\DevelTools\adt\sdk\platform-tools\adb.exe"
setx LIBAROMA_GCC "%NDK_ROOT%\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin\arm-linux-androideabi-gcc.exe"
setx LIBAROMA_GPP "%NDK_ROOT%\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin\arm-linux-androideabi-g++.exe"

REM
REM PRODUCTION CFLAGS
REM
setx LIBAROMA_CFLAGS "-O3 -ftree-vectorize -mvectorize-with-neon-quad -fprefetch-loop-arrays -funsafe-math-optimizations -fopenmp -mfloat-abi=hard -mfpu=neon -D__ARM_HAVE_NEON -DLIBAROMA_CONFIG_OPENMP=1 -DLIBAROMA_CONFIG_DEBUG_TRACE=0"
setx LIBAROMA_CINCLUDES "-I%SYSROOT_INC%\usr\include"


REM
REM DEBUG CFLAGS
REM
setx LIBAROMA_DEBUG_CFLAGS "-ggdb -fopenmp -mfloat-abi=hard -mfpu=neon -D__ARM_HAVE_NEON -DLIBAROMA_CONFIG_OPENMP=1 -DLIBAROMA_CONFIG_DEBUG_TRACE=0"

REM
REM LIBAROMA CONFIGS
REM
setx LIBAROMA_CONFIG_DEBUG "3"
setx LIBAROMA_CONFIG_DEBUG_FILE "0"
setx LIBAROMA_CONFIG_DEBUG_MEMORY "0"
setx LIBAROMA_CONFIG_COMPILER_MESSAGE "1"
setx LIBAROMA_CONFIG_SHMEMFB "0"
