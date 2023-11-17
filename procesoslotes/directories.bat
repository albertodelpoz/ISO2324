@echo off
REM 
REM
REM AUTOR; Alberto Dl Pozo Maganez
REM 15/11/2023


REM OPCIONES

echo 1 Crear fichero con nombre pedido al usuario
echo 2 Mostrar el árbol de directorios de la carpeta de usuario
echo 3 Mostrar archivos con extensión txt
echo 4 Crear los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo 5 Copiar el contenido de tu carpeta de usuario al Escritorio 

if %numero% == 1 goto fichero
if %numero% == 2 goto arbol
if %numero%% == 3 goto txt
if %numero% == 4 goto directorios
if %numero% == 5 goto copiarcarpeta


REM PRIMERO
:fichero
echo Ha seleccionado .txt
set /P nombre= "Introduzca el nombre de su archivo"
type nul > %nombre%.txt


REM SEGUNDO 
:arbol
tree %userprofile%


REM TERCERO
:txt
dir %userprofile%\*.txt


REM CUARTO
:directorios
mkdir alfredoff 
mkdir marinapg
mkdir ramonam
echo: Se han creado las carpetas alfredoff,marinapg y ramonam


REM QUINTO 
:copiarcarpeta
xcopy %userprofile% %userprofile%\C:\copia
echo se ha copiado el contenido de tu carpeta en el escritorio.
exit