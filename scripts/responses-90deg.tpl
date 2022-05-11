set title 'Frequency response USB measuremet microphone UMIK-1 \
for many 90-degree calibration files'
set nokey
set term png size 1920, 1080
set output '../overview/responses-90deg.png'
set ylabel 'factor'
set xlabel 'frequency [Hz]'
set xrange [:20000]
set yrange [-10:6]
set logscale x
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
plot \
