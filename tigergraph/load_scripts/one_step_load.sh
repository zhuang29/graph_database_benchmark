# raw data path
export RAW_DATA_ROOT_FOLDER=/home/zhiyi/raw/snb/tigergraph/social_network-1-test/

bash convert_data.sh
echo "------------------------------completed convert raw data----------------------------"

gsql setup_schema.gsql
echo "------------------------------completed setup schema---------------------------------------"

t0=$(date +%s%N)
bash load_data.sh
tn=$(date +%s%N)
t=$((($tn - $t0)/1000000))
echo $t $RAW_DATA_ROOT_FOLDER
echo $t $RAW_DATA_ROOT_FOLDER >> ./loading.out
du -sm /home/tigergraph/tigergraph/gstore/
du -sm /home/tigergraph/tigergraph/gstore/ >> ./loading.out
echo "------------------------------completed load data---------------------------------------"
