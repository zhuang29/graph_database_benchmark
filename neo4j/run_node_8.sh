#!/bin/bash

db_name=$1
num_test=$2

#path='graph_database_benchmark/neo4j/'
#cd $path


timeout 18000s python i_complex_1.py $db_name 30786325583618 Carmen $num_test > ./result/ic_1.out
timeout 18000s python i_complex_9.py $db_name 13194139542834 20120524003033020 $num_test > ./result/ic_9.out
timeout 18000s python bi_3.py $db_name 2010 10 $num_test > ./result/bi_3.out
timeout 18000s python bi_11.py $db_name Germany "['also', 'Pope', 'that', 'James', 'Henry', 'one', 'Green']" $num_test > ./result/bi_11.out
timeout 18000s python bi_19.py $db_name 19700101005031030 MusicalArtist OfficeHolder $num_test > ./result/bi_19.out

