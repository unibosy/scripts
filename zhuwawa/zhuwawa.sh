!/bin/bash

cmdhelp()
{
  echo "Usage:"
  echo "./zhuwawa.sh run"
  echo "./zhuwawa.sh run -url xxxurl"
}
run()
{
  echo "asfasf"
  echo "run first para:" $1
}

if [ $# -eq "0" ];then
  cmdhelp $0
elif [ $# -eq "1" ];then
  echo "-eq2"
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


