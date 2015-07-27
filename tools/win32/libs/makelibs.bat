@ECHO OFF
cd ..
mkdir obj
cd obj
del /F /Q *
cd ..
mkdir obj.squirrel
cd obj.squirrel
del /F /Q *
cd ..\libs

call makelibs_zlib.bat -f
call makelibs_freetype.bat -f
call makelibs_hb.bat -f
call makelibs_hbucdn.bat -f
call makelibs_minzip.bat -f
call makelibs_png.bat -f
call makelibs_jpeg.bat -f
call makelibs_squirrel.bat -f

pause