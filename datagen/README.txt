Download ldbc_snb_datagen
git clone https://github.com/ldbc/ldbc_snb_datagen

Download Hadoop
wget http://archive.apache.org/dist/hadoop/core/hadoop-2.6.0/hadoop-2.6.0.tar.gz
tar xf hadoop-2.6.0.tar.gz

ldbc_snb_datagen configuration
In params-composite.ini, indentify size of data to generate. To generate SF=1 data:
ldbc.snb.datagen.generator.scaleFactor:snb.interactive.

In run.sh, set path and config
export HADOOP_CLIENT_OPTS="-Xmx2G"
export HADOOP_HOME=/path/to/hadoop/
export LDB_SNB_DATAGEN_HOME=/path/to/ldbc-snb-datagen

In run.sh, modify line 21 from
$HADOOP_HOME/bin/hadoop jar $LDBC_SNB_DATAGEN_HOME/target/ldbc_snb_datagen-0.2.7-jar-with-dependencies.jar $LDBC_SNB_DATAGEN_HOME/params.ini
To
$HADOOP_HOME/bin/hadoop jar $LDBC_SNB_DATAGEN_HOME/target/ldbc_snb_datagen-0.2.7-jar-with-dependencies.jar $LDBC_SNB_DATAGEN_HOME/params-composite.ini
#With params-composite.ini, data column email and speaks will be populated into person_0_0.csv


Generte data
./run.sh

Note: assign a larger value to HADOOP_CLIENT_OPTS environment variable for larger data
