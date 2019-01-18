Load Data
----------------------------------------
Generate Data
Use ldbc_snb_datagen to generate raw data. For more details, go to
https://github.com/ldbc/ldbc_snb_datagen

Preprocess and Load Data
See descriptions in load_scripts/ directory
Note: make sure you have the read and write permission to the raw data directory



Create Index
----------------------------------------
After modifying NEO4J installation path in path_neo4j.sh, execute it
. ./path_neo4j.sh

Switch Neo4j loaded data directory
./switch snb-1

Different indexing strategies could have different impact to different quries. At minimum, index on id fields should be considered
CREATE INDEX ON :Message(id);    
CREATE INDEX ON :Comment(id);    
CREATE INDEX ON :Forum(id);    
CREATE INDEX ON :Organisation(id);    
CREATE INDEX ON :Person(id);    
CREATE INDEX ON :Place(name);    
CREATE INDEX ON :Post(id);    
CREATE INDEX ON :Tag(name);    
CREATE INDEX ON :TagClass(name);

Record Neo4j loaded data size before and after index creation
du -sh /path/to/neo4j-community-version/data/database/graph.db

Record Neo4j index creation time
Get index creation start time
grep -n -r 'Index population started' /path/to/neo4j-community-version/logs/debug.log

Get index creation end time
grep -n -r 'Index creation finished' /path/to/neo4j-community-version/logs/debug.log


Queries
----------------------------------------
LDBC SNB Queries written in Cypher are stored in queries/ directory


Run benchmark
----------------------------------------
Run the benchmark by:
./run_i_short.sh

Note: make sure you have the read and write permission to the current directory






