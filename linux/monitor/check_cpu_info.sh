#!/bin/bash

cpu_p=`cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l`
cpu_c=`cat /proc/cpuinfo | grep "core id" | uniq | wc -l`
cpu_l=`cat /proc/cpuinfo | grep "processor" | wc -l`

c_p=`expr $cpu_c / $cpu_p`
l_p=`expr $cpu_l / $cpu_p`
t_c=`expr $cpu_l / $cpu_c`

echo "Physical CPU Count: $cpu_p"
echo "CPU Core Count   : $cpu_c"
echo "Logical CPU Count: $cpu_l"

echo "$c_p cores per physical CPU"
echo "$l_p logical CPUs per physical CPU"
echo "$t_c threads per core"

if [ $c_p -eq 1 ]; then
    echo "CPU is unicore"
else
    echo "CPU is multicore"
fi

if [ $t_c -eq 1 ]; then
    echo "CPU isn\'t of HT"
else
    echo "CPU is of HT"
fi

echo "Machine have $cpu_p CPUs, each CPU has $c_p cores, each core has $t_c threads. In summary $cpu_c cores, $cpu_l threads.
