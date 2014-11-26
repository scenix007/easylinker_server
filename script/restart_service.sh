#!/bin/bash
killall shadowsocks-server

nohup ./bin/shadowsocks-server -c conf/server.json &

echo 'service restarted'
