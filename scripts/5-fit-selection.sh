#!/usr/bin/bash
set -e

if [ ! -e ../generated ]; then
	mkdir ../generated
fi
python3 custom-fit.py selection
cd ../generated
for i in `cat ../scripts/serial-number-selection.txt|sort -n`; do
    gnuplot $i-fit-before.plt
    gnuplot $i-fit-after.plt
    sed -e 's/SERNO/'$i'/g' ../scripts/fitted-response.tpl > $i-fitted-response.plt
    gnuplot $i-fitted-response.plt
done
rm -f *.plt *-fit-before*.tsv *-fit-after*.tsv
