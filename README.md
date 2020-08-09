# linux-performance-monitors

This repository is built based on the Udemy Course  "Linux Performance Monitor & Analysis" to help ones to monitor linux systems conveniently.

![image](network.jpg)

The linux system performance measurement is composed of the following subsystems:

* CPU
* Memory
* I/O
* Network

The repository consists of the following bash scripts to monitor these subsystems:

| Script Name | Description |
|  ---------- | ----------- |
| find-process-by-cpu.sh | List processes based on the CPU utilization rates in descending order. |
| find-process-by-mem.sh | List processes based on the Memory utilization rates in descending order. |
| performance-summary.sh | Monitor and display the summary statistics for CPU, memory and I/O. |
| report-io-statistics.sh | Monitor I/O utilization statistics in 3 methods: iostat, sar and vmstat. |
| report-memory-statistics.sh | Monitor memory utilization statistics using sar and free. |
| report-network-statistics.sh | Monitor network transactions and bandwidth statistics based on different metrics using netstat.  |

