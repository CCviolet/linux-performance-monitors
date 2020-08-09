#!/bin/bash

watch -n 1 'echo "===== Memory Utilization Report =====" && free -h -t && sar -r 1 1'

