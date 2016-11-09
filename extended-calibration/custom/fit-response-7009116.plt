set title "TODO Least squares polynomial fit until 24000.0 Hz"
set term png size 1920,1080
set output "fit-sampled-response-7009116.png"
set logscale x
set xrange [10:25000]
set xlabel "frequency [Hz]"
set grid ytics lt 1
set grid xtics lt 1
set grid mxtics lt 0
set xrange [1:25000]
set title "Least squares polynomial fit for extrapolation to 1 Hz - 10.054 Hz and 20016.816 Hz - 25000 Hz and linear interpolation in between for UMIK-1 serial number 7009116"
set output "fit-response-7009116.png"
plot "fit-response-7009116.tsv" using 1:2 title "fitted" with lines, \
"../data/7009116.tsv" using 1:2 title "original" with lines
