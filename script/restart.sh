#!/bin/bash
killall ss-server;


nohup ss-server -s 106.187.102.100 -p 9301 -k test@test -m aes-128-cfb -u >> log/log.9301 2>&1 &
nohup ss-server -s 106.187.102.100 -p 9303 -k icekale@gmail.com -m aes-128-cfb -u >> log/log.9303 2>&1 &
nohup ss-server -s 106.187.102.100 -p 9300 -k shao.dut@gmail.com -m aes-128-cfb -u >> log/log.9300 2>&1 &
nohup ss-server -s 106.187.102.100 -p 9302 -k gujinjie@outlook.com -m aes-128-cfb -u >> log/log.9302 2>&1 &


echo "Restart service done"
