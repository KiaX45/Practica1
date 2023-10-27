#!/bin/bash

while true; do
    # Mostrar el directorio actual
    echo "Ubicación actual:"
    pwd
    sleep 3

    seguir=true

    while $seguir; do
        # Preguntar al usuario si desea cambiar de directorio
        read -p "¿Desea cambiar la ruta actual? [Y/N]: " respuesta
        respuesta=${respuesta,,}  # Convertir a minúsculas

        if [ "$respuesta" == "y" ]; then
            read -p "Especifique la ruta: " directorio
            sleep 3

            # Verificar si el directorio es válido
            if [ -z "$directorio" ] || [ ! -d "$directorio" ]; then
                echo "Entrada no válida o directorio inexistente."
            else
                # Cambiar al directorio especificado
                echo "Cambiando a la ruta especificada: $directorio"
                cd "$directorio"
                echo "Ubicación actual:"
                pwd
            fi
        else 
            seguir=false
        fi
    done

    continuar1=true
    while $continuar1; do
        # Preguntar al usuario el nombre de la carpeta a crear
        read -p "Ingrese el nombre de la carpeta a crear: " carpeta

        if [ ! -d "$carpeta" ]; then
            mkdir -p "$carpeta"
            echo "El directorio \"$carpeta\" fue creado exitosamente."
            continuar1=false   
            sleep 3

            # Copiar archivos al nuevo directorio si existen
            continuar=true
            while $continuar; do
                # Pedir al usuario la ruta del archivo a copiar
                read -p "Ingrese la ruta del archivo a copiar: " archivo
                if [ -z "$archivo" ] || [ ! -f "$archivo" ]; then
                    echo "Entrada no válida o archivo inexistente."
                else 
                    # Copiar el archivo a la carpeta
                    cp "$archivo" "$carpeta"
                    echo "El archivo \"$archivo\" fue copiado exitosamente."
                    sleep 3
                fi    

                # Preguntar al usuario si desea copiar otro archivo
                read -p "¿Desea copiar otro archivo? (Y/N): " answer
                answer=${answer,,}  # Convertir a minúsculas
                if [ "$answer" != "y" ]; then
                    continuar=false
                fi
            done

            # Mostrar el contenido del nuevo directorio
            echo "Contenido de \"$carpeta\":"
            ls "$carpeta"
            sleep 3
        else
            echo "El directorio \"$carpeta\" ya existe. Intente con otro nombre."
            # Preguntar al usuario si quiere intentarlo nuevamente
            read -p "¿Desea intentarlo nuevamente? (Y/N): " answer
            answer=${answer,,}  # Convertir a minúsculas
            if [ "$answer" != "y" ]; then
                continuar1=false
            fi
        fi
    done

    # Preguntar al usuario si desea repetir el proceso
    read -p "¿Desea hacer de nuevo este proceso? (Y/N): " answer
    answer=${answer,,}  # Convertir a minúsculas

    if [ "$answer" != "y" ]; then
        break
    fi
done

echo "Fin del proceso."
