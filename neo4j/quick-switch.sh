db=$1
#/home/zhiyi/ecosys/neo4j-community-3.5.0/bin/neo4j stop
./stop.sh
rm -rf /home/zhiyi/ecosys/neo4j-community-3.5.0/data/databases/graph.db
ln -s /home/zhiyi/ecosys/neo4j-community-3.5.0/data/databases/"$db".db /home/zhiyi/ecosys/neo4j-community-3.5.0/data/databases/graph.db
#sleep 1
./start.sh
#/home/zhiyi/ecosys/neo4j-community-3.5.0/bin/neo4j start
sleep 2
