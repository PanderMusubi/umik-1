cat responses.tpl > responses.plt
for i in ../stripped/???????.tsv; do
    echo \'$i\' using 1:2 with lines, \\ >> responses.plt
done
echo 1 >> responses.plt
gnuplot responses.plt
