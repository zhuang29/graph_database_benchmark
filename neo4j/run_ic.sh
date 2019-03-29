#!/bin/bash
#./run_i_complex.sh snb_1 3
db_name=$1
num_test=$2

python i_complex_1.py $db_name 30786325583618 Carmen $num_test > ./result/ic_1.out
python i_complex_2.py $db_name 17592186052613 20121127160000 $num_test > ./result/ic_2.out
python i_complex_3.py $db_name 17592186055119 20110531170000 42 'Laos' 'Scotland' $num_test > ./result/ic_3.out
python i_complex_4.py $db_name 21990232559429 20120430170000 37 $num_test > ./result/ic_4.out
python i_complex_5.py $db_name 17592186055119 20120926170000 $num_test > ./result/ic_5.out
python i_complex_6.py $db_name 30786325583618 Angola $num_test > ./result/ic_6.out
python i_complex_7.py $db_name 17592186053137 $num_test > ./result/ic_7.out
python i_complex_8.py $db_name 24189255818757 $num_test > ./result/ic_8.out
python i_complex_9.py $db_name 13194139542834 20111216160000 $num_test > ./result/ic_9.out
python i_complex_10.py $db_name 30786325583618 11 $num_test > ./result/ic_10.out
python i_complex_11.py $db_name 30786325583618 Laos 2010 $num_test > ./result/ic_11.out
python i_complex_12.py $db_name 17592186052613 BasketballPlayer $num_test > ./result/ic_12.out
python i_complex_13.py $db_name 17592186055119 8796093025131 $num_test > ./result/ic_13.out
python i_complex_14.py $db_name 17592186055119 10995116282665 $num_test > ./result/ic_14.out

