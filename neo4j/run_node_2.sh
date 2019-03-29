#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


timeout 18000s python i_short_2.py $db_name 17592186053137 $num_test > ./result/is_2.out
timeout 18000s python i_complex_3.py $db_name 17592186055119 20120501000000000 42000000000 'Laos' 'Scotland' $num_test > ./result/ic_3.out
timeout 18000s python i_complex_11.py $db_name 30786325583618 Laos 2010 $num_test > ./result/ic_11.out
timeout 18000s python bi_5.py $db_name 'Belarus' $num_test > ./result/bi_5.out
timeout 18000s python bi_13.py $db_name Burma $num_test > ./result/bi_13.out
timeout 18000s python bi_21.py $db_name Ethiopia 2012050100000000 $num_test > ./result/bi_21.out

