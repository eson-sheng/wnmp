@echo off

rem -----------------------------------
rem  nginx php start
rem
rem  @author eson <834767372@qq.com>
rem -----------------------------------

title �ر� Nginx + FastCGI ���� - By Eson 834767372@qq.com
color 02

rem  Nginx
echo ���ڹر� Nginx ����...
taskkill /F /IM nginx.exe > nul
If errorlevel 1 (
    echo nginx [null]
) Else (
    echo nginx [stop]
)

rem  FastCGI
echo ���ڹر� PHP FastCGI ����...
taskkill /F /IM php-cgi.exe >nul
If errorlevel 1 (
   echo php-cgi [null]
) Else (
   echo php-cgi [stop]
)

pause