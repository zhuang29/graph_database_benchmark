#export RAW_DATA_DIR=/home/zhiyi/raw/snb/tigergraph/social_network-1-test/ #change to your raw data file
#export TOTAL_FILE_NUMBER=1 # numThreads specified in ldbc_snb_datagen/params.ini

echo "split vertrex place into city, country, continent"
g++ --std=c++11 SplitPlace.cpp -o SplitPlace
./SplitPlace ${RAW_DATA_DIR} ${TOTAL_FILE_NUMBER} 
echo "#####################################################"
echo "split vertex organisation done"


echo "split vertrex organisation to company, university"
g++ --std=c++11 SplitOrganisation.cpp -o SplitOrganisation
./SplitOrganisation ${RAW_DATA_DIR} ${TOTAL_FILE_NUMBER} 
echo "#####################################################"
echo "split vertex organisation done"


i="0"
while [ $i -lt ${TOTAL_FILE_NUMBER} ]
do
#  rm "${RAW_DATA_DIR}place_${i}_0.csv"
  i=$[$i+1]
done

echo "#####################################################"
echo "split edge organisation_isLocatedIn_place into:
	university_isLocatedIn_city, company_isLocatedIn_country"
echo "split edge place_isPartOf_place into: 
	city_isPartOf_country, country_isPartOf_continent"
g++ --std=c++11 SplitEdges.cpp -o SplitEdges
./SplitEdges ${RAW_DATA_DIR} ${TOTAL_FILE_NUMBER}

echo "#####################################################"
echo "split organisation_isLocatedIn_place_#_0.csv, place_isLocatedIn_place done"

i="0"
while [ $i -lt ${TOTAL_FILE_NUMBER} ]
do
#  rm "${RAW_DATA_DIR}organisation_isLocatedIn_place_${i}_0.csv"
#  rm "${RAW_DATA_DIR}place_isPartOf_place_${i}_0.csv"
  i=$[$i+1]
done
