#!/bin/sh

set -e

ifconfig eth0:0 192.168.46.* netmask 255.255.255.0

ipvsadm --add-service 192.168.46.* --tcp-service 80 --scheduler lc
ipvsadm --add-server 192.168.46.* --real-server app.okkun.pblan
ipvsadm --save
