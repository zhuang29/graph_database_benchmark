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

class TigerGraphQueryRunner(QueryRunner):
    def __init__(self, url = config.TIGERGRAPH_HTTP):
        QueryRunner.__init__(self)
        self.session = requests.Session()
        self.url = url

    def PG(self, iteration):
        result = self.session.get(self.url + "/query/pagerank", params={'iteration': iteration, "dampingFactor":0.8}).json()
        print (result)

    def i_short_1(self, param):
        query =  "/query/ldbc/i_short_1?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)

    def i_short_2(self, param):
        query =  "/query/ldbc/i_short_2?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)

    def i_short_3(self, param):
        query =  "/query/ldbc/i_short_3?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)

    def i_short_4(self, param):
        query =  "/query/ldbc/i_short_4?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)

    def i_short_5(self, param):
        query =  "/query/ldbc/i_short_5?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)

    def i_short_6(self, param):
        query =  "/query/ldbc/i_short_6?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)

    def i_short_7(self, param):
        query =  "/query/ldbc/i_short_7?vid=" + param
        result = self.session.get(self.url + query).json()
        print (result)


if __name__ == "__main__":
    runner = TigerGraphQueryRunner() 
    #runner.i_short_1(933)
