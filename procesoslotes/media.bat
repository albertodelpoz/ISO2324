@echo off
REM
REM FECHA : 14-11-2023
REM AUTOR : Alberto del pozo maganez

echo vamos a realizar la media de estos tres numeros %1 %2 %3
echo vamos a relizar primero la suma 
set/A suma= %1 + %2 + %3 
echo la suma es %suma%
set/A media= %suma% / 3
echo la media es %media%