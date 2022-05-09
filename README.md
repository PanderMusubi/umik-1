# UMIK-1

Documentation and custom software for calibrated omni-directional USB measurement
microphone [UMIK-1](https://minidsp.com/products/acoustic-measurement/umik-1)
from [miniDSP](https://minidsp.com) are offered here. An overall analysis of the
sensitivity and frequency response from the calibration files can be found, as
well as documentation on how to record on Linux systems such as a Raspberry Pi.

More importantly, extended calibration files and equalizers can be generated for
each UMIK-1 serial number. This is done with high order interpolation and
extrapolation for most industry standard sample frequencies. The results
increase the calibration range and resolution of your UMIK-1 with
[Audacity](https://audacityteam.org), [SoX](http://sox.sourceforge.net) or your
own custom software.

## Recording

You can record on Linux with the SoX as follows. Install SoX with this command.

    sudo apt-get install sox

Query the machine for which audio device are available.

    arecord -l|grep ^card

This will return a card number and a device number. Also it will show what the
dip switches settings for the gain in dB
[inside the microphone](https://www.minidsp.com/forum/umik-questions/9249-umik-new-pcb-installation-question).

    **** List of CAPTURE Hardware Devices ****
    card 1: U0dB [Umik-1  Gain:  0dB], device 0: USB Audio [USB Audio]
      Subdevices: 1/1
      Subdevice #0: subdevice #0

The factory settings used to be 12dB but is
[currently](https://www.minidsp.com/forum/umik-questions/10285-umik-1-standard-factory-gain)
18dB. Possible values are 0dB, 6dB, 12dB, 18dB, 24dB, 30dB and 36dB. This is
very practical that the settings are show on the command line. That prevents
opening the microphone to see what the gain via the dip switches is set to.

Set the following two environment variables to use the microphone in the
example above.

    export AUDIODEV=hw:1,0
    export AUDIODRIVER=alsa

Note that here `1` is the card number and `0` is the device number. Use the
values relevant for what the machine offers.

Recording with SoX 60 seconds after 5 seconds of waiting:

    rec -q -r 48000 -c 1 -b 24 --buffer 16384 filename.wav trim 5 60

Recording with Audacity works after selecting the 'Microphone - 2.0 root hub' device for sound input in the sound settings of your window manager. Press 'r' to start recording and 'space' to stop recording.


## Calibration

In directory calibration is a script called make-graph.sh for making a graph of
the frequency response based on the calibration files. An example is below.

![](https://raw.githubusercontent.com/PanderMusubi/umik-1/master/generated/graphs/7007184-fit-response.png)

## Practical tips

Best is to give each microphone an extra label with its serial number as the
default label with barcode can
[smudge](https://www.minidsp.com/forum/umik-questions/11202-labels-with-serial-numbers-smudge)
and turn unreadable.

Even you do not open the microphone to change its gain via dip switches, the
ring holding the microphone closed can sometimes become loose. Check this
sometimes to prevent damage.

## See also

Product description
https://www.minidsp.com/products/acoustic-measurement/umik-1

Product brief
https://www.minidsp.com/images/documents/Product%20Brief%20-%20Umik.pdf

Product forum
https://www.minidsp.com/forum/umik-questions

Product FAQ
https://minidsp.desk.com/customer/portal/topics/644663-umik-1-related-questions/articles

Home Theater Forum
https://www.hometheatershack.com/forums/spl-meters-mics-calibration-sound-cards/63808-minidsp-umik-1-microphone.html

# Issues

Report following error in `7005770.txt`

    19.369	-3.1312
    19.611	--3.1221
    19.855	-3.1116

Manually fixed in download.
