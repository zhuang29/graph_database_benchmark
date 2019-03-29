#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


#snb1: timeout 18000s python i_short_4.py $db_name 2061586500241 $num_test > ./result/is_4.out
#snb10: timeout 18000s python i_short_4.py $db_name 4947802324994 $num_test > ./result/is_4.out
timeout 18000s python i_short_4.py $db_name 2061586500241 $num_test > ./result/is_4.out
timeout 18000s python i_complex_5.py $db_name 17592186055119 20120501000000000 $num_test > ./result/ic_5.out
timeout 18000s python i_complex_13.py $db_name 8796093030404 26388279074461 $num_test > ./result/ic_13.out
timeout 18000s python bi_8.py $db_name Genghis_Khan $num_test > ./result/bi_8.out
timeout 18000s python bi_16.py $db_name 19791209310731 Pakistan MusicalArtist 3 5 $num_test > ./result/bi_16.out
timeout 18000s python bi_24.py $db_name Single $num_test > ./result/bi_24.out

