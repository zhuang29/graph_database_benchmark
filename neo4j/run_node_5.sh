#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


#snb1: timeout 18000s python i_short_5.py $db_name 2061586500241 $num_test > ./result/is_5.out
#snb10: timeout 18000s python i_short_5.py $db_name 4947802324994 $num_test > ./result/is_5.out
timeout 18000s python i_short_5.py $db_name 4947802324994 $num_test > ./result/is_5.out
timeout 18000s python i_complex_6.py $db_name 30786325583618 Angola $num_test > ./result/ic_6.out
timeout 18000s python i_complex_14.py $db_name 8796093030404 26388279074461 $num_test > ./result/ic_14.out
timeout 18000s python bi_15.py $db_name Burma $num_test > ./result/bi_15.out
timeout 18000s python bi_23.py $db_name Egypt $num_test > ./result/bi_23.out
timeout 18000s python bi_12.py $db_name 20120501000000000 400 $num_test > ./result/bi_12.out

