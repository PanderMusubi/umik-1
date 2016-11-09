#TODO SENSF=`grep 'Sens Factor' download/$SERNO.txt |awk -F '=' '{print $2}'|awk -F 'dB' '{print $1}'`

if [ ! -e data ]
then
    mkdir data
fi

# Strip headers from calibration files
for i in ../minidsp.com/umikcal/???????.txt
do
   tail -n +2 $i >data/`basename $i .txt`.tsv
done
for i in ../minidsp.com/umikcal/???????\_90deg.txt
do
   tail -n +3 $i >data/`basename $i .txt`.tsv
done
