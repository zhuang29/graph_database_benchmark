#!/bin/bash
db_name=$1
num_test=$2

./run_i_short.sh $db_name $num_test
./run_i_complex.sh $db_name $num_test
./run_bi.sh $db_name $num_test
