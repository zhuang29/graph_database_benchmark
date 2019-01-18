############################################################
# Copyright (c)  2015-now, Neo4j Inc.
# All rights reserved
# It is provided as it is for benchmark reproducible purpose.
# anyone can use it for benchmark purpose with the 
# acknowledgement to Neo4j.
# Author: Mingxi Wu mingxi.wu@tigergraph.com
############################################################

import os

NEO4J_BOLT= os.environ.get("NEO4J_BOLT", "bolt://127.0.0.1:7687")
TIGERGRAPH_HTTP = os.environ.get("TIGERGRAPH_HTTP", "http://127.0.0.1:9000")
