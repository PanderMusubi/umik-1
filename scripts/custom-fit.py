'''Fits with extrapolation.'''

from glob import glob
from math import sqrt
from os.path import isfile
from sys import argv
from numpy import array, append, poly1d, polyfit, interp

def main(serial_number, extra=False):
    '''Fits with extrapolation.'''
    
    freq_range = ('44100', '48000')
    own = ('7007184', '7009115', '7009116', '7009117', '7009118')
    if serial_number in own:
        freq_range = ('44100', '48000', '3000', '375')
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
    for line in infile:
        if line == '' or line == '\n':
            continue
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

    start = 1.0
    end = 24000.0

    # The following is manually selected from zoomed plots!
    order_before = 6
    order_after = 3

    # The following is manually selected from zoomed plots!
    fit_before = poly1d(polyfit(frequencies_before, factors_before, order_before))
    fit_after = poly1d(polyfit(frequencies_after, factors_after, order_after))

    if extra:
        pltfile = open(f'../generated/{serial_number}-fit-before.plt', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
        pltfile.write(f'set title "Least squares polynomial fit from {start} Hz for UMIK-1 serial number {serial_number}"\n')
        pltfile.write('set term png size 1920,1080\n')
        pltfile.write(f'set output "{serial_number}-fit-before.png"\n')
        pltfile.write('set logscale x\n')
        pltfile.write('set xrange [1:100]\n')
        pltfile.write('set xlabel "frequency [Hz]"\n')
        pltfile.write('set grid ytics lt 1\n')
        pltfile.write('set grid xtics lt 1\n')
        pltfile.write('set grid mxtics lt 0\n')
        pltfile.write('plot \\\n')
        for n in (3, 4, 5, 6, 7, 8, 9, ):
            fit = poly1d(polyfit(frequencies_before, factors_before, n))
            outfile = open(f'../generated/{serial_number}-fit-before-{n}.tsv', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
            frequency = start
            while frequency <= 11.0:
                outfile.write(f'{frequency}\t{fit(frequency)}\n')
                frequency += 0.125
            if n == order_before:
                pltfile.write(f'"{serial_number}-fit-before-{n}.tsv" using 1:2 title "chosen {n}-order fit before", \\\n')
            else:
                pltfile.write(f'"{serial_number}-fit-before-{n}.tsv" using 1:2 title "{n}-order fit before", \\\n')
        pltfile.write(f'"../stripped/{serial_number}.tsv" using 1:2 title "original" with lines\n')
        pltfile.write(f'set title "Zoomed least squares polynomial fit from {start} - 50.0 Hz for UMIK-1 serial number {serial_number}"\n')
        pltfile.write(f'set output "{serial_number}-fit-before-zoom.png"\n')
        pltfile.write('set xrange [5:50]\n')
        pltfile.write('set yrange [-8:0]\n')
        pltfile.write('replot\n')

        pltfile = open(f'../generated/{serial_number}-fit-after.plt', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
        pltfile.write(f'set title "Least squares polynomial fit until {end} Hz for UMIK-1 serial number {serial_number}"\n')
        pltfile.write('set term png size 1920,1080\n')
        pltfile.write(f'set output "{serial_number}-fit-after.png"\n')
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
            if n == order_after:
                pltfile.write(f'"{serial_number}-fit-after-{n}.tsv" using 1:2 title "chosen {n}-order fit after", \\\n')
            else:
                pltfile.write(f'"{serial_number}-fit-after-{n}.tsv" using 1:2 title "{n}-order fit after", \\\n')
        pltfile.write(f'"../stripped/{serial_number}.tsv" using 1:2 title "original" with lines\n')
        pltfile.write(f'set title "Zoomed least squares polynomial fit until 16000.0 - {end} Hz for UMIK-1 serial number {serial_number}"\n')
        pltfile.write(f'set output "{serial_number}-fit-after-zoom.png"\n')
        pltfile.write('set xrange [16000:24000]\n')
        pltfile.write('set yrange [-6:4]\n')
        pltfile.write('replot\n')

    for freq in freq_range:
        outfile = open(f'../generated/{serial_number}-fit-sampled-response-{freq}.tsv', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
        infile = open(f'sox-frequencies-{freq}.txt', 'r')  # pylint:disable=consider-using-with,unspecified-encoding
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
        outfile = open(f'../generated/{serial_number}-fit-audacity-equalizer-{freq}.xml', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
        infile = open(f'sox-frequencies-{freq}.txt', 'r')  # pylint:disable=consider-using-with,unspecified-encoding
        outfile.write('<equalizationeffect>\n')
        outfile.write(f'\t<curve name="UMIK-1 {serial_number} @ {freq}">\n')
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
                outfile.write(f'\t\t<point f="{line}" d="{factor}"/>\n')
        outfile.write('\t</curve>\n')
        outfile.write('</equalizationeffect>\n')

    pltfile = open(f'../generated/{serial_number}-fit-response.plt', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
    pltfile.write(f'set title "Least squares polynomial fit until {end} Hz for UMIK-1 serial number {serial_number}"\n')
    pltfile.write('set term png size 1920,1080\n')
    pltfile.write(f'set output "{serial_number}-fit-sampled-response.png"\n')
    pltfile.write('set logscale x\n')
    pltfile.write('set xrange [10:25000]\n')
    pltfile.write('set xlabel "frequency [Hz]"\n')
    pltfile.write('set grid ytics lt 1\n')
    pltfile.write('set grid xtics lt 1\n')
    pltfile.write('set grid mxtics lt 0\n')
    pltfile.write('set xrange [1:25000]\n')
    outfile = open(f'../generated/{serial_number}-fit-response.tsv', 'w')  # pylint:disable=consider-using-with,unspecified-encoding
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
                outfile.write(f'{freq}\t{factor}\n')
    pltfile.write('set title "Least squares polynomial fit for extrapolation to 1 Hz - 10.054 Hz and 20016.816 Hz - 25000 Hz and linear interpolation in between for UMIK-1 serial number {}"\n'.format(serial_number))
    pltfile.write(f'set output "{serial_number}-fit-response.png"\n')
    pltfile.write(f'plot "{serial_number}-fit-response.tsv" using 1:2 title "fitted" with lines, \\\n')
    pltfile.write(f'"../stripped/{serial_number}.tsv" using 1:2 title "original" with lines\n')


    #    for frequency in sorted(response.keys(), key=float):
    #        outfile.write('%f\t%s\n' % (frequency, response[frequency]))

if __name__ == '__main__':
    if len(argv) > 1:
        for number in open('serial-number-selection.txt', 'r'):  # pylint:disable=consider-using-with,unspecified-encoding
            main(number[:-1], extra=True)
    else:
        for number in sorted(glob('../stripped/???????.tsv')):
            main(number[12:-4])
