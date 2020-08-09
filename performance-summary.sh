#!/bin/bash

cmd='top -b | head -n 5 && echo && vmstat -S m && echo && echo "Note: Memory Summary Units in MB"'
watch -n 1 "$cmd"
