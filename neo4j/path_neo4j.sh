#export NEO4J_HOME=/home/zhiyi/ecosys/neo4j-community-3.5.0
#export NEO4J_DB_DIR=$NEO4J_HOME/data/databases/graph.db

echo NEO4J_HOME
echo $NEO4J_HOME
echo NEO4J_DB
grep -E -o '.{0,10}neostore.counts.db.b' $NEO4J_DB_DIR/logs/debug.log

