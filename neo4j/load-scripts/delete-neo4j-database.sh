#!/bin/bash
# . path.sh

$NEO4J_HOME/bin/neo4j stop
rm -rf $NEO4J_DB_DIR/$NEO4J_DB_NAME
