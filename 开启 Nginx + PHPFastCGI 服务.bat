@echo off
color 02
rem -----------------------------------
rem  nginx php start
rem
rem  @author eson <834767372@qq.com>
rem -----------------------------------

title ���� Nginx + FastCGI ���� - By Eson 834767372@qq.com

cd %~dp0

rem  FastCGI
echo �������� PHP FastCGI ����...
RunHiddenConsole ./php-7.2.11/php-cgi -b 127.0.0.1:9000 -c ./php-7.2.11/php.ini
echo php-cgi [ok]

rem  Nginx
echo �������� Nginx ����...
RunHiddenConsole ./nginx-1.14.0/nginx.exe -p ./nginx-1.14.0/
echo nginx [ok]

pause
