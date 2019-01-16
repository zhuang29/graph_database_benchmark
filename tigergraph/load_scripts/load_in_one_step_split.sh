# raw data path
#export RAW_DATA_DIR=/home/zhiyi/raw/snb/tigergraph/social_network-1-test/

. ./path.sh
echo "------------------------------completed set path----------------------------"

bash convert_data.sh
echo "------------------------------completed convert raw data----------------------------"

gsql setup_schema_split.gsql
echo "------------------------------completed setup schema---------------------------------------"

t0=$(date +%s%N)
bash load_data_split.sh
tn=$(date +%s%N)
t=$((($tn - $t0)/1000000))
echo $t $RAW_DATA_DIR
echo $t $RAW_DATA_DIR >> ./loading_split.out
du -sm /home/tigergraph/tigergraph/gstore/
du -sm /home/tigergraph/tigergraph/gstore/ >> ./loading_split.out
echo "------------------------------completed load data---------------------------------------"
