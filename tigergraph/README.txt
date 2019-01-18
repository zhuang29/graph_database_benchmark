Data Set
--------------------------------------
LDBC Social Network Benchmark Dataset(Scale Factor: 1)

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


Install Tigergraph
---------------------------------------
Tigergraph version
TigerGraph Devloper Editon downloaded from http://download.tigergraph.com/

Extract downloaded .tar file
tar -xvf tigergraph-developer-latest.tar.gz 

Install TigerGraph Developer Edition
Installation video reference here https://www.youtube.com/watch?v=q-vAioBUwkI&t=3s


Enable READ and WRITE permission for TigerGraph User
---------------------------------------
Tigergraph user
Default name: tigerGraph
Default password: tigergraph

Grant Read and Write permission to the tigergraph user on 
-Raw data directory
-Script directory


Load Data
----------------------------------------
Generate Data
Use ldbc_snb_datagen to generate raw data. For more details, go to
https://github.com/ldbc/ldbc_snb_datagen

Preprocess and Load Data
See descriptions in load_scripts/ directory
Note: make sure you have the read and write permission to the raw data directory

Queries
----------------------------------------
LDBC SNB Queries written in GSQL are stored in queries/ directory
Queries have to be installed before execution

Install a GSQL query
gsql i_short_1.gsql

Install all queries
./install.sh

Run benchmark
----------------------------------------
Run the benchmark
./run_i_short.sh

Note: make sure you have the read and write permission to the current directory






