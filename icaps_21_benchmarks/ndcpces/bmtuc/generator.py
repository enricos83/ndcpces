import os


first = range(1,41)
second = [3]

for i in first:
    for j in second:
        os.system('python gen-bmtuc.py {} {}'.format(i,j))