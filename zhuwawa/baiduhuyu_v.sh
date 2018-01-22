#!/bin/sh
macIp=$(ifconfig -a | grep 'Ethernet' | awk '{print $5}' | head -1)
./Wawaji-RTC-Linux-Server --appId yourAppId --uid 0  --channel $macIp --cameraId 0
./Wawaji-RTC-Linux-Server --appId yourAppId --uid 0  --channel $macIp --cameraId 1
