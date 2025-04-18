@ECHO off

kdmapper.exe s2.sys

cls

goto infolist

:infolist
cls
@echo.
@echo.

@echo.
@echo.
echo DRAM:
wmic memorychip get serialnumber
echo Hard Drives:
wmic diskdrive get serialnumber
echo Motherboard:
wmic baseboard get serialnumber
echo MAC:
getmac /NH
echo.
echo CPU:
wmic cpu get ProcessorId,name
echo BIOS:
wmic csproduct get uuid,name,version
pause
goto infolist
