#!/bin/bash
killall ss-server;
killall ssserver;


ssserver -s 0.0.0.0 -p 9324 -k yuchaopeng@hotmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9324 --log-file log/log.9324 -q -d start
ssserver -s 0.0.0.0 -p 9302 -k gujinjie@outlook.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9302 --log-file log/log.9302 -q -d start
ssserver -s 0.0.0.0 -p 9323 -k MichaelXuZM@Gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9323 --log-file log/log.9323 -q -d start
ssserver -s 0.0.0.0 -p 9300 -k shao.dut@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9300 --log-file log/log.9300 -q -d start
ssserver -s 0.0.0.0 -p 9313 -k allen2006cyb@126.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9313 --log-file log/log.9313 -q -d start
ssserver -s 0.0.0.0 -p 9319 -k 283926334@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9319 --log-file log/log.9319 -q -d start
ssserver -s 0.0.0.0 -p 9320 -k littleluep92@msn.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9320 --log-file log/log.9320 -q -d start
ssserver -s 0.0.0.0 -p 9306 -k aren01@163.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9306 --log-file log/log.9306 -q -d start
ssserver -s 0.0.0.0 -p 9303 -k icekale@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9303 --log-file log/log.9303 -q -d start
ssserver -s 0.0.0.0 -p 9326 -k aaron@ibreathcare.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9326 --log-file log/log.9326 -q -d start
ssserver -s 0.0.0.0 -p 9321 -k 669687151@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9321 --log-file log/log.9321 -q -d start
ssserver -s 0.0.0.0 -p 9318 -k fuyuhe@163.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9318 --log-file log/log.9318 -q -d start
ssserver -s 0.0.0.0 -p 9305 -k jasonyu35@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9305 --log-file log/log.9305 -q -d start
ssserver -s 0.0.0.0 -p 9325 -k xl@ibreathcare.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9325 --log-file log/log.9325 -q -d start
ssserver -s 0.0.0.0 -p 9308 -k 90581@163.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9308 --log-file log/log.9308 -q -d start
ssserver -s 0.0.0.0 -p 9315 -k schor@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9315 --log-file log/log.9315 -q -d start
ssserver -s 0.0.0.0 -p 9327 -k hans@ibreathcare.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9327 --log-file log/log.9327 -q -d start
ssserver -s 0.0.0.0 -p 9304 -k stuka@foxmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9304 --log-file log/log.9304 -q -d start
ssserver -s 0.0.0.0 -p 9400 -k router@home  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9400 --log-file log/log.9400 -q -d start
ssserver -s 0.0.0.0 -p 9322 -k zmc997144@126.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9322 --log-file log/log.9322 -q -d start
ssserver -s 0.0.0.0 -p 9317 -k 705459593@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9317 --log-file log/log.9317 -q -d start


echo "Restart service done"
