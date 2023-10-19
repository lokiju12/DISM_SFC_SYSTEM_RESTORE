@echo off


:MainMenu
cls
echo.
echo.   1. System File Restore
echo.
echo.   2. System Image Restore
echo.
echo.   5. END
echo.
choice /C:123450X /N /M   "INPUT : "  
if errorlevel 5 goto :end
if errorlevel 2 goto :B
if errorlevel 1 goto :A

:A
sfc /scannow
pause
goto MainMenu

:B
dism /online /cleanup-image /restorehealth
pause
goto MainMenu

:end
exit