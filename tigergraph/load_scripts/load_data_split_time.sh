# raw data path
#export RAW_DATA_DIR=/home/zhiyi/raw/snb/tigergraph/social_network-1-test/
schema=setup_schema_split.gsql

. ./path.sh

gsql $schema 

t0=$(date +%s%N)
bash load_data_split.sh
tn=$(date +%s%N)
t=$((($tn - $t0)/1000000))
echo $t $RAW_DATA_DIR
echo $t $RAW_DATA_DIR >> ./loading.out
du -sb /local-disk/tigergraph/gstore/
du -sb /local-disk/tigergraph/gstore/ >> ./loading.out
echo "------------------------------completed load data---------------------------------------"
