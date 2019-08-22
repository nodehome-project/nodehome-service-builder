#!/bin/bash
Ans=`curl --silent http://127.0.0.1:8886/version.bin | awk '/\"OK\"/{print "OK"}'`
if [ "$Ans" == "OK" ]; then
  curl --silent http://127.0.0.1:8886/exit.bin?key=nodehome
  # wait for teminate completely
  sleep 3
fi

LogFolder=/home/nodehome/nodem/log
LogLink=$LogFolder"/nodem.TRACE"

#/home/nodehome/nodem/nodem -h -e -v -etime 600 -htime 300 -flog  &
/home/nodehome/nodem/nodem -v -etime 600 -htime 300 -flog -x nodehome & 
# tail -f $LogLink
