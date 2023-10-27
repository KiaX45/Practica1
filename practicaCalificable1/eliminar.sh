#!/bin/bash

#Se solicita al usuario el nombre del arcgivo que se quiere elimanar
echo "por favor indicar la ruta del archivo a eliminar"
read path

#comprobamos si la dirección del arhivo es valida
if [[ -f "$path" ]]; then
#eliminarmos el archivo
rm  "$path"
# El archivo se elimino correctamente
else
echo "no se encontro el archivo a eliminar por favor revise la dirección"
fi
