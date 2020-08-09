#!/bin/bash

echo "===== Listing processes by CPU utilization ====="
echo "method 1: ps commmand"
echo "method 2: top command"
echo "method 3: sar command"
read -p "Enter Execution Method: " method

if [[ "$method" == "1" ]];then
    watch -n 1 'ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head'
elif [[ "$method" == "2" ]];then
    watch -n 1  'top -b -o +%CPU | head -n 15'
elif [[ "$method" == "3" ]];then
    watch -n 1 'sar -P ALL 1 1 && sar -q 1 1'
else
    echo "Invalid method"
    exit 1
fi