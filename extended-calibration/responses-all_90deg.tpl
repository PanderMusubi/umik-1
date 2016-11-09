set title 'Frequency response USB measuremet microphone UMIK-1 \
for thousands of 90-degree calibrations'
set nokey
set term png size 1920, 1080
set output 'plots/responses-all_90deg.png'
set ylabel 'factor'
set xlabel 'frequency [Hz]'
set xrange [:20000]
set logscale x
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
plot \
