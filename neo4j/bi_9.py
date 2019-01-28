import random
import sys
import os
import datetime
from timeit import default_timer as timer

from query_runner import *
from config import *

def run_bi_9(name_data, tagClass1, tagClass2, threshold, num_tests):
    #create result folder
    if not os.path.exists(os.path.dirname("./result/")):
        try:
            os.makedirs(os.path.dirname("./result/"))
        except OSError as exc: # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise


    ofile = open("result/bi_9" + "_" + name_data, 'a')
    runner = Neo4jQueryRunner();

    total_time = 0.0
    total_knsize = 0
    report = "\n---------- " + str(datetime.datetime.now()) + "  " + "  ----------\n"

    for i in range(0, num_tests):
        start = timer()
        runner.bi_9(tagClass1, tagClass2, threshold)
        end = timer()
        exe_time = end - start
        total_time += exe_time
        query_param = tagClass1 + "," + tagClass2 + "," + threshold
        line = name_data + "," +  "bi_9," + str(i) + "," + query_param + "," + str(exe_time) + " seconds"
        print(line)
        report += line + "\n"
    report += "summary," +  name_data + "," + "bi_9," + query_param + "," + str(total_time/num_tests) + " seconds"
    ofile.write(report)
    print (report)


if __name__ == "__main__":
    # kn.py file_name db_name num_iteration
    if len(sys.argv) < 5:
        print("Usage: python bi_9.py name_data param num_tests")
        sys.exit()
    # python bi_9.py snb_1 933 3
    run_bi_9(os.path.basename(sys.argv[1]), sys.argv[2], sys.argv[3], sys.argv[4], int(sys.argv[5]) if len(sys.argv) == 6 else "")

