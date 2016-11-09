#!/usr/bin/env python3

import numpy as np
import math

for line in open('serial-numbers-custom-exports.txt', 'r'):
    frequencies = []
    frequencies_before = np.array([])
    frequencies_after = np.array([])
    factors = []
    factors_before = np.array([])
    factors_after = np.array([])
    response = {}

    serial_number = line[:-1]

    infile = open('data/{}.tsv'.format(serial_number), 'r')
    last = None
    for line in infile:
        (frequency, factor) = line.strip().split('\t')
        freq = float(frequency)
        frequencies.append(freq)
        factors.append(float(factor))
        if freq <= 50.0:
            frequencies_before = np.append(frequencies_before, freq)
            factors_before = np.append(factors_before, float(factor))
        if freq >= 16000.0:
            frequencies_after = np.append(frequencies_after, freq)
            factors_after = np.append(factors_after, float(factor))
        response[freq] = factor
    #    if last:
    #        print float(frequency) - last
    #    last = float(frequency)

    start = 1.0
    end = 24000.0

    pltfile = open('custom/fit-before-{}.plt'.format(serial_number), 'w')
    pltfile.write('set title "Least squares polynomial fit from {} Hz for {}"\n'.format(start, serial_number))
    pltfile.write('set term png size 1920,1080\n')
    pltfile.write('set output "fit-before-{}.png"\n'.format(serial_number))
    pltfile.write('set logscale x\n')
    pltfile.write('set xrange [1:100]\n')
    pltfile.write('set xlabel "frequency [Hz]"\n')
    pltfile.write('set grid ytics lt 1\n')
    pltfile.write('set grid xtics lt 1\n')
    pltfile.write('set grid mxtics lt 0\n')
    pltfile.write('plot \\\n')
    for n in (3, 4, 5, 6, 7, 8, 9, ):
        fit = np.poly1d(np.polyfit(frequencies_before, factors_before, n))
        outfile = open('custom/fit-before-{}-{}.tsv'.format(serial_number, n), 'w')
        frequency = start
        while frequency <= 11.0:
            outfile.write('%s\t%s\n' % (frequency, fit(frequency)))
            frequency += 0.125
        pltfile.write('"fit-before-{}-{}.tsv" using 1:2 title "{}-degree fit before", \\\n'.format(serial_number, n, n))
    pltfile.write('"../data/{}.tsv" using 1:2 title "original" with lines\n'.format(serial_number))
    pltfile.write('set title "Zoomed least squares polynomial fit from %s - 50.0 Hz"\n' % start)
    pltfile.write('set output "fit-before-zoom-{}.png"\n'.format(serial_number))
    pltfile.write('set xrange [5:50]\n')
    pltfile.write('set yrange [-8:-2]\n')
    pltfile.write('replot\n')

    pltfile = open('custom/fit-after-{}.plt'.format(serial_number), 'w')
    pltfile.write('set title "Least squares polynomial fit until %s Hz"\n' % end)
    pltfile.write('set term png size 1920,1080\n')
    pltfile.write('set output "fit-after-{}.png"\n'.format(serial_number))
    pltfile.write('set logscale x\n')
    pltfile.write('set xrange [10000:24000]\n')
    pltfile.write('set xlabel "frequency [Hz]"\n')
    pltfile.write('set grid ytics lt 1\n')
    pltfile.write('set grid xtics lt 1\n')
    pltfile.write('set grid mxtics lt 0\n')
    pltfile.write('plot \\\n')
    for n in (3, 4, 5, 6, 7, 8, 9, ):
        fit = np.poly1d(np.polyfit(frequencies_after, factors_after, n))
        outfile = open('custom/fit-after-{}-{}.tsv'.format(serial_number, n), 'w')
        frequency = 18500.0
        while frequency <= end:
            outfile.write('%s\t%s\n' % (frequency, fit(frequency)))
            frequency += 125.0
        pltfile.write('"fit-after-{}-{}.tsv" using 1:2 title "{}-degree fit after", \\\n'.format(serial_number, n, n))
    pltfile.write('"../data/{}.tsv" using 1:2 title "original" with lines\n'.format(serial_number))
    pltfile.write('set title "Zoomed least squares polynomial fit until 16000.0 - %s Hz"\n' % end)
    pltfile.write('set output "fit-after-zoom-{}.png"\n'.format(serial_number))
    pltfile.write('set xrange [16000:24000]\n')
    pltfile.write('set yrange [-6:2]\n')
    pltfile.write('replot\n')

    # The following is manually selected from zoomed plots!
    fit_before = np.poly1d(np.polyfit(frequencies_before, factors_before, 6))
    fit_after = np.poly1d(np.polyfit(frequencies_after, factors_after, 3))

    pltfile = open('custom/fit-response-{}.plt'.format(serial_number), 'w')
    pltfile.write('set title "TODO Least squares polynomial fit until %s Hz"\n' % end)
    pltfile.write('set term png size 1920,1080\n')
    pltfile.write('set output "fit-sampled-response-{}.png"\n'.format(serial_number))
    pltfile.write('set logscale x\n')
    pltfile.write('set xrange [10:25000]\n')
    pltfile.write('set xlabel "frequency [Hz]"\n')
    pltfile.write('set grid ytics lt 1\n')
    pltfile.write('set grid xtics lt 1\n')
    pltfile.write('set grid mxtics lt 0\n')

    for freq in ('44100', '48000', '3000', '375', ):
        outfile = open('custom/fit-sampled-response-{}-{}.tsv'.format(serial_number, freq), 'w')
        infile = open('sox-frequencies-{}.txt'.format(freq), 'r')
        for line in infile:
            line = line.strip()
            if line != '':
                frequency = float(line)
                if frequency < 10.054:
                    factor = fit_before(frequency)
                elif frequency <= 20016.816:
                    factor = np.interp(frequency, frequencies, factors)
                else:
                    factor = fit_after(frequency)
                outfile.write('%s\t%f\t%f\t%f\n' % (line, factor, 10**(factor/10.0), math.sqrt(10**(factor/10.0))))  # freq, factor dB, power ratio, amplitude ratio  https://en.wikipedia.org/wiki/Decibel
    #    pltfile.write('"fit-sampled-response-%s.tsv" using 1:2 title "%s fit" with points, \\\n' % (freq, freq))
    #pltfile.write('"data/7007184.tsv" using 1:2 title "original" with lines\n')

    pltfile.write('set xrange [1:25000]\n')
    outfile = open('custom/fit-response-{}.tsv'.format(serial_number), 'w')
    for order in range(0, 5):
        for step in range(1, 10):
            start = step * 10**order
            for detail in range(0, 10):
                freq = (detail * start / (10.0 * step)) + start
                if freq < 10.054:
                    factor = fit_before(freq)
                elif freq <= 20016.816:
                    factor = np.interp(freq, frequencies, factors)
                else:
                    factor = fit_after(freq)
                outfile.write('%s\t%s\n' % (freq, factor))
    pltfile.write('set title "Least squares polynomial fit for extrapolation to 1 Hz - 10.054 Hz and 20016.816 Hz - 25000 Hz and linear interpolation in between for UMIK-1 serial number {}"\n'.format(serial_number))
    pltfile.write('set output "fit-response-{}.png"\n'.format(serial_number))
    pltfile.write('plot "fit-response-{}.tsv" using 1:2 title "fitted" with lines, \\\n'.format(serial_number))
    pltfile.write('"../data/{}.tsv" using 1:2 title "original" with lines\n'.format(serial_number))


    #    for frequency in sorted(response.keys(), key=float):
    #        outfile.write('%f\t%s\n' % (frequency, response[frequency]))
