# bin/bash

## Encoding
iconv -f utf8 -t ascii//TRANSLIT data/prueba.csv > profeco_sin_acentos.csv

## Convert to lowercase
awk '{print tolower($0)}' profeco_sin_acentos.csv > profeco_minusculas.csv
