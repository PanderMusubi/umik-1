#!/usr/bin/bash
set -e

if [ ! -e ../generated ]; then
	mkdir ../generated
fi
python3 custom-fit.py
cd ../generated
for i in `$(ls ../stripped|grep ^???????.tsv|sort -n)`; do
    i=$(basename $i .tsv)
    sed -e 's/SERNO/'$i'/g' ../scripts/fitted-response.tpl > $i-fitted-response.plt
    gnuplot $i-fitted-response.plt
done
rm -f *.plt
