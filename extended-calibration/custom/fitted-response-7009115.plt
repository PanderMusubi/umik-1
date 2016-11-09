set title "TODO Least squares polynomial fit until 24000.0 Hz for 7009115"
set term png size 1920,1080
set output "fit-sampled-response-7009115.png"
set logscale x
set xrange [10:25000]
set xlabel "frequency [Hz]"
plot \
"fit-sampled-response-7009115-375.tsv" using 1:2 title "375 fit" with points pt 1, \
"fit-sampled-response-7009115-3000.tsv" using 1:2 title "3000 fit" with points pt 2, \
"fit-sampled-response-7009115-44100.tsv" using 1:2 title "44100 fit" with points pt 4, \
"fit-sampled-response-7009115-48000.tsv" using 1:2 title "48000 fit" with points pt 26, \
"../data/7009115.tsv" using 1:2 title "original" with lines
set xrange [1:25000]
set output "fit-response-7009115.png"
plot "fit-response-7009115.tsv" using 1:2 title "fitted" with lines, \
"../data/7009115.tsv" using 1:2 title "original" with lines
