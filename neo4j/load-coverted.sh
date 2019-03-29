#!/bin/bash
. ./path.sh

./delete-neo4j-database.sh  && ./import-to-neo4j.sh && ./restart-neo4j.sh

./show-size.sh
