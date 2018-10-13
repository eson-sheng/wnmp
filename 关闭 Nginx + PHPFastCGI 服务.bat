@echo off

rem -----------------------------------
rem  nginx php start
rem
rem  @author eson <834767372@qq.com>
rem -----------------------------------

title 关闭 Nginx + FastCGI 服务 - By Eson 834767372@qq.com
color 02

rem  Nginx
echo 正在关闭 Nginx 服务...
taskkill /F /IM nginx.exe > nul
If errorlevel 1 (
    echo nginx [null]
) Else (
    echo nginx [stop]
)

rem  FastCGI
echo 正在关闭 PHP FastCGI 服务...
taskkill /F /IM php-cgi.exe >nul
If errorlevel 1 (
   echo php-cgi [null]
) Else (
   echo php-cgi [stop]
)

pause