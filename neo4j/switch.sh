. ./path_neo4j.sh

db=$1
NEO4J_DB_DIR=$NEO4J_HOME/data/databases/$db.db

$NEO4J_HOME/bin/neo4j stop

rm -rf $NEO4J_HOME/data/databases/graph.db
ln -s $NEO4J_HOME/data/databases/"$db".db $NEO4J_HOME/data/databases/graph.db

$NEO4J_HOME/bin/neo4j start

sleep 15
