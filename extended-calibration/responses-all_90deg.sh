cat responses-all_90deg.tpl >responses-all_90deg.plt
for i in ../minidsp.com/umikcal/???????_90deg.txt
do
    if [ ! -e data/`basename $i txt`tsv ]
    then
        cat $i|tail -n +3 >data/`basename $i txt`tsv
    fi
    echo \'data/`basename $i txt`tsv\' using 1:2 with lines, \\ >>responses-all_90deg.plt
done
echo 1 >>responses-all_90deg.plt
gnuplot responses-all_90deg.plt
