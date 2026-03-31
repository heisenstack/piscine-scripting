#!/bin/bash

truncate -s 1000 file1.txt
chmod 600 file1.txt
touch -d "2022-01-01" file1.txt