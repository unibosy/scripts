#!/bin/bash -e
cmdhelp()
{
	echo "Usage:
  $0 --appId STRING --channelKey STRING --channel STRING

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
    --rtmpUrl     (Configure Push-Stream for CDN Live)
    --save        (save these all configs for later use/option, 0/1[0:not save, 1:save], default 0)"
}
run()
{
  echo "asfasf"
  echo "run first para:" $1
}

ARGS=$(getopt -a -o C:c:M:m:S:s:A:a:V:v -l cf:,cb:,mf:,mb:,sf:,sb:,af:,ab:,vf:,vb:,pmb:,help -- "$@")
[ $? -ne 0 ] && cmdhelp $0
#echo "${ARGS}"
eval set -- "${ARGS}"


if [ $# -eq "0" ];then
  cmdhelp $0
elif [ $# -eq "1" ];then
  if [ $1 == "run" ];then
    para=`cat config.ini`
    echo "url:" $para
    run $para
  else
    cmdhelp $0
  fi
elif [ $# -eq "3" ];then
  echo "-eq3" $1
  echo "1:" $1 "2:" $2 "s3:" $3
  if [ $2 == "-url" ];then
    echo -en "$3\nwidth\n" > config.ini
  fi 
else
  cmdhelp $0
fi


