@echo off
REM
REM FECHA : 15-11-2023
REM AUTOR : Alberto del pozo maganez
echo Press 1 se creara un archivo .txt
echo Press 2 se creara un archico .bat
echo.
set /p nombre=Como quieres que se llame el archivo
set /p archivo=
if %archivo% EQU 1 type nul > %nombre%.txt
if %archivo% EQU 2 type nul > %nombre%.bat

