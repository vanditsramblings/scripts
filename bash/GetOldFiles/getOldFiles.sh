#/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: getOldFiles.sh <count>getOldFiles.sh
  echo "count: the number of old files to get"
  exit
fi

thresholdCount=$1

count=`ls -1 | wc -l`
if [ $count > $thresholdCount ]
then
 difference=${count-$thresholdCount}
 dirnames=`ls -t * | tail -n $difference`
 arr=($dirnames)
 for i in "${arr[@]}"
  do
	 echo $i
  done
fi