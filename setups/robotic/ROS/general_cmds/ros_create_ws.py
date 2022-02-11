import sys
import os
try:
    ws_name=sys.argv[1]
except IndexError as e:
    print("Please specify the workspace name")
    sys.exit(1)

os.makedirs(os.getcwd()+'/'+ws_name+'/src')