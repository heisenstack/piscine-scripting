import sys
import os

if len(sys.argv) != 2:
    exit(1)

file_name = sys.argv[1]

if not os.access(file_name, os.R_OK):
    exit(1)

with open(file_name, 'r') as f:
    lines = f.readlines()

with open('out.txt', 'w') as f:
    for line in lines:
        if 'pineapple' not in line:
            f.write(line)