@ECHO OFF
cd obj

echo Compiling TEST
%LIBAROMA_GCC% ^
  -O2 -static ^
  -fdata-sections -ffunction-sections -Wl,--gc-sections ^
  -D_GLIBCXX_DEBUG_PEDANTIC -D_GLIBCXX_DEBUG ^
  -fPIC -DPIC -Wl,-s -Werror -fopenmp ^
  ^
  -D__ARM_HAVE_NEON ^
  -mfloat-abi=hard ^
  -mfpu=neon ^
  ^
    -DLIBAROMA_CONFIG_DEBUG=%LIBAROMA_CONFIG_DEBUG% ^
    -DLIBAROMA_CONFIG_DEBUG_FILE=%LIBAROMA_CONFIG_DEBUG_FILE% ^
    -DLIBAROMA_CONFIG_DEBUG_MEMORY=%LIBAROMA_CONFIG_DEBUG_MEMORY% ^
    -DLIBAROMA_CONFIG_COMPILER_MESSAGE=%LIBAROMA_CONFIG_COMPILER_MESSAGE% ^
    -DLIBAROMA_CONFIG_SHMEMFB=%LIBAROMA_CONFIG_SHMEMFB% ^
    -DLIBAROMA_CONFIG_OPENMP=1 ^
    -DANDROID=1 ^
  ^
    ./*.o ^
    ../../test/libaroma_test.c ^
  ^
  -I../../../include ^
  -I../../../src ^
  -o ../bin/libaroma_test ^
  ^
  -lm -lpthread -lstdc++ -lrt

cd ..
if "%1"=="-f" GOTO DONE
pause
:DONE