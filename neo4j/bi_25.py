import random
import sys
import os
import datetime
from timeit import default_timer as timer

from query_runner import *
from config import *

def run_bi_25(name_data, person1Id, person2Id, startDate, endDate, num_tests):
    #create result folder
    if not os.path.exists(os.path.dirname("./result/")):
        try:
            os.makedirs(os.path.dirname("./result/"))
        except OSError as exc: # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise


    ofile = open("result/bi_25" + "_" + name_data, 'a')
    runner = Neo4jQueryRunner();

    total_time = 0.0
    total_knsize = 0
    report = "\n---------- " + str(datetime.datetime.now()) + "  " + "  ----------\n"

    for i in range(0, num_tests):
        start = timer()
        runner.bi_25(person1Id, person2Id, startDate, endDate)
        end = timer()
        exe_time = end - start
        total_time += exe_time
        query_param = person1Id + "," + person2Id + "," + startDate + "," + endDate
        line = name_data + "," +  "bi_25," + str(i) + "," + query_param + "," + str(exe_time) + " seconds"
        print(line)
        report += line + "\n"
    report += "summary," +  name_data + "," + "bi_25," + query_param + "," + str(total_time/num_tests) + " seconds"
    ofile.write(report)
    print (report)


if __name__ == "__main__":
    # kn.py file_name db_name num_iteration
    if len(sys.argv) < 6:
        print("Usage: python bi_25.py name_data param num_tests")
        sys.exit()
    # python bi_25.py snb_1 933 3
    run_bi_25(os.path.basename(sys.argv[1]), sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], int(sys.argv[6]) if len(sys.argv) == 7 else "")

