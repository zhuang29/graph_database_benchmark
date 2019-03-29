#!/bin/bash
db_name=$1
num_test=$2

ssh node1 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_1.sh ${db_name} ${num_test}" &
ssh node2 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_2.sh ${db_name} ${num_test}" &
#ssh node3 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_3.sh ${db_name} ${num_test}" &
#ssh node4 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_4.sh ${db_name} ${num_test}" &
#ssh node5 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_5.sh ${db_name} ${num_test}" &
#ssh node6 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_6.sh ${db_name} ${num_test}" &
#ssh node7 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_7.sh ${db_name} ${num_test}" &
#ssh node8 "/home/zhiyi/graph_database_benchmark/neo4j/run_node_8.sh ${db_name} ${num_test}" &


