#!/bin/bash
db_name=$1
num_test=$2

python i_short_1.py $db_name 30786325583618 $num_test > ./result/is_1.out
python i_short_2.py $db_name 30786325583618 $num_test > ./result/is_2.out
python i_short_3.py $db_name 30786325583618 $num_test > ./result/is_3.out
python i_short_4.py $db_name 1236950581248 $num_test > ./result/is_4.out
python i_short_5.py $db_name 1236950581248 $num_test > ./result/is_5.out
python i_short_6.py $db_name 1236950581248 $num_test > ./result/is_6.out
python i_short_7.py $db_name 1236950581248 $num_test > ./result/is_7.out
