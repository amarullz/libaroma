@ECHO OFF
REM
REM TOOLCHAIN AND ADB
REM
setx ANDROID_NDK "D:\DevTools\ndk\android-ndk-r10e"
setx ANDROID_ABI "armeabi-v7a with NEON"
setx ANDROID_NATIVE_API_LEVEL "android-21"
setx ANDROID_TOOLCHAIN_NAME "arm-linux-androideabi-4.9"
setx ANDROID_FORCE_ARM_BUILD "ON"