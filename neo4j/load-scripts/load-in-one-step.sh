#!/bin/bash
. path.sh

echo "----- delete-neo4j-database.sh BEGIN"
./delete-neo4j-database.sh
echo "----- delete-neo4j-database.sh END"
echo "----- convert-csvs.sh BEGIN"
./convert-csvs.sh
echo "----- convert-csvs.sh END"
echo "----- import-to-neo4j.sh BEGIN"
./import-to-neo4j.sh
echo "----- import-to-neo4j.sh END"
echo "----- restart-neo4j.sh BEGIN"
./restart-neo4j.sh
echo "----- restart-neo4j.sh END"
