set title 'Frequency response USB measuremet microphone UMIK-1 \
serial number SERNO with sensitivity factor SENSF dB'
set ylabel 'factor'
set grid ytics lt 1
set xlabel 'frequency [Hz]'
set xrange [10:20000]
set logscale x
set grid xtics lt 1
set grid mxtics lt 0
set term png size 1920, 1080
set output 'plots/response-SERNO.png'
plot \
'data/SERNO_90deg.tsv' using 1:2 with lines lc rgb 'red' \
title '90-degree calibration' \
, \
'data/SERNO.tsv' using 1:2 with lines lc rgb 'blue' \
title 'calibration'
