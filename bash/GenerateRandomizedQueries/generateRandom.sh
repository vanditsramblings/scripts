#!/bin/bash

echo "Generating Inserts"
echo "" > inserts.cql

for i in {1..$1}
do
 INSERT_QUERY="insert into table(col1,col2) values(${i},$(($i*$RANDOM)));"
 echo $INSERT_QUERY >> inserts.cql
done