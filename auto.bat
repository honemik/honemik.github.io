@echo off
start cmd /k "npx netlify-cms-proxy-server"
start hugo server
"C:\Program Files\Mozilla Firefox\firefox.exe" 127.0.0.1:1313/admin
pause
echo "-------Begin-------"
git status
set msg=update
set /p msg=commit�T��:
git add -A
git commit -m %msg% 
git push
echo ���\�W��msg%
echo "-------End-------"
pause