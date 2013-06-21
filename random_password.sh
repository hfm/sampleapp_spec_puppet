#!/bin/sh

date +%s | shasum | base64 | head -c 16; echo > puppet.d/modules/mysql/manifests/site.pp
