@echo off
echo Este script permite la creación de un documento con los datos de fecha y hora y la información del sistema.

:inicio
echo Ingresa el nombre del archivo:
set /p archivo=

if exist %archivo%.txt (
    echo El archivo ya existe.
    set /p respuesta=¿Desea introducir un nuevo nombre? [Y/N]: 
    if /i "%respuesta%"=="Y" (
        goto inicio
    ) else (
        echo Vuelva a correr el script para poder reiniciar el proceso.
        exit /b 0
    )
) else (
    echo %date% > %archivo%.txt
    echo %time% >> %archivo%.txt
    systeminfo >> %archivo%.txt
    echo Archivo creado.
    echo Mostrando el contenido del archivo:
    pause
    type %archivo%.txt
)




