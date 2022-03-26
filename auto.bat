start cmd /k "npx netlify-cms-proxy-server"
start hugo server
start cmd /k ""C:\Program Files\Mozilla Firefox\firefox.exe" 127.0.0.1:1313/admin" 
pause
echo "-------Begin-------"
git status
set msg=update
set /p msg=请输入提交注释:
git add -A
git commit -m %msg% 
git push
echo 推送成功√：【%msg%】
echo "-------End-------"
pause