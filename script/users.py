#!/bin/env python
#encoding=utf-8
# Author: Aaron Shao - shao.dut@gmail.com
# Last modified: 2014-11-26 11:08
# Filename: users.py
# Description: Manage Users

import sys
import json
import datetime 
import email

class  Users:
    def __init__(self):
        self.data = {}

    def load(self, fname):
        with open(fname, 'r') as f:
            s = f.read()
            self.data = json.loads("".join(s.split()))

    def dump(self, fname):
        with open(fname, 'w') as f:
            pass
            f.write(json.dumps(self.data,indent=4))

    # ttl = time to live in days.
    def add_user(self, uname, ttl, method):
        if ttl < 0:
            print >> sys.stderr, "TTL is too small"
            return

        if '@' not in uname:
            print >> sys.stderr, "User name must be a email address!"
            return
        
        if uname not in self.data:
            # search for available port
            occupied_ports = {}
            for u in self.data:
                user = self.data[u]
                current_port = user['port']
                occupied_ports[current_port] = 1
            port = 0
            for i in xrange(9300, 9899):
                if i not in occupied_ports:
                    port = i
                    break
            if 0 == port:
                print >> sys.stderr, "No port available!"
                return
            # calculate expire date
            today = datetime.datetime.now()
            expire_date = today + datetime.timedelta(days=ttl)
            expire_date = expire_date.strftime('%Y-%m-%d')
            self.data[uname] = {
                    'uname'       : uname,
                    'port'        : port,
                    'expire_date' : expire_date,
                    'method'      : method,
                    'is_active'   : 1
                    }
            print "New user added. Name:%s Port:%d Exp_date:%s with method:%s" % \
                    (uname, port, expire_date, method)
            print self.data

        else:
            user = self.data[uname]
            # calculate expire date
            expire_date = datetime.datetime.strptime(user['expire_date'], '%Y-%m-%d')
            today = datetime.datetime.now()
            if expire_date < today:
                expire_date = today
            expire_date += datetime.timedelta(days=ttl)
            expire_date = expire_date.strftime('%Y-%m-%d')
            #
            user['expire_date'] = expire_date
            user['is_active'] = 1
            user['method'] = method
            print "User time added. Name:%s Port:%d Exp_date:%s with method:%s"\
                    % (uname, user['port'], expire_date, method)

    def check_users(self):
        for uname in self.data:
            user = self.data[uname]
            expire_date = datetime.datetime.strptime(user['expire_date'], '%Y-%m-%d')
            today = datetime.datetime.now()
            if expire_date < today:
                user['is_active'] = 0

    def gen_conf(self, fname):
        port_password = {}
        for uname in self.data:
            user = self.data[uname]
            if user['is_active'] == 1:
                port = user['port']
                #port_password[str(port)] = uname.encode('utf-8')
                port_password[str(port)] = uname

        conf = {
                "server":"0.0.0.0",
                "port_password" : port_password,
                "method": "chacha20-ietf-poly1305",
                "timeout": 600
                }

        with open(fname, 'w') as f:
            pass
            f.write(json.dumps(conf,indent=4))

        print 'conf dumped'

    def gen_script(self, fname):
        out_str = """#!/bin/bash
export PATH=$PATH:/usr/local/bin;
killall ssserver;
killall server_linux_amd64;
sleep 5s;


"""
        for uname in self.data:
            user = self.data[uname]
            if user['is_active'] == 1:
                port = user['port']
                method = 'chacha20-ietf-poly1305'
                if 'method' in user:
                    method = user['method']
                cmd_str = "ssserver -s 0.0.0.0 -p %d -k %s " % (port, uname)
                cmd_str += " -m %s" % method
                cmd_str += " --fast-open --user nobody"
                cmd_str += " --pid-file /tmp/ss.%d" % port
                cmd_str += " --log-file log/log.%d" % port
                cmd_str += " -q -d start\n"
                out_str += cmd_str

        

        out_str += """
nohup ./server_linux_amd64 -t "127.0.0.1:9500" -l ":9595" -mode fast3 -key wo1wusuoyou -crypt aes-128 &
echo "Restart service done"
"""
        with open(fname, 'w') as f:
            pass
            f.write(out_str)

        print 'conf dumped'


if __name__ == '__main__':
    test_user_instance = Users()
    test_user_instance.load('data/test.data')
    test_user_instance.check_users()
    test_user_instance.add_user('shao.dut@gmail.com', 20)
    test_user_instance.check_users()
    test_user_instance.dump('data/test.data')

