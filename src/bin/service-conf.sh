#!/bin/bash

#_ServerName=assemblydemo
_MainClass=com.cc.assemblydemo.DemoApplication

_DIR="$( cd "$(dirname "$0")" && pwd )"
# service path
_HOME_DIR=$(dirname "$_DIR")

_MetaspaceSize=256
_MaxMetaspaceSize=512
_Xms=128
_Xmx=256

# 默认有jre环境
# java -classpath "../lib/*" com.cc.assemblydemo.DemoApplication --spring.config.location=../config/application.properties -XX:MetaspaceSize=256 -XX:MaxMetaspaceSize=512 -Xms128 -Xmx256
java -classpath "${_HOME_DIR}/../lib/*" ${_MainClass} --spring.config.location=${_HOME_DIR}/../config/application.properties -XX:MetaspaceSize=${_MetaspaceSize} -XX:MaxMetaspaceSize=${_MaxMetaspaceSize} -Xms${_Xms} -Xmx${_Xmx}
