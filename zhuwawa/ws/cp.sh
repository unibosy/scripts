help() {
  echo down cp src to demo
  echo up cp demo to src
}
if [ $# -eq "0" ];then
  help
  exit
fi

case $# in
  2)
    if [ $1 == "down" ]; then
      cp /root/wangshiwei/ServerSDK-Video/include/* Agora_Recording_SDK_for_Linux_FULL/include/.
      cp /root/wangshiwei/ServerSDK-Video/test/demo/agorasdk/AgoraSdk* Agora_Recording_SDK_for_Linux_FULL/samples/agorasdk/.
      cp /root/wangshiwei/ServerSDK-Video/test/demo/recorder/cpp/main.cpp Agora_Recording_SDK_for_Linux_FULL/samples/cpp/.
    elif[ $1 == "up" ]
      cp Agora_Recording_SDK_for_Linux_FULL/include/* /root/wangshiwei/ServerSDK-Video/include.
      cp Agora_Recording_SDK_for_Linux_FULL/samples/agorasdk/* /root/wangshiwei/ServerSDK-Video/test/demo/agorasdk/AgoraSdk/.
      cp Agora_Recording_SDK_for_Linux_FULL/samples/cpp/* /root/wangshiwei/ServerSDK-Video/test/demo/recorder/cpp/main.cpp
    fi


esac

