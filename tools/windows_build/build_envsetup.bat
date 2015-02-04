@ECHO OFF
REM
REM Change into your toolchain path
REM
setx LIBAROMA_GCC "D:\DevelTools\linaro\bin\arm-linux-gnueabihf-gcc.exe"
setx LIBAROMA_GPP "D:\DevelTools\linaro\bin\arm-linux-gnueabihf-g++.exe"

setx LIBAROMA_CONFIG_DEBUG "5"
setx LIBAROMA_CONFIG_DEBUG_FILE "2"
setx LIBAROMA_CONFIG_DEBUG_MEMORY "1"
setx LIBAROMA_CONFIG_COMPILER_MESSAGE "1"
setx LIBAROMA_CONFIG_SHMEMFB "1"

