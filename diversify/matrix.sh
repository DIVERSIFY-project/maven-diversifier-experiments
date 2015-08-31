#!/bin/sh

if [[ -z $1 ]];
then
  echo  takes one argument, the recording data directory
  exit -1
fi

DEST=$1/data.csv
for i in `seq 1 14`; do
    for j in `seq 1 14`;  do
        result=$(java -cp Diffcompule-1.0-SNAPSHOT-jar-with-dependencies.jar Main $1/record_$i.jfr $1/record_$j.jfr)
        printf "$result;" >> $DEST
    done
    printf "\n" >> $DEST
done

# removes the trailing semi-columns
sed -i -e 's/;$//' $DEST
