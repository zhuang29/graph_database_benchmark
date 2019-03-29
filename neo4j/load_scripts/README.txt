Modeofy path in path.sh
. ./path.sh
#set path to Neo4j install directory, Neo4j database directory, raw data directory

./convert-data.sh
#replace headers with Neo4j-compatible ones
#replace labels (e.g. change `city` to `City`)
#convert date and datetime to integer formats


./delete-neo4j-database.sh
./import-to-neo4j.sh
./restart-neo4j.sh
Delete Neo4j database and load the SNB raw data


./load-in-one-step.sh
#execute convert-data.sh, delete-neo4j-database.sh, import-to-neo4j.sh, restart-neo4j.sh one by one
