cat responses-90deg-all.tpl > responses-90deg-all.plt
for i in ../stripped/???????_90deg.tsv; do
    echo \'$i\' using 1:2 with lines, \\ >> responses-90deg-all.plt
done
echo 1 >> responses-90deg-all.plt
gnuplot responses-90deg-all.plt
