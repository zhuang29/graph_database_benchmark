length=$2
db=$1
total=0
pathResult="./result"
pathNeo4j="/home/zhiyi/ecosys/neo4j-community-3.5.0"
for i in $( seq 1 7)
do
	total=0
	for j in $( seq 1 $length )
    do
    	t0=$(date +%s%N)
    	$pathNeo4j/bin/cypher-shell < ./interactive-short-$i.cypher > $pathResult/interactive-short-$i.out
    	tn=$(date +%s%N)
    	t=$((($tn - $t0)/1000000))
    	total=$(($t + $total))
    	echo "$db interactive-short-$i.cypher NO.$j time: " $t >> $pathResult/time-interactive-short.out
		echo "$db interactive-short-$i.cypher NO.$j time: " $t $pathResult/time-interactive-short.out    
	done
    avg=$((total / length))
    echo "$db interactive-short-$i.cypher avg time: " $avg >> $pathResult/time-interactive-short.out
    echo "$db interactive-short-$i.cypher avg time: " $avg $pathResult/time-interactive-short.out
 
done

   
    
