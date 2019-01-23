Data Set
--------------------------------------
LDBC Social Network Benchmark Dataset(Scale Factor: 1)

Use ldbc_snb_datagen to generate


Hardware & Major enviroment
---------------------------------------
OS Ubuntu 16.04 LTS
Memory 256GB
Threads 56
Java build 1.8.0_191

Following python modules are required
sudo apt-get install python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 
sudo pip install tornado
sudo pip install neo4j-driver
sudo pip install requests
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
sudo pip install pycurl


Install Neo4j
---------------------------------------
Neo4j version
Neo4j 3.5.0 Community Edition downloaded from https://neo4j.com/download-center/#releases
wget https://neo4j.com/artifact.php?name=neo4j-community-3.5.0-unix.tar.gz

Extract the .tar file under a directory, eg. /path/install/
tar -xvf artifact.php\?name\=neo4j-community-3.5.0-unix.tar.gz

Set enviroment variable $NEO4J_HOME to NEO4J install directory in path_neo4j.sh
. ./path_neo4j.sh

Start server
$NEO4J_HOME/bin/neo4j start 

Stop server
$NEO4J_HOME/bin/neo4j stop

Create/change username and password cypher-shell, then exit
$NEO4J_HOME/bin/cypher-shell
user:neo4j
pass:neo4j

#change password
neo4j> CALL dbms.changePassword('benchmark')

#exit shell
neo4j> :exit

#log in again
cypher-shell -u neo4j -p benchmark


Load Data
----------------------------------------
Generate Data
Use ldbc_snb_datagen to generate raw data. For more details, go to
https://github.com/ldbc/ldbc_snb_datagen

Preprocess and Load Data
See descriptions in load_scripts/ directory
Note: make sure you have the read and write permission to the raw data directory

Record Neo4j loaded data size
du -sb $NEO4j_HOME/data/database/graph.db


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

To create indexes listed above one by one, execute each statement in cypher-shell
#create index
neo4j>CREATE INDEX ON :Message(id);

Record Neo4j index creation time
Get index creation start time
grep -n -r 'Index population started' $NEO4J_HOME/logs/debug.log

Get index creation end time
grep -n -r 'Index creation finished' $NEO4J_HOME/logs/debug.log

Record Neo4j loaded data size with index
du -sb $NEO4j_HOME/data/database/graph.db/schema/index/


Queries
----------------------------------------
LDBC SNB Queries written in Cypher are stored in queries/ directory


Run benchmark
----------------------------------------
Run the benchmark by:
./run_i_short.sh

Note: make sure you have the read and write permission to the current directory






