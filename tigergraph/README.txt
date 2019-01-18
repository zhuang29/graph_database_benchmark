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

Install a GSQL query by:
gsql i_short_1.gsql

Install all queries by:
./install.sh

Run benchmark
----------------------------------------
Run the benchmark by:
./run_i_short.sh

Note: make sure you have the read and write permission to the current directory






