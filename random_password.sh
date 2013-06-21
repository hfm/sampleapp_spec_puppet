#!/bin/sh

prefix="\$mysql_password = \""
passwd=$(date +%s | sha1sum | base64 | head -c 16)
suffix="\""

str=$prefix$passwd$suffix

echo $str > puppet.d/modules/mysql/manifests/passwd.pp
