grep Sens ../download/???????.txt|awk -F '=' '{print $2}'|awk -F 'dB,' '{print $1}'|sort -nr > ../overview/sensitivities.tsv
gnuplot sensitivities.plt
