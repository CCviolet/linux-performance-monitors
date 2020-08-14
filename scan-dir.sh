#!/bin/bash

if [ $(which tree) != "" ];then
    echo "tree command in installed"
    read -p "Enter Path: " path
    read -p "Enter Iteration Level: " level
    tree -f -h -dug ${path} -L ${level}
else
    echo "tree command not found"
    exit 1
fi 