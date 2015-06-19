#!/bin/bash
killall ss-server;


nohup ss-server -s 0.0.0.0 -p 9310 -k mark.du@outlook.com -m aes-128-cfb -u --fast-open >> log/log.9310 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9324 -k yuchaopeng@hotmail.com -m aes-128-cfb -u --fast-open >> log/log.9324 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9302 -k gujinjie@outlook.com -m aes-128-cfb -u --fast-open >> log/log.9302 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9323 -k MichaelXuZM@Gmail.com -m aes-128-cfb -u --fast-open >> log/log.9323 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9300 -k shao.dut@gmail.com -m aes-128-cfb -u --fast-open >> log/log.9300 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9313 -k allen2006cyb@126.com -m aes-128-cfb -u --fast-open >> log/log.9313 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9319 -k 283926334@qq.com -m aes-128-cfb -u --fast-open >> log/log.9319 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9320 -k littleluep92@msn.com -m aes-128-cfb -u --fast-open >> log/log.9320 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9314 -k omegaojian@hotmail.com -m aes-128-cfb -u --fast-open >> log/log.9314 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9306 -k aren01@163.com -m aes-128-cfb -u --fast-open >> log/log.9306 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9303 -k icekale@gmail.com -m aes-128-cfb -u --fast-open >> log/log.9303 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9311 -k jiabeibei.cn@gmail.com -m aes-128-cfb -u --fast-open >> log/log.9311 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9307 -k liuyangalex@gmail.com -m aes-128-cfb -u --fast-open >> log/log.9307 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9321 -k 669687151@qq.com -m aes-128-cfb -u --fast-open >> log/log.9321 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9318 -k fuyuhe@163.com -m aes-128-cfb -u --fast-open >> log/log.9318 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9305 -k jasonyu35@gmail.com -m aes-128-cfb -u --fast-open >> log/log.9305 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9325 -k xl@ibreathcare.com -m aes-128-cfb -u --fast-open >> log/log.9325 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9308 -k 90581@163.com -m aes-128-cfb -u --fast-open >> log/log.9308 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9315 -k schor@qq.com -m aes-128-cfb -u --fast-open >> log/log.9315 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9309 -k rex@ichronocloud.com -m aes-128-cfb -u --fast-open >> log/log.9309 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9304 -k stuka@foxmail.com -m aes-128-cfb -u --fast-open >> log/log.9304 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9312 -k davidcrown@126.com -m aes-128-cfb -u --fast-open >> log/log.9312 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9322 -k zmc997144@126.com -m aes-128-cfb -u --fast-open >> log/log.9322 2>&1 &
nohup ss-server -s 0.0.0.0 -p 9317 -k 705459593@qq.com -m aes-128-cfb -u --fast-open >> log/log.9317 2>&1 &


echo "Restart service done"
