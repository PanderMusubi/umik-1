set title "Least squares polynomial fit until 24000.0 Hz for UMIK-1 serial number SERNO"
set term png size 1920,1080
set output "SERNO-fit-sampled-response.png"
set logscale x
set xrange [10:25000]
set xlabel "frequency [Hz]"
plot \
"SERNO-fit-sampled-response-44100.tsv" using 1:2 title "44100 fit" with points pt 4, \
"SERNO-fit-sampled-response-48000.tsv" using 1:2 title "48000 fit" with points pt 26, \
"../stripped/SERNO.tsv" using 1:2 title "original" with lines
set xrange [1:25000]
set output "SERNO-fit-response.png"
plot "SERNO-fit-response.tsv" using 1:2 title "fitted" with lines, \
"../stripped/SERNO.tsv" using 1:2 title "original" with lines
