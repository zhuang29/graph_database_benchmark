import random
import sys
import os
import datetime
from timeit import default_timer as timer

from query_runner import *
from config import *

def run_i_complex_3(name_data,personId, startDate, durationDays, countryXName, countryYName, num_tests):
    #create result folder
    if not os.path.exists(os.path.dirname("./result/")):
        try:
            os.makedirs(os.path.dirname("./result/"))
        except OSError as exc: # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise


    ofile = open("result/i_complex_3" + "_" + name_data, 'a')
    runner = Neo4jQueryRunner();

    total_time = 0.0
    total_knsize = 0
    report = "\n---------- " + str(datetime.datetime.now()) + "  " + "  ----------\n"

    for i in range(0, num_tests):
        start = timer()
        runner.i_complex_3(personId,startDate,durationDays,countryXName, countryYName)
        end = timer()
        exe_time = end - start
        total_time += exe_time
        query_param = personId + "," +  startDate + "," + durationDays + "," + countryXName + "," + countryYName
        line = name_data + "," +  "i_complex_3," + str(i) + "," + query_param + "," + str(exe_time) + " seconds"
        print(line)
        report += line + "\n"
    report += "summary," +  name_data + "i_complex_3," + query_param + "," + str(total_time/num_tests) + " seconds"
    ofile.write(report)
    print (report)


if __name__ == "__main__":
    # kn.py file_name db_name num_iteration
    if len(sys.argv) < 7:
        print("Usage: python i_complex_3.py name_data param num_tests")
        sys.exit()
    # python i_complex_3.py snb_1 933 3
    run_i_complex_3(os.path.basename(sys.argv[1]), sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6], int(sys.argv[7]) if len(sys.argv) == 8 else "")

