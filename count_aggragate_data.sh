#!/bin/sh

TIMELINE_FILE=$1
AGGREGATE_FILE=$2

while read line
do
  num=`grep -c $line $AGGREGATE_FILE`
  echo $line,$num
done < $TIMELINE_FILE
