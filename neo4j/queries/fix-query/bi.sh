length=$2
db=$1
total=0
pathResult="./result"
pathNeo4j="/home/zhiyi/ecosys/neo4j-community-3.5.0"
for i in $( seq 1 19)
do
	total=0
	for j in $( seq 1 $length )
    do
    	t0=$(date +%s%N)
    	$pathNeo4j/bin/cypher-shell < ./bi-$i.cypher > $pathResult/bi-$i.out
    	tn=$(date +%s%N)
    	t=$((($tn - $t0)/1000000))
    	total=$(($t + $total))
    	echo "$db bi-$i.cypher NO.$j time: " $t >> $pathResult/time-bi.out
		echo "$db bi-$i.cypher NO.$j time: " $t $pathResult/time-bi.out    
	done
    avg=$((total / length))
    echo "$db bi-$i.cypher avg time: " $avg >> $pathResult/time-bi.out
    echo "$db bi-$i.cypher avg time: " $avg $pathResult/time-bi.out
 
done

   
    
