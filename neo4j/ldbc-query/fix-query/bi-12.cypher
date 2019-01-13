// Q12. Trending Posts
/*
  :param {
    date: 20110721220000000,
    likeThreshold: 400
  }
*/
MATCH
  (message:Message)-[:HAS_CREATOR]->(creator:Person),
  (message)<-[like:LIKES]-(:Person)
WHERE message.creationDate > 20110721220000000
WITH message, creator, count(like) AS likeCount
WHERE likeCount > 400
RETURN
  message.id,
  message.creationDate,
  creator.firstName,
  creator.lastName,
  likeCount
ORDER BY
  likeCount DESC,
  message.id ASC
LIMIT 100;
