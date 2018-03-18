#!/bin/bash

### Filename: coredumpshell.sh
### Description: enable coredump and format the name of core file on centos system

ulimit -c unlimited

# enable coredump whith unlimited file-size for all users
echo -e "\n# enable coredump whith unlimited file-size for all users\n* soft core unlimited" >> /etc/security/limits.conf

# set the path of core file with permission 777 
mkdir -p /var/corefile && chmod 777 /var/corefile

# format the name of core file.   
# %% – 符号%
# %p – 进程号
# %u – 进程用户id
# %g – 进程用户组id
# %s – 生成core文件时收到的信号
# %t – 生成core文件的时间戳(seconds since 0:00h, 1 Jan 1970)
# %h – 主机名
# %e – 程序文件名
echo -e "/var/corefile/core-%e-%s-%u-%g-%p-%t" > /proc/sys/kernel/core_pattern
echo -e "kernel.core_pattern = /var/corefile/core.%e.%t" >> /etc/sysctl.conf

# suffix of the core file name
echo -e "1" > /proc/sys/kernel/core_uses_pid

sysctl -p
