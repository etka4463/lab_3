#!/bin/bash
# Author: Etash Kalra and Jason Hill
# Date: 02/07/2020
echo "Input a file name: "
read filename
echo "Input a regular expression: "
read regex
grep $regex $filename
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $filename
grep -c -E '\b[A-Za-z0-9._]+@[A-Za-z0-9._-]+\.[A-Za-z]{2,6}\b' $filename
grep -o '[3][0][3]\-[0-9]\{3\}\-[0-9]\{4\}' $filename
grep "@geocities.com" $filename >> email_results.txt
