grep Sens ../download/???????.txt|awk -F '=' '{print $2}'|awk -F 'dB,' '{print $1}'|sort -nr > ../overview/sensitivity-all.tsv
gnuplot sensitivity-all.plt
