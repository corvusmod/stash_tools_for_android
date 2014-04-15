#!/bin/bash
CONFIG_PATH=$1
echo $CONFIG_PATH
cat template_config.txt >> $CONFIG_PATH
PRO_NAME_TEMP=`cat $CONFIG_PATH |grep projectname |cut -f3 -d " "`
echo $PRO_NAME_TEMP > /tmp/pro_temp
sed s:\/:_:g /tmp/pro_temp > /tmp/pro_bueno
PRO_NAME=`cat /tmp/pro_bueno`
cp $CONFIG_PATH  /tmp/$CONFIG_PATH.bk
sed s:REPONAME:$PRO_NAME.git: /tmp/$CONFIG_PATH.bk > $CONFIG_PATH
