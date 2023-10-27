@echo off
setlocal enabledelayedexpansion

:do_while
echo Ingresa el nombre de la carpeta
set /p carpeta=
if exist !carpeta!\ (
    echo La carpeta ya existe, quiere intentarlo de nuevo? [Y/N]
    set /p continuar=
    if /i "!continuar!" == "Y" (
        goto do_while
    ) else (
        echo Vuelva a correr el script para poder reiniciar el proceso
        exit /b 0
    )
) else (
    mkdir !carpeta!
    echo Carpeta creada
)

:Copiar
echo Ingrese la direccion del archivo que desea copiar [D:\ - C:\]
set /p path=
set continuar=N
if exist "!path!" (
    copy "!path!" !carpeta!
    echo El archivo se copio correctamente
) else (
    echo No se encontro la ruta especificada. Quiere intentarlo nuevamente? [Y/N]
    set /p continuar=
    if /i "!continuar!" == "Y" (
        goto Copiar
    )
)

echo Quiere copiar otro archivo? [Y/N]
set /p continuar=
if /i "!continuar!" == "Y" (
    goto Copiar
)

pause
echo Comprobamos la creacion de la carpeta
pause
dir 
echo entramos a la carpeta
pause
cd %carpeta%
cd
echo Comprobamos los documentos
pause
dir
echo volvemos a la carpeta de origen
pause
cd ..
cd

echo Fin del proceso.

