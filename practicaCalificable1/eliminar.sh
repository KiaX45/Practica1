#!/bin/bash

while $condicion; do 
Se solicita al usuario el nombre del archivo que se quiere eliminar
echo "Por favor, indicar la ruta del archivo a eliminar"
read path
condicion=true
    # Comprobamos si la dirección del archivo es válida
    if [[ -f "$path" ]]; then
        # Eliminamos el archivo
        rm "$path"
        echo "El archivo se eliminó correctamente"
    else
        echo "No se encontró el archivo a eliminar. Por favor, revise la dirección."
    fi

    read -p "¿Desea eliminar otro archivo? [Y/N]: " respuesta
    if [[ $respuesta == "n" ]] || [[ $respuesta == "N" ]]; then
        condicion=false
    fi
done