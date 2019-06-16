cd ..
if [ ! -e stripped ]; then
    mkdir stripped
fi
cd stripped
# Strip headers from calibration files
for i in ../download/???????.txt; do
   tail -n +2 $i > ../stripped/`basename $i .txt`.tsv
done
for i in ../download/???????_90deg.txt; do
   tail -n +3 $i > ../stripped/`basename $i .txt`.tsv
done
#TODO SENSF=`grep 'Sens Factor' download/$SERNO.txt |awk -F '=' '{print $2}'|awk -F 'dB' '{print $1}'`
