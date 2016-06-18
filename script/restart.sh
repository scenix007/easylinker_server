#!/bin/bash
export PATH=$PATH:/usr/local/bin;
killall ss-server;
killall ssserver;
sleep 5s;


ssserver -s 0.0.0.0 -p 9310 -k mark.du@outlook.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9310 --log-file log/log.9310 -q -d start
ssserver -s 0.0.0.0 -p 9334 -k 7454362@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9334 --log-file log/log.9334 -q -d start
ssserver -s 0.0.0.0 -p 9333 -k d-jerry@hotmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9333 --log-file log/log.9333 -q -d start
ssserver -s 0.0.0.0 -p 9302 -k gujinjie@outlook.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9302 --log-file log/log.9302 -q -d start
ssserver -s 0.0.0.0 -p 9323 -k MichaelXuZM@Gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9323 --log-file log/log.9323 -q -d start
ssserver -s 0.0.0.0 -p 9300 -k shao.dut@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9300 --log-file log/log.9300 -q -d start
ssserver -s 0.0.0.0 -p 9313 -k allen2006cyb@126.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9313 --log-file log/log.9313 -q -d start
ssserver -s 0.0.0.0 -p 9335 -k hekun@mocf.org.cn  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9335 --log-file log/log.9335 -q -d start
ssserver -s 0.0.0.0 -p 9319 -k 283926334@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9319 --log-file log/log.9319 -q -d start
ssserver -s 0.0.0.0 -p 9320 -k littleluep92@msn.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9320 --log-file log/log.9320 -q -d start
ssserver -s 0.0.0.0 -p 9314 -k omegaojian@hotmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9314 --log-file log/log.9314 -q -d start
ssserver -s 0.0.0.0 -p 9306 -k aren01@163.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9306 --log-file log/log.9306 -q -d start
ssserver -s 0.0.0.0 -p 9303 -k icekale@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9303 --log-file log/log.9303 -q -d start
ssserver -s 0.0.0.0 -p 9326 -k aaron@ibreathcare.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9326 --log-file log/log.9326 -q -d start
ssserver -s 0.0.0.0 -p 9307 -k liuyangalex@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9307 --log-file log/log.9307 -q -d start
ssserver -s 0.0.0.0 -p 9329 -k DEV@shuomao  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9329 --log-file log/log.9329 -q -d start
ssserver -s 0.0.0.0 -p 9321 -k 669687151@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9321 --log-file log/log.9321 -q -d start
ssserver -s 0.0.0.0 -p 9331 -k 562530766@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9331 --log-file log/log.9331 -q -d start
ssserver -s 0.0.0.0 -p 9338 -k 25736190@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9338 --log-file log/log.9338 -q -d start
ssserver -s 0.0.0.0 -p 9336 -k 287429272@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9336 --log-file log/log.9336 -q -d start
ssserver -s 0.0.0.0 -p 8445 -k leojxu@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.8445 --log-file log/log.8445 -q -d start
ssserver -s 0.0.0.0 -p 9315 -k schor@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9315 --log-file log/log.9315 -q -d start
ssserver -s 0.0.0.0 -p 9327 -k hans@ibreathcare.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9327 --log-file log/log.9327 -q -d start
ssserver -s 0.0.0.0 -p 9304 -k stuka@foxmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9304 --log-file log/log.9304 -q -d start
ssserver -s 0.0.0.0 -p 9400 -k router@home  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9400 --log-file log/log.9400 -q -d start
ssserver -s 0.0.0.0 -p 9332 -k 180089641@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9332 --log-file log/log.9332 -q -d start
ssserver -s 0.0.0.0 -p 9341 -k yforeverw@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9341 --log-file log/log.9341 -q -d start
ssserver -s 0.0.0.0 -p 9339 -k tongdou-zsu@163.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9339 --log-file log/log.9339 -q -d start
ssserver -s 0.0.0.0 -p 9317 -k 705459593@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9317 --log-file log/log.9317 -q -d start
ssserver -s 0.0.0.0 -p 9340 -k wk_d@sina.cn  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9340 --log-file log/log.9340 -q -d start
ssserver -s 0.0.0.0 -p 9342 -k 124917570@qq.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9342 --log-file log/log.9342 -q -d start
ssserver -s 0.0.0.0 -p 9328 -k wangliyang.leon@gmail.com  -m aes-128-cfb --fast-open --user nobody --pid-file /tmp/ss.9328 --log-file log/log.9328 -q -d start


echo "Restart service done"
