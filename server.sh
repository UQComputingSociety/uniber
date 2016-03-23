#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

DIR="/var/log/uniber/"
FOREVER_LOG="forever.log"
STDOUT="stdout.log"
STDERR="stderr.log"
PID="app.pid"

mkdir -p /var/log/uq-parking

if [ $1 = "stop" ]; then
    forever stop app.js
else
    PORT=8002 forever start -l $DIR$FOREVER_LOG -o $DIR$STDOUT -e $DIR$STDERR --pidFile $DIR$PID --append ./bin/www 
fi


