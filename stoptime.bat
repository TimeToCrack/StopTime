@echo off

for /F "tokens=2" %%i in ('date /t') do set date=%%i
set time=%time%

echo %date%
echo %time%

:a
date %date%
time %time%
ping 1.1.1.1 -n l -w 900 > nul
goto a