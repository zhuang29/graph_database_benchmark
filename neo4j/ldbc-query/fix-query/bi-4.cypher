// Q4. Popular topics in a country
/*
  :param {
    tagClass: 'MusicalArtist',
    country: 'Burma'
  }
*/
MATCH
  (:Country {name: 'Burma'})<-[:IS_PART_OF]-(:City)<-[:IS_LOCATED_IN]-
  (person:Person)<-[:HAS_MODERATOR]-(forum:Forum)-[:CONTAINER_OF]->
  (post:Post)-[:HAS_TAG]->(:Tag)-[:HAS_TYPE]->(:TagClass {name: 'MusicalArtist'})
RETURN
  forum.id,
  forum.title,
  forum.creationDate,
  person.id,
  count(DISTINCT post) AS postCount
ORDER BY
  postCount DESC,
  forum.id ASC
LIMIT 2;
