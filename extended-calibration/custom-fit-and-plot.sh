./custom-fit.py
cd custom
for SERNO in `cat ../serial-numbers-custom-exports.txt`
do
    gnuplot fit-before-$SERNO.plt
    gnuplot fit-after-$SERNO.plt
    sed -e 's/SERNO/'$SERNO'/g' ../fitted-response.tpl>fitted-response-$SERNO.plt
    gnuplot fitted-response-$SERNO.plt
done
cd ..
