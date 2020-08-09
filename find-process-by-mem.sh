#!/bin/bash

echo "===== Listing processes by Memory utilization ====="
echo "method 1: ps commmand"
echo "method 2: top command"
read -p "Enter Execution Method: " method

if [[ "$method" == "1" ]];then
    watch -n 1 'ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%mem | head'
elif [[ "$method" == "2" ]];then
    watch -n 1  'top -b -o +%MEM | head -n 15'
else
    echo "Invalid method"
    exit 1
fi