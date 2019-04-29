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
wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.2/apoc-3.5.0.2-all.jar

Extract the .tar file under a directory, eg. /path/install/
tar -xvf artifact.php\?name\=neo4j-community-3.5.0-unix.tar.gz

Set enviroment variable $NEO4J_HOME to NEO4J install directory in path_neo4j.sh
. ./path_neo4j.sh

Comfigure Neo4j memory
$NEO4J_HOME/bin/neo4j-admin memrec

# Based on the above, the following memory settings are recommended:
dbms.memory.heap.initial_size=31g
dbms.memory.heap.max_size=31g
dbms.memory.pagecache.size=194000m

Append the 3 lines to $NEO4J_HOME/conf/neo4j.conf

Move apoc-3.5.0.2-all.jar to $NEO4J_HOME/plugins/
mv apoc-3.5.0.2-all.jar $NEO4J_HOME/plugins/

Append following lines $NEO4J_HOME/conf/neo4j.conf/neo4j.conf
dbms.security.procedures.unrestricted=apoc.*

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
$NEO4J_HOME/bin/cypher-shell -u neo4j -p benchmark

Alternatively, disable authentication by modifying Neo4j conf
vim $NEO4J_HOME/conf/neo4j.conf
uncomment line 26

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

Different indexing strategies could have different impact to different quries. At minimum, the following indexes should be considered
CREATE INDEX ON :Message(id);    
CREATE INDEX ON :Comment(id);    
CREATE INDEX ON :Forum(id);    
CREATE INDEX ON :Organisation(id);    
CREATE INDEX ON :Person(id);    
CREATE INDEX ON :Place(name);    
CREATE INDEX ON :Post(id);    
CREATE INDEX ON :Tag(name);    
CREATE INDEX ON :TagClass(name);

To create indexes one by one, execute each statement in cypher-shell
#create index
neo4j>CREATE INDEX ON :Message(id);

To create all indexes
$NEO4J_HOME/bin/cypher-shell < ./load_script/index/index-ldbc.cql
Monitor indexes population, wait until 100% finished
neo4j>CALL db.indexes;

Record Neo4j index creation time
python time_index.py

Record Neo4j index size
du -sb $NEO4j_HOME/data/database/graph.db/schema/index/


Run benchmark
----------------------------------------
Warm up NEO4J, wait until finshed and keep the cypher-shell open(warm up may take a long time)
neo4j>call apoc.warmup.run(true, true);

Use another terminal to run the benchmark:
./run.sh DB_NAME NUMBER_TEST
eg.
./run.sh snb-1 5

Note: make sure you have the read and write permission to the current directory
