length=$2
db=$1
total=0
pathResult="./result"
pathNeo4j="/home/zhiyi/ecosys/neo4j-community-3.5.0"
for i in $( seq 13 14)
do
	total=0
	for j in $( seq 1 $length )
    do
    	t0=$(date +%s%N)
    	$pathNeo4j/bin/cypher-shell < ./interactive-complex-$i.cypher > $pathResult/interactive-complex-$i.out
    	tn=$(date +%s%N)
    	t=$((($tn - $t0)/1000000))
    	total=$(($t + $total))
    	echo "$db interactive-complex-$i.cypher NO.$j time: " $t >> $pathResult/time-interactive-complex.out
		echo "$db interactive-complex-$i.cypher NO.$j time: " $t $pathResult/time-interactive-complex.out    
	done
    avg=$((total / length))
    echo "$db interactive-complex-$i.cypher avg time: " $avg >> $pathResult/time-interactive-complex.out
    echo "$db interactive-complex-$i.cypher avg time: " $avg $pathResult/time-interactive-complex.out
 
done

   
    
