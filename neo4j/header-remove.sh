for filename in *.csv; do sed '1d' "${filename}" > ${filename}.tmp; done

rm *.csv

rename 's/.csv.tmp/.csv/g' *
