#!/bin/bash

echo "===== Network Utilization Report ====="
read -p  "monitor by both TCP and IP connections ?" ans1
if [[ "$ans1" == "y" ]];then
    watch -n 1 'netstat -a'
else
    read -p  "monitor by TCP connection ?" ans2
    if [[ "$ans2" == "y" ]];then
        watch -n 1 'netstat -at'
    else
        read -p  "monitor by UDP connection ?" ans3
        if [[ "$ans3" == "y" ]];then
            watch -n 1 'netstat -au'
        else
            read -p  "monitor by TCP protocol ?" ans4
            if [[ "$ans4" == "y" ]];then
                watch -n 1 'netstat -st'
            else
                read -p  "monitor by UDP protocol ?" ans5
                if [[ "$ans5" == "y" ]];then
                    watch -n 1 'netstat -su'
                else
                    read -p  "monitor by network interface transactions ?" ans6
                    if [[ "$ans6" == "y" ]];then
                        watch -n 1 'netstat -i'
                    else
                        echo "No option selected !"
                        exit 1
                    fi
                fi
            fi
        fi
    fi
fi

