@ECHO OFF
echo.
call build_libaroma.bat -f
echo.
pause
echo.
call debug_build_test.bat -f
echo.
pause