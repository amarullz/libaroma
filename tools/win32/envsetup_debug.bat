@ECHO OFF
REM
REM TOOLCHAIN AND ADB
REM
setx LIBAROMA_GDB "D:\DevTools\linaro\bin\arm-linux-gnueabihf-gdb.exe"
setx LIBAROMA_NM "D:\DevTools\linaro\bin\arm-linux-gnueabihf-nm.exe"
setx LIBAROMA_ADB "D:\DevTools\sdk\platform-tools\adb.exe"
setx LIBAROMA_GCC "D:\DevTools\linaro\bin\arm-linux-gnueabihf-gcc.exe"
setx LIBAROMA_GPP "D:\DevTools\linaro\bin\arm-linux-gnueabihf-c++.exe"

REM
REM PRODUCTION CFLAGS
REM
setx LIBAROMA_CFLAGS "-O3 -ftree-vectorize -mvectorize-with-neon-quad -fprefetch-loop-arrays -funsafe-math-optimizations -fopenmp -mfloat-abi=hard -mfpu=neon -D__ARM_HAVE_NEON -DLIBAROMA_CONFIG_OPENMP=1 -DLIBAROMA_CONFIG_DEBUG_TRACE=0"
setx LIBAROMA_CINCLUDES ""

REM
REM DEBUG CFLAGS
REM
setx LIBAROMA_DEBUG_CFLAGS "-ggdb -fopenmp -mfloat-abi=hard -mfpu=neon -D__ARM_HAVE_NEON -DLIBAROMA_CONFIG_OPENMP=1 -DLIBAROMA_CONFIG_DEBUG_TRACE=3"

REM
REM LIBAROMA CONFIGS
REM
setx LIBAROMA_CONFIG_DEBUG "5"
setx LIBAROMA_CONFIG_DEBUG_FILE "2"
setx LIBAROMA_CONFIG_DEBUG_MEMORY "1"
setx LIBAROMA_CONFIG_COMPILER_MESSAGE "1"
setx LIBAROMA_CONFIG_SHMEMFB "0"
