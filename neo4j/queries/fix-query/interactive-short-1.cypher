MATCH (n:Person {id:933})-[:IS_LOCATED_IN]->(p:Place)
RETURN
  n.firstName AS firstName,
  n.lastName AS lastName,
  n.birthday AS birthday,
  n.locationIP AS locationIP,
  n.browserUsed AS browserUsed,
  p.id AS cityId,
  n.gender AS gender,
  n.creationDate AS creationDate;
