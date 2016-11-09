set title "Least squares polynomial fit until 24000.0 Hz"
set term png size 1920,1080
set output "fit-after-7009116.png"
set logscale x
set xrange [10000:24000]
set xlabel "frequency [Hz]"
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
plot \
"fit-after-7009116-3.tsv" using 1:2 title "3-degree fit after", \
"fit-after-7009116-4.tsv" using 1:2 title "4-degree fit after", \
"fit-after-7009116-5.tsv" using 1:2 title "5-degree fit after", \
"fit-after-7009116-6.tsv" using 1:2 title "6-degree fit after", \
"fit-after-7009116-7.tsv" using 1:2 title "7-degree fit after", \
"fit-after-7009116-8.tsv" using 1:2 title "8-degree fit after", \
"fit-after-7009116-9.tsv" using 1:2 title "9-degree fit after", \
"../data/7009116.tsv" using 1:2 title "original" with lines
set title "Zoomed least squares polynomial fit until 16000.0 - 24000.0 Hz"
set output "fit-after-zoom-7009116.png"
set xrange [16000:24000]
set yrange [-6:2]
replot
