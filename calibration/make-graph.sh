# Serial number (adjust only this setting for your microphone)
SERNO=7007184
# Sensitivity factor
SENSF=`grep 'Sens Factor' $SERNO.txt |awk -F '=' '{print $2}'|awk -F 'dB' '{print $1}'`
# Strip headers from calibration files
tail -n +2 $SERNO.txt >$SERNO.dat
tail -n +3 $SERNO\_90deg.txt >$SERNO\_90deg.dat
# Use serial number and sensitivity factor in gnuplot template
sed -e 's/SERNO/'$SERNO'/g' response.tpl |sed -e 's/SENSF/'$SENSF'/g'>response-$SERNO.plt
# Create frequency response graph
gnuplot response-$SERNO.plt
