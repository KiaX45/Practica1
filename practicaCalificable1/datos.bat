@echo off
echo Este script permite la creación de un documento con los datos de fecha y hora y la información del sistema
echo Ingresa el nombre del archivo
set /p archivo=

if exist %archivo% (
    echo el archivo ya existe
    exit /b 1
) else (
    echo %date% %time% %systeminfo% > %archivo%.txt
    echo archivo creado
)


