# bin/bash

## Encoding
# iconv -f utf8 -t ascii//TRANSLIT $0 > profeco_sin_acentos.csv
sed -e 'y/ÑñÁáÉéÍíÓóÚúÜü/NnAaEeIiOoUuUu/' "$1" | iconv -f utf8 -t ascii//TRANSLIT//IGNORE > profeco_sin_acentos.csv

## Remove "." andRemove "." and  Convert to lowercase 
awk '{gsub(/\./, "", $0); gsub(/\|/, "", $0);  print tolower($0)}' profeco_sin_acentos.csv  > profeco_minusculas.csv

## Substitute inter "," for "|" and remove "

awk -F'"' -v OFS='' '{ for (i=1; i<=NF; i+=2) gsub(",", "|", $i) } 1' profeco_minusculas.csv > profeco_final_bash.csv

## Validate number of fields by row

awk -F'|' '{print NF}' profeco_final_bash.csv | uniq

