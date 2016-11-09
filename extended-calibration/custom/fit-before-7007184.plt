set title "Least squares polynomial fit from 1.0 Hz for 7007184"
set term png size 1920,1080
set output "fit-before-7007184.png"
set logscale x
set xrange [1:100]
set xlabel "frequency [Hz]"
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
plot \
"fit-before-7007184-3.tsv" using 1:2 title "3-degree fit before", \
"fit-before-7007184-4.tsv" using 1:2 title "4-degree fit before", \
"fit-before-7007184-5.tsv" using 1:2 title "5-degree fit before", \
"fit-before-7007184-6.tsv" using 1:2 title "6-degree fit before", \
"fit-before-7007184-7.tsv" using 1:2 title "7-degree fit before", \
"fit-before-7007184-8.tsv" using 1:2 title "8-degree fit before", \
"fit-before-7007184-9.tsv" using 1:2 title "9-degree fit before", \
"../data/7007184.tsv" using 1:2 title "original" with lines
set title "Zoomed least squares polynomial fit from 1.0 - 50.0 Hz"
set output "fit-before-zoom-7007184.png"
set xrange [5:50]
set yrange [-8:-2]
replot
