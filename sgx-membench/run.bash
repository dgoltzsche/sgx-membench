SEQUENCE="1 2 3 4 5 6 7 8 10 12 14 16 20 24 28 32 40 48 56 64 78 92 106 128 160 192 255"
DATE=`date +%Y.%m.%d_%H:%M:%S`
FILE=$DATE.log
touch $FILE
for i in $SEQUENCE; do
	mb=$(($i*1024*1024))
	echo "Memory size: $mb"
	target/release/sgx-membench $mb >> $FILE
done
