// Q18. How many persons have a given number of posts
/*
  :param {
    date: 20110722000000000,
    lengthThreshold: 20,
    languages: ['ar']
  }
*/
MATCH (person:Person)
OPTIONAL MATCH (person)<-[:HAS_CREATOR]-(message:Message)-[:REPLY_OF*0..]->(post:Post)
WHERE message.content IS NOT NULL
  AND message.length < 20
  AND message.creationDate > 20110722000000000
  AND post.language IN ['ar']
WITH
  person,
  count(message) AS messageCount
RETURN
  messageCount,
  count(person) AS personCount
ORDER BY
  personCount DESC,
  messageCount DESC;
