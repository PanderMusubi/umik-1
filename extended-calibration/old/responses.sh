for SERNO in `cat serial-numbers-custom-export.txt`
do
    ./response.sh $SERNO
done
