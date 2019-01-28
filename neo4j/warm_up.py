import random
import sys
import os
import datetime
from timeit import default_timer as timer

from query_runner import *
from config import *

def run_warm_up(name_data):
    #create result folder
    if not os.path.exists(os.path.dirname("./result/")):
        try:
            os.makedirs(os.path.dirname("./result/"))
        except OSError as exc: # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise


    ofile = open("result/warm_up" + "_" + name_data, 'a')
    runner = Neo4jQueryRunner();

    total_time = 0.0
    total_knsize = 0
    report = "\n---------- " + str(datetime.datetime.now()) + "  " + "  ----------\n"
    start = timer()
    runner.warm_up(name_data)
    end = timer()
    exe_time = end - start
    total_time += exe_time
    line = "warm_up," + str(name_data) + "," + str(exe_time) + " seconds"
    print(line)
    report += line + "\n"
    report += "summary," +  "warm_up," + str(name_data) + "," + str(total_time) + " seconds"
    ofile.write(report)
    print (report)


if __name__ == "__main__":
    # kn.py file_name db_name num_iteration
    if len(sys.argv) < 2:
        print("Usage: python warm_up.py name_data")
        sys.exit()
    # python warm_up.py snb_1 933 3
    run_warm_up(os.path.basename(sys.argv[1]) if len(sys.argv) == 2 else "")

