if [ ! -e ../generated ]; then
	mkdir ../generated
fi
./custom-fit.py
cd ../generated
for i in `cat ../scripts/serial-number-selection.txt`; do
    gnuplot $i-fit-before.plt
    gnuplot $i-fit-after.plt
    sed -e 's/SERNO/'$i'/g' ../scripts/fitted-response.tpl > $i-fitted-response.plt
    gnuplot $i-fitted-response.plt
done
rm -f *.plt *-fit-before*.tsv *-fit-after*.tsv
