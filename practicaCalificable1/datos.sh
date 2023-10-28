#!/bin/bash

echo "Este script permite la creación de un documento con los datos de fecha y hora y la información del sistema."

while true; do
    echo "Ingresa el nombre del archivo:"
    read archivo

    if [[ -e "$archivo.txt" ]]; then
        echo "El archivo ya existe."
        read -p "¿Deseas introducir un nuevo nombre? [y/n]: " respuesta
        respuesta=${respuesta,,}  # Convertir a minúsculas

        if [[ "$respuesta" == "y" ]]; then
            continue
        elif [[ "$respuesta" == "n" ]]; then
            echo "Salida del script."
            exit
        else
            echo "Por favor, responde y o n."
        fi
    else
        date > "$archivo.txt"
        cat /etc/os-release >> "$archivo.txt"
        lscpu >> "$archivo.txt"
        echo "Archivo creado."
        echo "Mostrando el contenido del archivo:"
        cat "$archivo.txt"
        break
    fi
done



