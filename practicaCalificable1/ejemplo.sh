#!/bin/bash

# Función para pausar la ejecución
pause() {
    read -p "Presione [Enter] para continuar..."
    echo "--------------------------"
}

# Descripción y demostración del comando 'find'
echo "1. Comando 'find':"
echo "Descripción: Busca archivos en un directorio y sus subdirectorios. En este caso, buscará archivos .txt en el directorio actual."
echo "Ejemplo:"
find . -name "*.txt"
pause

# Descripción y demostración del comando 'sort'
echo "2. Comando 'sort':"
echo "Descripción: Ordena las líneas de un archivo. En este caso, ordenará alfabéticamente las líneas de un archivo de texto."
echo "Ejemplo:"
echo -e "banana\napple\ncherry" > fruits.txt
echo "Archivo original:"
cat fruits.txt
echo "Archivo ordenado:"
sort fruits.txt
pause

# Descripción y demostración del comando 'awk'
echo "3. Comando 'awk':"
echo "Descripción: Procesa y analiza texto en archivos. En este caso, imprimirá la primera columna de un archivo delimitado por comas (CSV)."
echo "Ejemplo:"
echo "nombre,edad,ciudad" > sample.csv
echo "Juan,25,Madrid" >> sample.csv
echo "Ana,30,Barcelona" >> sample.csv
awk -F ',' '{print $1}' sample.csv
pause

# Descripción y demostración del comando 'date' con formato
echo "4. Comando 'date +'%d/%m/%Y %H:%M:%S'':"
echo "Descripción: Muestra la fecha y hora actuales en un formato específico."
echo "Ejemplo:"
date +"%d/%m/%Y %H:%M:%S"
pause

# Descripción y demostración del comando 'du'
echo "5. Comando 'du -sh .':"
echo "Descripción: Muestra el espacio utilizado por el directorio actual de forma legible."
echo "Ejemplo:"
du -sh .
pause

# Limpieza: Eliminar el archivo backup.tar.gz
rm backup.tar.gz

echo "¡Eso es todo!"
