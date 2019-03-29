#!/bin/bash
db_name=$1
num_test=$2

./run_node_1.sh ${db_name} ${num_test}
./run_node_2.sh ${db_name} ${num_test}
./run_node_3.sh ${db_name} ${num_test}
./run_node_4.sh ${db_name} ${num_test}
./run_node_5.sh ${db_name} ${num_test}
./run_node_6.sh ${db_name} ${num_test}
./run_node_7.sh ${db_name} ${num_test}
./run_node_8.sh ${db_name} ${num_test}

