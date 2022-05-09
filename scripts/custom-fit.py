'''Fits with extrapolation.'''

from glob import glob
from math import sqrt
from os.path import isfile
from sys import argv
from numpy import array, append, poly1d, polyfit, interp

def main(serial_number, extra=False):
    '''Fits with extrapolation.'''
    if extra is False and isfile(f'../generated/{serial_number}-fit-response.tsv'):
        return
    frequencies = []
    frequencies_before = array([])
    frequencies_after = array([])
    factors = []
    factors_before = array([])
    factors_after = array([])
    response = {}

    print(serial_number)

    infile = open(f'../stripped/{serial_number}.tsv', 'r')  # pylint:disable=consider-using-with,unspecified-encoding
    last = None
    for line in infile:
        (frequency, factor) = line.strip().split('\t')
        freq = float(frequency)
        frequencies.append(freq)
        factors.append(float(factor))
        if freq <= 50.0:
            frequencies_before = append(frequencies_before, freq)
            factors_before = append(factors_before, float(factor))
        if freq >= 16000.0:
            frequencies_after = append(frequencies_after, freq)
            factors_after = append(factors_after, float(factor))
        response[freq] = factor
    #    if last:
    #        print float(frequency) - last
    #    last = float(frequency)

    start = 1.0
    end = 24000.0

    # The following is manually selected from zoomed plots!
    orderBefore = 6
    orderAfter = 3

    if extra:
        pltfile = open('../generated/{}-fit-before.plt'.format(serial_number), 'w')  # pylint:disable=consider-using-with,unspecified-encoding
        pltfile.write('set title "Least squares polynomial fit from {} Hz for UMIK-1 serial number {}"\n'.format(start, serial_number))
        pltfile.write('set term png size 1920,1080\n')
        pltfile.write(f'set output "graphs/{serial_number}-fit-before.png"\n')
        pltfile.write('set logscale x\n')
        pltfile.write('set xrange [1:100]\n')
        pltfile.write('set xlabel "frequency [Hz]"\n')
        pltfile.write('set grid ytics lt 1\n')
        pltfile.write('set grid xtics lt 1\n')
        pltfile.write('set grid mxtics lt 0\n')
        pltfile.write('plot \\\n')
        for n in (3, 4, 5, 6, 7, 8, 9, ):
            fit = poly1d(polyfit(frequencies_before, factors_before, n))
            outfile = open('../generated/{}-fit-before-{}.tsv'.format(serial_number, n), 'w')  # pylint:disable=consider-using-with,unspecified-encoding
            frequency = start
            while frequency <= 11.0:
                outfile.write(f'{frequency}\t{fit(frequency)}\n')
                frequency += 0.125
            if n == orderBefore:
                pltfile.write(f'"{serial_number}-fit-before-{n}.tsv" using 1:2 title "chosen {n}-order fit before", \\\n')
            else:
                pltfile.write(f'"{serial_number}-fit-before-{n}.tsv" using 1:2 title "{n}-order fit before", \\\n')
        pltfile.write(f'"../stripped/{serial_number}.tsv" using 1:2 title "original" with lines\n')
        pltfile.write(f'set title "Zoomed least squares polynomial fit from {start} - 50.0 Hz for UMIK-1 serial number {serial_number}"\n')
        pltfile.write(f'set output "graphs/{serial_number}-fit-before-zoom.png"\n')
        pltfile.write('set xrange [5:50]\n')
        pltfile.write('set yrange [-8:-2]\n')
        pltfile.write('replot\n')

        pltfile = open(f'../generated/{serial_number}-fit-after.plt', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
        pltfile.write(f'set title "Least squares polynomial fit until {end} Hz for UMIK-1 serial number {serial_number}"\n')
        pltfile.write('set term png size 1920,1080\n')
        pltfile.write(f'set output "graphs/{serial_number}-fit-after.png"\n')
        pltfile.write('set logscale x\n')
        pltfile.write('set xrange [10000:24000]\n')
        pltfile.write('set xlabel "frequency [Hz]"\n')
        pltfile.write('set grid ytics lt 1\n')
        pltfile.write('set grid xtics lt 1\n')
        pltfile.write('set grid mxtics lt 0\n')
        pltfile.write('plot \\\n')
        for n in (3, 4, 5, 6, 7, 8, 9, ):
            fit = poly1d(polyfit(frequencies_after, factors_after, n))
            outfile = open(f'../generated/{serial_number}-fit-after-{n}.tsv', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
            frequency = 18500.0
            while frequency <= end:
                outfile.write(f'{frequency}\t{fit(frequency)}\n')
                frequency += 125.0
            if n == orderAfter:
                pltfile.write(f'"{serial_number}-fit-after-{n}.tsv" using 1:2 title "chosen {n}-order fit after", \\\n')
            else:
                pltfile.write(f'"{serial_number}-fit-after-{n}.tsv" using 1:2 title "{n}-order fit after", \\\n')
        pltfile.write(f'"../stripped/{serial_number}.tsv" using 1:2 title "original" with lines\n')
        pltfile.write('set title "Zoomed least squares polynomial fit until 16000.0 - {} Hz for UMIK-1 serial number {}"\n'.format(end, serial_number))
        pltfile.write(f'set output "graphs/{serial_number}-fit-after-zoom.png"\n')
        pltfile.write('set xrange [16000:24000]\n')
        pltfile.write('set yrange [-6:2]\n')
        pltfile.write('replot\n')

        # The following is manually selected from zoomed plots!
        fit_before = poly1d(polyfit(frequencies_before, factors_before, orderBefore))
        fit_after = poly1d(polyfit(frequencies_after, factors_after, orderAfter))

    pltfile = open('../generated/{}-fit-response.plt'.format(serial_number), 'w')  # pylint:disable=consider-using-with,unspecified-encoding
    pltfile.write('set title "Least squares polynomial fit until {} Hz for UMIK-1 serial number {}"\n'.format(end, serial_number))
    pltfile.write('set term png size 1920,1080\n')
    pltfile.write(f'set output "graphs/{serial_number}-fit-sampled-response.png"\n')
    pltfile.write('set logscale x\n')
    pltfile.write('set xrange [10:25000]\n')
    pltfile.write('set xlabel "frequency [Hz]"\n')
    pltfile.write('set grid ytics lt 1\n')
    pltfile.write('set grid xtics lt 1\n')
    pltfile.write('set grid mxtics lt 0\n')

    if extra:
        for freq in ('44100', '48000', '3000', '375', ):
            outfile = open('../generated/{}-fit-sampled-response-{}.tsv'.format(serial_number, freq), 'w')  # pylint:disable=consider-using-with,unspecified-encoding
            infile = open('sox-frequencies-{}.txt'.format(freq), 'r')  # pylint:disable=consider-using-with,unspecified-encoding
            for line in infile:
                line = line.strip()
                if line != '':
                    frequency = float(line)
                    if frequency < 10.054:
                        factor = fit_before(frequency)
                    elif frequency <= 20016.816:
                        factor = interp(frequency, frequencies, factors)
                    else:
                        factor = fit_after(frequency)
                    outfile.write('{}\t{}\t{}\t{}\n'.format(line, factor, 10**(factor/10.0), sqrt(10**(factor/10.0))))  # freq, factor dB, power ratio, amplitude ratio  https://en.wikipedia.org/wiki/Decibel
        #    pltfile.write('"fit-sampled-response-%s.tsv" using 1:2 title "%s fit" with points, \\\n' % (freq, freq))
        #pltfile.write('"data/7007184.tsv" using 1:2 title "original" with lines\n')
            outfile = open('../generated/{}-fit-audacity-equalizer-{}.xml'.format(serial_number, freq), 'w')  # pylint:disable=consider-using-with,unspecified-encoding
            infile = open('sox-frequencies-{}.txt'.format(freq), 'r')  # pylint:disable=consider-using-with,unspecified-encoding
            outfile.write('<equalizationeffect>\n')
            outfile.write('\t<curve name="UMIK-1 {} @ {}">\n'.format(serial_number, freq))
            for line in infile:
                line = line.strip()
                if line != '':
                    frequency = float(line)
                    if frequency < 10.054:
                        factor = fit_before(frequency)
                    elif frequency <= 20016.816:
                        factor = interp(frequency, frequencies, factors)
                    else:
                        factor = fit_after(frequency)
                    outfile.write('\t\t<point f="{}" d="{}"/>\n'.format(line, factor))
            outfile.write('\t</curve>\n')
            outfile.write('</equalizationeffect>\n')

    pltfile.write('set xrange [1:25000]\n')
    outfile = open('../generated/{}-fit-response.tsv'.format(serial_number), 'w')  # pylint:disable=consider-using-with,unspecified-encoding
    for order in range(0, 5):
        for step in range(1, 10):
            start = step * 10**order
            for detail in range(0, 10):
                freq = (detail * start / (10.0 * step)) + start
                if freq < 10.054:
                    factor = fit_before(freq)
                elif freq <= 20016.816:
                    factor = interp(freq, frequencies, factors)
                else:
                    factor = fit_after(freq)
                outfile.write('{}\t{}\n'.format(freq, factor))
    pltfile.write('set title "Least squares polynomial fit for extrapolation to 1 Hz - 10.054 Hz and 20016.816 Hz - 25000 Hz and linear interpolation in between for UMIK-1 serial number {}"\n'.format(serial_number))
    pltfile.write(f'set output "graphs/{serial_number}-fit-response.png"\n')
    pltfile.write('plot "{}-fit-response.tsv" using 1:2 title "fitted" with lines, \\\n'.format(serial_number))
    pltfile.write('"../stripped/{}.tsv" using 1:2 title "original" with lines\n'.format(serial_number))


    #    for frequency in sorted(response.keys(), key=float):
    #        outfile.write('%f\t%s\n' % (frequency, response[frequency]))

if __name__ == '__main__':
    if len(argv) > 1:
        for number in open('serial-number-selection.txt', 'r'):  # pylint:disable=consider-using-with,unspecified-encoding
            main(number[:-1], extra=True)
    else:
        for number in sorted(glob('../stripped/???????.tsv')):
            main(number[12:-4])
