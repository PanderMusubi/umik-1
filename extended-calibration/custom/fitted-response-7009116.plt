set title "TODO Least squares polynomial fit until 24000.0 Hz for 7009116"
set term png size 1920,1080
set output "fit-sampled-response-7009116.png"
set logscale x
set xrange [10:25000]
set xlabel "frequency [Hz]"
plot \
"fit-sampled-response-7009116-375.tsv" using 1:2 title "375 fit" with points pt 1, \
"fit-sampled-response-7009116-3000.tsv" using 1:2 title "3000 fit" with points pt 2, \
"fit-sampled-response-7009116-44100.tsv" using 1:2 title "44100 fit" with points pt 4, \
"fit-sampled-response-7009116-48000.tsv" using 1:2 title "48000 fit" with points pt 26, \
"../data/7009116.tsv" using 1:2 title "original" with lines
set xrange [1:25000]
set output "fit-response-7009116.png"
plot "fit-response-7009116.tsv" using 1:2 title "fitted" with lines, \
"../data/7009116.tsv" using 1:2 title "original" with lines
