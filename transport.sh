#!/usr/bin/env bash
cp ~/mserver/EntranceServer/huginn_*.csv ./
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
ABORT() {
    [ "$1" ] && echo -e "[${red}ERROR${plain}]: $*"
    exit 1
}

git add .
[ $? -ne 0] && ABORT "add error"
git commit -m "update" .
[ $? -ne 0] && ABORT "commit error"
git push
[ $? -ne 0] && ABORT "push error"
