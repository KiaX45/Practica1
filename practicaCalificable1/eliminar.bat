@echo off
setlocal enabledelayedexpansion
:Eliminar
echo ingrese la direccion del archivo que desea eliminar[D:\ - C:]
set /p path=
set continuar=N
if exist "!path!" (
    echo Esta seguro de eliminarlo? [Y/N]
    set /p continuar=
    if /i "!continuar!" == "Y" (
        del "!path!"
        echo el archivo se elimino correctamente
    )
) else (
    echo No se encontro la ruta especificada. Quiere intentarlo Nuevamente?[Y/N]
    set /p continuar=
    if /i "!continuar!" == "Y" (
        goto Eliminar
    )
)

echo Quiere eliminar otro archivo? [Y/N]
set /p continuar=
if /i "!continuar!" == "Y" (
    goto Eliminar
)
pause
