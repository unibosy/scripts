#!/bin/bash
usage() 
{
  #echo "Usage: $0 [-s <45|90>] [-p <string>]" 1>&2;
  echo "注意:如果是可选参数，则赋值必须用等于号的形式,如channelKey的赋值"
  echo "Usage:
  $0 --appId STRING --channel STRING --cameraId INT --channelKey=STRING
    --appId       (App Id/must)
    --uid         (User Id/option)
    --channelKey  (ChannelKey/option)
    --channel     (Channel Id/must)
    --cameraId    (Select cameraId/must, equ to /dev/video(n) )
    --logPath     (logPath/option)
    --width       (width/option, default 640)
    --height      (height/option, default 480)
    --fps         (fps/option, default 15)
    --kbps        (kbps/option, default 500)
    --rotation    (rotation/option, [0/90/180/270], default 0)
    --rtmpUrl     (Configure Push-Stream for CDN Live/option)
    --save        (save these all configs for later use/option, 0/1[0:not save, 1:save], default 0)"
}

if [ $# -eq "0" ];then
 usage $0
 exit
fi

appid=
uid=
channelKey=
channel=
cameraId=
logPath=
width=640
height=480
fps=15
kbps=500
rotation=0
rtmpUrl=
save=0
run()
{
  echo $appid $uid $channelKey $channel $cameraId $logPath $width $height $fps $kbps $rotation $rtmpUrl $save 
  ./Wawaji-RTC-Linux-Server --appId $appid --uid $uid --channelKey $channelKey --channel $channel --cameraId $cameraId --logPath $logPath --width $width --height $height --fps $fps --kbps $kbps --rotation $rotation --rtmpUrl $rtmpUrl --save $save
}

ARGS=`getopt -o "a:u::ck::c:ci:l::w::h::f::k::r::url::s::" -l "appId:,uid::,channelKey::,channel:,cameraId::,logPath::,width::,height::,fps::,kbps::,rotation::,rtmpUrl::,save::" -n "zhuawawa.sh" -- "$@"`
eval set -- "${ARGS}"
[ $? -ne 0 ] && usage $0

while true; do
  case "${1}" in
    -a|--appId)
      shift
      appid=$1
      ;;
    -u|--uid)
      shift
      uid=$1
      ;; 
   -ck|--channelKey)
      shift
      channelKey=$1
      ;;
    -c|--channel)
      shift
      channel=$1
      ;;
    -ci|--cameraId)
      shift
      cameraId=$1
      ;;
    -l|--logPath)
      shift
      logPath=$1
      ;;
    -w|--width)
      shift
      width=$1
      ;;
    -h|--height)
      shift
      height=$1
      ;;
    -f|--fps)
      shift
      fps=$1
      ;;
    -k|--kbps)
      shift
      kbps=$1
      ;;
    -r|--rotation)
      shift
      rotation=$1
      ;;
    -url|--rtmpUrl)
      shift
      rtmpUrl=$1
      ;;
    -s|--save)
      shift
      save=$1
      ;;
   --)
      shift
      break
      ;;
  esac
  shift
done

run
