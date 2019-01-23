import random
import sys
import os
import datetime
from timeit import default_timer as timer

from query_runner import *
from config import *

def run_bi_2(name_data, country1, country2, startDate, endDate, num_tests):
    #create result folder
    if not os.path.exists(os.path.dirname("./result/")):
        try:
            os.makedirs(os.path.dirname("./result/"))
        except OSError as exc: # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise


    ofile = open("result/bi_2" + "_" + name_data, 'a')
    runner = Neo4jQueryRunner();

    total_time = 0.0
    total_knsize = 0
    report = "\n---------- " + str(datetime.datetime.now()) + "  " + "  ----------\n"

    print name_data
    print num_tests
    print country1
    print country2
    print startDate
    print endDate
    for i in range(0, num_tests):
        start = timer()
        runner.bi_2(country1, country2, startDate, endDate)
        end = timer()
        exe_time = end - start
        total_time += exe_time
        query_param = country1 + "," + country2 + "," +  startDate + "," +  endDate
        line = str(i) + "," +  "bi_2," + query_param + "," + str(exe_time) + " seconds"
        print(line)
        report += line + "\n"
    report += "summary," +  "bi_2," + query_param + "," + str(total_time/num_tests) + " seconds"
    ofile.write(report)
    print (report)


if __name__ == "__main__":
    # kn.py file_name db_name num_iteration
    if len(sys.argv) < 6:
        print("Usage: python bi_2.py name_data param num_tests")
        sys.exit()
    # python bi_2.py snb_1 933 3
    run_bi_2(os.path.basename(sys.argv[1]), sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], int(sys.argv[6]) if len(sys.argv) == 7 else "")

