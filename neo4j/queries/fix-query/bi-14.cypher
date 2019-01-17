// Q14. Top thread initiators
/*
  :param {
    startDate: 20120531220000000,
    endDate: 20120630220000000
  }
*/
MATCH (person:Person)<-[:HAS_CREATOR]-(post:Post)<-[:REPLY_OF*0..]-(reply:Message)
WHERE  post.creationDate >= 20120531220000000
  AND  post.creationDate <= 20120630220000000
  AND reply.creationDate >= 20120531220000000
  AND reply.creationDate <= 20120630220000000
RETURN
  person.id,
  person.firstName,
  person.lastName,
  count(DISTINCT post) AS threadCount,
  count(DISTINCT reply) AS messageCount
ORDER BY
  messageCount DESC,
  person.id ASC
LIMIT 100;
