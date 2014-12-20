umik-1
======

Documentation and software for calibrated omni-directional USB measurement microphone UMIK-1


Documentation
-------------

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


Recording
---------
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
In directory calibration is a script called make-graph.sh for making a graph of the frequency response based on the calibration files.
