#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


timeout 18000s python i_short_1.py $db_name 17592186053137 $num_test > ./result/is_1.out
timeout 18000s python i_complex_2.py $db_name 17592186052613 20120501000000000 $num_test > ./result/ic_2.out
timeout 18000s python i_complex_10.py $db_name 30786325583618 11 $num_test > ./result/ic_10.out
timeout 18000s python bi_4.py $db_name 'MusicalArtist' 'Burma' $num_test > ./result/bi_4.out
timeout 18000s python bi_20.py $db_name "['Writer', 'Single', 'Country']" $num_test > ./result/bi_20.out
timeout 18000s python bi_7.py $db_name Arnold_Schwarzenegger $num_test > ./result/bi_7.out
