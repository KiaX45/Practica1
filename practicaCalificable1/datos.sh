#!/bin/bash
echo"Este script permite generar la fecha y hora actual junto con la información del s>

echo "Ingrese el nombre del archivo donde se guardara la información"
read nombreArchivo


#Comprobamos si no hay un documento con el mismo nombre
if [[ -f "$nombreArchivo.txt" ]];  then
echo "Lo sentimos no se puede continuar porque ya existe un documento con este nombre"
exit 1
fi

#creamos el documento donde se guardara 
touch "$nombreArchivo.txt"

date > "$nombreArchivo.txt"
/etc/os-relaese >> "$nombreArchivo.txt"
lscpu >> "$nombreArchivo.txt"
