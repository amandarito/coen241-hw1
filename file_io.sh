#!/bin/bash

echo -n > file_io_test.txt
sysbench --test=fileio --num-threads=1 --file-test-mode=rndrw --file-total-size=1G prepare
for i in 1 2 3 4 5; do sysbench --test=fileio --num-threads=1 --file-test-mode=rndrw --file-total-size=1G run >> file_io_test.txt; done
sysbench --test=fileio --num-threads=1 --file-test-mode=rndrw --file-total-size=1G cleanup

sysbench --test=fileio --num-threads=2 --file-test-mode=rndrw --file-total-size=1G prepare
for i in 1 2 3 4 5; do sysbench --test=fileio --num-threads=2 --file-test-mode=rndrw --file-total-size=1G run >> file_io_test.txt; done
sysbench --test=fileio --num-threads=2 --file-test-mode=rndrw --file-total-size=1G cleanup

sysbench --test=fileio --num-threads=8 --file-test-mode=rndrw --file-total-size=1G prepare
for i in 1 2 3 4 5; do sysbench --test=fileio --num-threads=8 --file-test-mode=rndrw --file-total-size=1G run >> file_io_test.txt; done
sysbench --test=fileio --num-threads=8 --file-test-mode=rndrw --file-total-size=1G cleanup
echo finished
