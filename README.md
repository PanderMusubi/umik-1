# UMIK-1

Documentation and software for calibrated omni-directional USB measurement microphone
[UMIK-1](https://minidsp.com/products/acoustic-measurement/umik-1) from
[miniDSP](https://minidsp.com). An overall analysis of the sensitivity and
frequency response from the calibration files can be found, as well as
documentation on how to record on Linux systems such as a Raspberry Pi.

More importantly, extended calibration files and equalizers can be generated for
each UMIK-1 serial number. This is done with high order interpolation and
extrapolation for most industry standard sample frequencies. The results
increase the calibration range and resolution of your UMIK-1 with
[Audacity](https://audacityteam.org), [SoX](http://sox.sourceforge.net) or your
own custom software.


## Documentation

Product description (also in directory minidsp.com)
http://www.minidsp.com/products/acoustic-measurement/umik-1

Product brief (also in directory minidsp.com)
http://www.minidsp.com/images/documents/Product%20Brief%20-%20Umik.pdf

Product forum
http://www.minidsp.com/forum/umik-questions

Product FAQ
https://minidsp.desk.com/customer/portal/topics/644663-umik-1-related-questions/articles

Home Theater Forum
http://www.hometheatershack.com/forums/spl-meters-mics-calibration-sound-cards/63808-minidsp-umik-1-microphone.html


## Recording

You can record in Linux with the following software.

Recording with SoX 60 seconds after 5 seconds of waiting:

```
$ sudo apt-get install sox
$ export AUDIODEV=hw:1,0
$ export AUDIODRIVER=alsa
$ rec -q -r 48000 -c 1 -b 24 --buffer 16384 filename.wav trim 5 60
```

Recording with Audacity works after selecting the 'Microphone - 2.0 root hub' device for sound input in the sound settings of your window manager. Press 'r' to start recording and 'space' to stop recording.


Calibration
-----------
In directory calibration is a script called make-graph.sh for making a graph of the frequency response based on the calibration files. An example is below.

![](https://raw.githubusercontent.com/PanderMusubi/umik-1/master/calibration/response-7007184.png)
