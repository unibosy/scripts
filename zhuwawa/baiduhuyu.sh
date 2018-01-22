#!/bin/sh
while true
do
  ps -ef | grep "Wawaji-RTC-Linux-Server" | grep -v "grep"
  if [ "$?" -eq 1 ];then
    macIp=$(ifconfig -a | grep 'Ethernet' | awk '{print $5}' | head -1)
    ./Wawaji-RTC-Linux-Server --appId yourAppId --uid 0  --channel $macIp --cameraId 0
    echo "process has been restarted!\n" >>runInfo.log
  else
    echo "Wawaji-RTC-Linux-Serve is still running!\n" >>runInfo.log
  fi
    sleep 10
done
