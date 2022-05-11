cat responses.tpl > responses.plt
for i in ../stripped/???????.tsv; do
    echo \'$i\' using 1:2 with lines, \\ >> responses.plt
done
echo 1 >> responses.plt
gnuplot responses.plt

cat responses-90deg.tpl > responses-90deg.plt
for i in ../stripped/???????_90deg.tsv; do
    echo \'$i\' using 1:2 with lines, \\ >> responses-90deg.plt
done
echo 1 >> responses-90deg.plt
gnuplot responses-90deg.plt
