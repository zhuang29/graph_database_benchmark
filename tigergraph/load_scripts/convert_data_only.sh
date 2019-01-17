#!/bin/bash

# replace labels with one starting with an uppercase letter
export RAW_DATA_DIR=/home/zhiyi/raw/snb/tigergraph/social_network-30
export POSTFIX=_0_0.csv
sed -i "s/|city$/|City/" "${RAW_DATA_DIR}/place${POSTFIX}"
sed -i "s/|country$/|Country/" "${RAW_DATA_DIR}/place${POSTFIX}"
sed -i "s/|continent$/|Continent/" "${RAW_DATA_DIR}/place${POSTFIX}"
sed -i "s/|company|/|Company|/" "${RAW_DATA_DIR}/organisation${POSTFIX}"
sed -i "s/|university|/|University|/" "${RAW_DATA_DIR}/organisation${POSTFIX}"

rename 's/comment/comments/g' ${RAW_DATA_DIR}/*.csv

#sed -i "s/|city$/|City/" "${RAW_DATA_DIR}/city/city.csv"
#sed -i "s/|country$/|Country/" "${RAW_DATA_DIR}/country/country.csv"
#sed -i "s/|continent$/|Continent/" "${RAW_DATA_DIR}/continent/continent.csv"
#sed -i "s/|company|/|Company|/" "${RAW_DATA_DIR}/organisation/organisation${POSTFIX}"
#sed -i "s/|university|/|University|/" "${RAW_DATA_DIR}/organisation/organisation${POSTFIX}"

# convert each date of format yyyy-mm-dd to a number of format yyyymmddd
sed -i "s#|\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)|#|\1\2\3|#g" "${RAW_DATA_DIR}/person${POSTFIX}"

# convert each datetime of format yyyy-mm-ddThh:mm:ss.mmm+0000
# to a number of format yyyymmddhhmmssmmm
#sed -i "s#|\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)T\([0-9][0-9]\):\([0-9][0-9]\):\([0-9][0-9]\)\.\([0-9][0-9][0-9]\)+0000#|\1\2\3\4\5\6\7#g" ${RAW_DATA_DIR}/*${POSTFIX}

sed -i "s#|\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)T\([0-9][0-9]\):\([0-9][0-9]\):\([0-9][0-9]\)\.\([0-9][0-9][0-9]\)+0000#|\1\2\3\4\5\6\7#g" ${RAW_DATA_DIR}/*.csv
