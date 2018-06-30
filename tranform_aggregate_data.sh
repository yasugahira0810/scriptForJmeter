#!/bin/sh

CSV_FILE=$1

while read line
do
  # 抽出
  timestamp=`echo $line | awk -F'[,]' -v 'OFS=,' '{print $1}'`
  #data=`echo $line | awk -F'[,]' -v 'OFS=,' '{print $3}'`

  # シリアル値 => 日時変換(分まで）
  date=`date -d @$timestamp "+%Y%m%d%H%M"`

  echo $date
done < $CSV_FILE
