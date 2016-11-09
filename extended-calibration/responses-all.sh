cat responses-all.tpl >responses-all.plt
for i in ../minidsp.com/umikcal/???????.txt
do
    if [ ! -e data/`basename $i txt`tsv ] 
    then
        cat $i|tail -n +2 >data/`basename $i txt`tsv
    fi
    echo \'data/`basename $i txt`tsv\' using 1:2 with lines, \\ >>responses-all.plt
done
echo 1 >>responses-all.plt
gnuplot responses-all.plt
