// Q2. Top tags for country, age, gender, time
/*
  :param {
    date1: 20091231230000000,
    date2: 20101107230000000,
    country1: 'Ethiopia',
    country2: 'Belarus'
  }
*/
MATCH
  (country:Country)<-[:IS_PART_OF]-(:City)<-[:IS_LOCATED_IN]-(person:Person)
  <-[:HAS_CREATOR]-(message:Message)-[:HAS_TAG]->(tag:Tag)
WHERE message.creationDate >= 20091231230000000
  AND message.creationDate <= 20101107230000000
  AND (country.name = "Ethiopia" OR country.name = "Belarus")
WITH
  country.name AS countryName,
  message.creationDate/100000000000%100 AS month,
  person.gender AS gender,
  floor((20130101 - person.birthday) / 10000 / 5.0) AS ageGroup,
  tag.name AS tagName,
  message
WITH
  countryName, month, gender, ageGroup, tagName, count(message) AS messageCount
WHERE messageCount > 100
RETURN
  countryName,
  month,
  gender,
  ageGroup,
  tagName,
  messageCount
ORDER BY
  messageCount DESC,
  tagName ASC,
  ageGroup ASC,
  gender ASC,
  month ASC,
  countryName ASC
LIMIT 100;
