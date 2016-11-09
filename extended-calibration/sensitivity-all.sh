grep Sens ../minidsp.com/umikcal/???????.txt|awk -F '=' '{print $2}'|awk -F 'dB,' '{print $1}'|sort -nr >sensitivity-all.tsv
gnuplot sensitivity-all.plt
