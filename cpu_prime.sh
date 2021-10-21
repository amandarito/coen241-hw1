#!/bin/bash

echo -n > cpu_test.txt
for i in 1 2 3 4 5; do sysbench --test=cpu --cpu-max-prime=5000 --num-threads=1 --max-time=45 run >> cpu_test.txt; done
for i in 1 2 3 4 5; do sysbench --test=cpu --cpu-max-prime=5000 --num-threads=2 --max-time=45 run >> cpu_test.txt; done
for i in 1 2 3 4 5; do sysbench --test=cpu --cpu-max-prime=5000 --num-threads=8 --max-time=45 run >> cpu_test.txt; done
echo finished

