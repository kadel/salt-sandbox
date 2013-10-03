#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "no argument"
    exit
fi

common(){ 
 echo "192.168.56.100 master salt" >> /etc/hosts
 echo "192.168.56.101 minion" >> /etc/hosts
}


if [ $1 = 'minion' ]; then
    common
    echo "bootstraping minion only"
    wget -O - http://bootstrap.saltstack.org | sh -
elif [ $1 = 'master' ]; then
    common
    echo "bootstraping minion with master"
    wget -O - http://bootstrap.saltstack.org | sh -s -- -M 
fi

