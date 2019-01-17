MATCH (m:Message {id:1236950581248})-[:HAS_CREATOR]->(p:Person)
RETURN
  p.id AS personId,
  p.firstName AS firstName,
  p.lastName AS lastName;
