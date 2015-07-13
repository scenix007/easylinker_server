#!/bin/bash

#this is a shadowsocks service guard
ftask(){
    ps aux | grep --color=auto -v grep | grep --color=auto $1 --color
}

echo "shadowsocks guard start..." >> log/log.ssg

while true ; do
    sleep 10s
    task_num=`ftask ssserver|wc -l`
    if [ $task_num -lt 10 ]
    then
        echo "wocao! need restart" >> log/log.ssg
        bash script/restart.sh >> log/log.ssg 1>&2
    fi
done
exit 0
