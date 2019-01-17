#!/bin/bash
# . path.sh

# remove the first line of each csv file
files=$(find ${NEO4J_DATA_DIR} -name '*.csv')
for csv in $files
do
  sed '1d' $csv > tmp.csv && mv tmp.csv $csv
done

# add header files
while read line; do
  IFS=' ' read -r -a array <<< $line
  filename=${array[0]}
  header=${array[1]}
  touch ${NEO4J_DATA_DIR}/${filename}_header.csv
  echo "${header}" > ${NEO4J_DATA_DIR}/${filename}_header.csv
done < headers.txt

# replace labels with one starting with an uppercase letter
find ${NEO4J_DATA_DIR} -name 'place_[0-9]*.csv' -exec sed -i "s/|city$/|City/" {} \;
find ${NEO4J_DATA_DIR} -name 'place_[0-9]*.csv' -exec sed -i "s/|country$/|Country/" {} \;
find ${NEO4J_DATA_DIR} -name 'place_[0-9]*.csv' -exec sed -i "s/|continent$/|Continent/" {} \;
find ${NEO4J_DATA_DIR} -name 'organisation_[0-9]*.csv' -exec sed -i "s/|company$/|Company/" {} \;
find ${NEO4J_DATA_DIR} -name 'organisation_[0-9]*.csv' -exec sed -i "s/|university$/|University/" {} \;

# convert each date of format yyyy-mm-dd to a number of format yyyymmddd
# find ${NEO4J_DATA_DIR} -name 'person_[0-9]*.csv' -exec sed -i "s#|\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)|#|\1\2\3|#g" {} \;

# convert each datetime of format yyyy-mm-ddThh:mm:ss.mmm+0000
# to a number of format yyyymmddhhmmssmmm
# find ${NEO4J_DATA_DIR} -name *.csv -exec sed -i "s#|\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\)T\([0-9][0-9]\):\([0-9][0-9]\):\([0-9][0-9]\)\.\([0-9][0-9][0-9]\)+0000#|\1\2\3\4\5\6\7#g" \;
