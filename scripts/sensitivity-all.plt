set title 'Sensitivity factor USB measurement microphone UMIK-1 \
for thousands of calibration files'
set nokey
set xlabel 'sensitivity factor [dB]'
set grid xtics lt 0
set ylabel 'count'
set grid ytics lt 0
set term png size 1920, 1080
set output '../overview/sensitivity-all.png'
binwidth=.2
bin(x,width)=width*floor(x/width)
plot '../overview/sensitivity-all.tsv' using (bin($1,binwidth)):(1.0) smooth freq with boxes
