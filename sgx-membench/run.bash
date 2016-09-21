SEQUENCE="1 2 3 4 5 6 7 8 10 12 14 16 20 24 28 32 40 48 56 64 78 92 106 128 160 192 255"
DATE=`date +%Y.%m.%d_%H:%M:%S`
FILE=$DATE.log
touch $FILE
for i in $SEQUENCE; do
	echo "Memory size: $i"
	target/debug/sgx-membench $i >> $FILE
done
