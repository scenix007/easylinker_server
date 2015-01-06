#!/bin/env python
#encoding=utf-8
# Author: Aaron Shao - shao.dut@gmail.com
# Last modified: 2014-11-26 12:51
# Filename: main.py
# Description: 
import argparse 
import users
import os
parser = argparse.ArgumentParser()
parser.add_argument("-u", "--uname", help="username must be a email adderss") 
parser.add_argument("-t", "--ttl",type = int, help="time to live in days") 

if __name__ == '__main__':
    args = parser.parse_args()
    user_instance = users.Users()
    user_instance.load('data/users.data')
    if args.uname and args.ttl:
        print 'Adding %d days to %s' % (args.ttl, args.uname)
        user_instance.add_user(args.uname, args.ttl)
    user_instance.check_users()
    user_instance.dump('data/users.data')
    
    print 'Updating config file'
    user_instance.gen_conf('conf/server.json')

    print 'Updating script file'
    user_instance.gen_script('script/restart.sh')

    print 'Restating service'
    os.system('./script/restart.sh')
    #os.system('./script/restart_service.sh')

    print 'cp user data to web'
    os.system('cp data/users.data  web/users.data ; chown www:www web/users.data')




