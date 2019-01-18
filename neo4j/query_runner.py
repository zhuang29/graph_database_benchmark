import requests

from neo4j.v1 import GraphDatabase, basic_auth

import config

class QueryRunner():
    def __init__(self):
        pass

    def PG(self):
        pass

    def i_short_1(self):
        pass

    def i_short_2(self):
        pass

    def i_short_3(self):
        pass

    def i_short_4(self):
        pass

    def i_short_5(self):
        pass

    def i_short_6(self):
        pass

    def i_short_7(self):
        pass


class Neo4jQueryRunner(QueryRunner):
    def __init__(self, url = config.NEO4J_BOLT):
        QueryRunner.__init__(self)
        self.driver = GraphDatabase.driver(url, auth=basic_auth("neo4j", "neo4j"))
	self.session = self.driver.session()


    def PG(self, iteration):
        result = self.session.run("MATCH (node:MyNode) WITH COLLECT(node) AS nodes CALL apoc.algo.pageRankWithConfig(nodes,{iterations:{iteration}}) YIELD node, score RETURN node, score LIMIT 1", {"iteration":iteration})
        record = result.peek()
        return record


    def i_short_1(self, personId):
        result = self.session.run("MATCH (n:Person {id:" + personId + "})-[:IS_LOCATED_IN]->(p:Place) RETURN n.firstName AS firstName, n.lastName AS lastName, n.birthday AS birthday, n.locationIP AS locationIP, n.browserUsed AS browserUsed, p.id AS cityId, n.gender AS gender, n.creationDate AS creationDate")
        record = result.peek()
        print record
        return record


    def i_short_2(self, personId):
        result = self.session.run("MATCH (:Person {id:" + personId + "})<-[:HAS_CREATOR]-(m:Message)-[:REPLY_OF*0..]->(p:Post) MATCH (p)-[:HAS_CREATOR]->(c) RETURN m.id as messageId, CASE exists(m.content) WHEN true THEN m.content ELSE m.imageFile END AS messageContent, m.creationDate AS messageCreationDate, p.id AS originalPostId, c.id AS originalPostAuthorId, c.firstName as originalPostAuthorFirstName, c.lastName as originalPostAuthorLastName ORDER BY messageCreationDate DESC LIMIT 10")
        for records in result:
            print records;
        return result

    def i_short_3(self, personId):
        result = self.session.run("MATCH (n:Person {id:" + personId + "})-[r:KNOWS]-(friend) RETURN friend.id AS personId, friend.firstName AS firstName, friend.lastName AS lastName, r.creationDate AS friendshipCreationDate ORDER BY friendshipCreationDate DESC, toInteger(personId) ASC")
        for records in result:
            print records;
        return result

    def i_short_4(self, messageId):
        result = self.session.run("MATCH (m:Message {id:" + messageId + "}) RETURN m.creationDate as messageCreationDate, CASE exists(m.content) WHEN true THEN m.content ELSE m.imageFile END AS messageContent")
        for records in result:
            print records;
        return result

    def i_short_5(self, messageId):
        result = self.session.run("MATCH (m:Message {id:" + messageId + "})-[:HAS_CREATOR]->(p:Person) RETURN p.id AS personId, p.firstName AS firstName, p.lastName AS lastName")
        for records in result:
            print records;
        return result

    def i_short_6(self, messageId):
        result = self.session.run("MATCH (m:Message {id:" + messageId + "})-[:REPLY_OF*0..]->(p:Post)<-[:CONTAINER_OF]-(f:Forum)-[:HAS_MODERATOR]->(mod:Person) RETURN f.id AS forumId, f.title AS forumTitle, mod.id AS moderatorId, mod.firstName AS moderatorFirstName, mod.lastName AS moderatorLastName")
        for records in result:
            print records;
        return result

    def i_short_7(self, messageId):
        result = self.session.run("MATCH (m:Message {id:" + messageId + "})<-[:REPLY_OF]-(c:Comment)-[:HAS_CREATOR]->(p:Person) OPTIONAL MATCH (m)-[:HAS_CREATOR]->(a:Person)-[r:KNOWS]-(p) RETURN c.id AS commentId, c.content AS commentContent, c.creationDate AS commentCreationDate, p.id AS replyAuthorId, p.firstName AS replyAuthorFirstName, p.lastName AS replyAuthorLastName, CASE r WHEN null THEN false ELSE true END AS replyAuthorKnowsOriginalMessageAuthor ORDER BY commentCreationDate DESC, replyAuthorId")
        for records in result:
            print records;
        return result
if __name__ == "__main__":
    runner = Neo4jQueryRunner() 
#    runner.i_short_1(933)
