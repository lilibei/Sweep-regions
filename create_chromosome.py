#!/usr/bin/python

import sys

chromosome_number = sys.argv[1]
chromosome_number = int(chromosome_number) +1


for i in range(1,chromosome_number):
    for j in range(1,50001):
        print i
