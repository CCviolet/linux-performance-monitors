#!/bin/bash

echo "===== I/O Utilization Report ====="
echo "method 1: iostat commmand"
echo "method 2: sar command"
echo "method 3: vmstat command"
read -p "Enter Execution Method: " method

if [[ "$method" == "1" ]];then
    watch -n 1 'iostat -d 1 1'
elif [[ "$method" == "2" ]];then
    watch -n 1  'sar -b 1 1 && sar -S 1 1 && sar -p -d 1 1'
elif [[ "$method" == "3" ]];then
    watch -n 1 'vmstat -d -w'
else
    echo "Invalid method"
    exit 1
fi

