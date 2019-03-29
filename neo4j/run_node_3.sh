#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


timeout 18000s python i_short_3.py $db_name 17592186053137 $num_test > ./result/is_3.out
timeout 18000s python i_complex_4.py $db_name 21990232559429 20120501000000000 37000000000 $num_test > ./result/ic_4.out
timeout 18000s python i_complex_12.py $db_name 17592186052613 BasketballPlayer $num_test > ./result/ic_12.out
timeout 18000s python bi_6.py $db_name Abbas_I_of_Persia $num_test > ./result/bi_6.out
timeout 18000s python bi_14.py $db_name 20120501000000000 20120604172000000 $num_test > ./result/bi_14.out
timeout 18000s python bi_22.py $db_name Mexico Indonesia $num_test > ./result/bi_22.out

