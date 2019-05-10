#!/bin/bash
cp ~/mserver/EntranceServer/huginn_*.csv ./
git add .
echo $?
git commit -m "update" .
echo $?
git push
echo $?
