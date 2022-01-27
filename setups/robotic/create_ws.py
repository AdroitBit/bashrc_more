import os
import sys

print(sys.argv)
ws_name=sys.argv[1]
cwd=os.getcwd()
os.makedirs(f'{cwd}/{ws_name}/src')