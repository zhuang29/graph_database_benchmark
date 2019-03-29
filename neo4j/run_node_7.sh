#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


#snb1: timeout 18000s python i_short_7.py $db_name 2061586500241 $num_test > ./result/is_7.out
#snb10: timeout 18000s python i_short_7.py $db_name 8246337208329 $num_test > ./result/is_7.out
timeout 18000s python i_short_7.py $db_name 2061586500241 $num_test > ./result/is_7.out
timeout 18000s python i_complex_8.py $db_name 24189255818757 $num_test > ./result/ic_8.out
timeout 18000s python bi_2.py $db_name 20080318008053020 20120524003033020 Spain Germany $num_test > ./result/bi_2.out
timeout 18000s python bi_18.py $db_name 19701026023006040 1000 "['ar']" $num_test > ./result/bi_18.out
timeout 18000s python bi_10.py $db_name John_Rhys-Davies 19701026023006040 $num_test > ./result/bi_10.out

