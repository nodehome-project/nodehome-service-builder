#!/bin/bash
Ans=`curl --silent http://127.0.0.1:8886/version.bin | awk '/\"OK\"/{print "OK"}'`
if [ "$Ans" == "OK" ]; then
  curl --silent http://127.0.0.1:8886/exit.bin?key=fouri
  # wait for teminate completely
  sleep 3
fi

LogFolder=/home/nodehome/nodem/log
LogLink=$LogFolder"/nodem.TRACE"

/home/nodehome/nodem/nodem -h -e -v -etime 600 -htime 300 -flog  &
# tail -f $LogLink
