# bin/bash

## Encoding
iconv -f utf8 -t ascii//TRANSLIT data/prueba.csv > profeco_sin_acentos.csv

## Remove "." andRemove "." and  Convert to lowercase 
awk '{gsub(/\./, "", $0); print tolower($0)}' profeco_sin_acentos.csv  > profeco_minusculas.csv


