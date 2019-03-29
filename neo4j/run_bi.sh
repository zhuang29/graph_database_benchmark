#!/bin/bash
db_name=$1
num_test=$2
python bi_1.py $db_name 20110721220000000 $num_test > ./result/bi_1.out
python bi_2.py $db_name 20091231230000000 20101107230000000 Ethiopia Belarus $num_test > ./result/bi_2.out
python bi_3.py $db_name 2010 10 $num_test > ./result/bi_3.out
python bi_4.py $db_name 'MusicalArtist' 'Burma' $num_test > ./result/bi_4.out
python bi_5.py $db_name 'Belarus' $num_test > ./result/bi_5.out
python bi_6.py $db_name Abbas_I_of_Persia $num_test > ./result/bi_6.out
python bi_7.py $db_name Arnold_Schwarzenegger $num_test > ./result/bi_7.out
python bi_8.py $db_name Genghis_Khan $num_test > ./result/bi_8.out
python bi_9.py $db_name BaseballPlayer ChristianBishop 200 $num_test > ./result/bi_9.out
python bi_10.py $db_name John_Rhys-Davies 20120122000000000 $num_test > ./result/bi_10.out
python bi_11.py $db_name Germany "['also', 'Pope', 'that', 'James', 'Henry', 'one', 'Green']" $num_test > ./result/bi_11.out
python bi_12.py $db_name 20110721220000000 400 $num_test > ./result/bi_12.out
python bi_13.py $db_name Burma $num_test > ./result/bi_13.out
python bi_14.py $db_name 20120531220000000 20120630220000000 $num_test > ./result/bi_14.out
python bi_15.py $db_name Burma $num_test > ./result/bi_15.out
python bi_16.py $db_name 19791209310731 Pakistan MusicalArtist 3 5 $num_test > ./result/bi_16.out
python bi_17.py $db_name Spain $num_test > ./result/bi_17.out
python bi_18.py $db_name 20110722000000000 20 "['ar']" $num_test > ./result/bi_18.out
python bi_19.py $db_name 19890101 MusicalArtist OfficeHolder $num_test > ./result/bi_19.out
python bi_20.py $db_name "['Writer', 'Single', 'Country']" $num_test > ./result/bi_20.out
python bi_21.py $db_name Ethiopia 20130101000000000 $num_test > ./result/bi_21.out
python bi_22.py $db_name Mexico Indonesia $num_test > ./result/bi_22.out
python bi_23.py $db_name Egypt $num_test > ./result/bi_23.out
python bi_24.py $db_name Single $num_test > ./result/bi_24.out
python bi_25.py $db_name 19791209303405 19791209308983 20101031230000000 20101130230000000 $num_test > ./result/bi_25.out




