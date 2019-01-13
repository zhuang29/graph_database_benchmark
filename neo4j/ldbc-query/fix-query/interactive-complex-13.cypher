MATCH (person1:Person {id:933}), (person2:Person {id:1129})
OPTIONAL MATCH path = shortestPath((person1)-[:KNOWS*]-(person2))
RETURN
CASE path IS NULL
  WHEN true THEN -1
  ELSE length(path)
END AS shortestPathLength;
