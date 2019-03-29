#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


#snb1: timeout 18000s python i_short_6.py $db_name 2061586500241 $num_test > ./result/is_6.out
#snb10: timeout 18000s python i_short_6.py $db_name 4947802324994 $num_test > ./result/is_6.out
timeout 18000s python i_short_6.py $db_name 2061586500241 $num_test > ./result/is_6.out
timeout 18000s python i_complex_7.py $db_name 17592186053137 $num_test > ./result/ic_7.out
timeout 18000s python bi_1.py $db_name 20120501000000000 $num_test > ./result/bi_1.out
timeout 18000s python bi_9.py $db_name BaseballPlayer ChristianBishop 200 $num_test > ./result/bi_9.out
timeout 18000s python bi_17.py $db_name Spain $num_test > ./result/bi_17.out
timeout 18000s python bi_25.py $db_name 21990232557814 28587302324583 20120401000000000 20120501000000000 $num_test > ./result/bi_25.out

