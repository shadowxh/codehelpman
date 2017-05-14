#!/bin/sh
# file name : batchcp.sh
# author: zhouhh
# Email: ablozhou@gmail.com
# Date : 2008.3.31
 
echo "input your file name"
 
read  FILENAME
 
echo "how many times you want copy?"
 
read TIMES
 
echo "your file name is ${FILENAME}, you want to copy ${TIMES} times."
 
BASE=`echo ${FILENAME}|cut -d "." -f 1`
EXT=`echo ${FILENAME}|cut -d "." -f 2`
 
for(( i=0;i<${TIMES};i++))
do
echo "copy ${BASE}.${EXT} to ${BASE}$i.${EXT} ..."
cp "${BASE}.${EXT}" "./other/${BASE}$i.${EXT}"
done
