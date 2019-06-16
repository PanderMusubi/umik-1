cat responses-all.tpl > responses-all.plt
for i in ../stripped/???????.tsv; do
    echo \'$i\' using 1:2 with lines, \\ >> responses-all.plt
done
echo 1 >> responses-all.plt
gnuplot responses-all.plt
