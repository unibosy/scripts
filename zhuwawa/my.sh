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


#getopt 参数说明
# -o或--options选项后面接可接受的短选项，如ab:c::，表示可接受的短选项为-a -b -c，其中-a选项不接参数，-b选项后必须接参数，-c选项的参数为可选的
# -l或--long选项后面接可接受的长选项，用逗号分开，冒号的意义同短选项。
# -n选项后接选项解析错误时提示的脚本名字
# $0	当前脚本的文件名
# $n	传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
# $#	传递给脚本或函数的参数个数。
# $*	传递给脚本或函数的所有参数。
# $@	传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同，下面将会讲到。
# $?	上个命令的退出状态，或函数的返回值。
# $$	当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。
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

ARGS=`getopt -o "a:u::ck::c:ci:l::w::h::f::k::r::url::s::" -l "appId:,uid::,channelKey::,channel:,cameraId::,logPath::,width::,height::,fps::,kbps::,rotation::,rtmpUrl::,save::" -n "my.sh" -- "$@"`
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
      echo "width=" $1
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
      echo "kbps=" $1
      ;;
    -r|--rotation)
      shift
      rotation=$1
      echo "rotation=" $1
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

#for arg in $@
#do
#  echo "processing $arg"
#done
run
