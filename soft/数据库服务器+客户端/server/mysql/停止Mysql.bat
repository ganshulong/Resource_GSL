@echo off
if "%OS%" == "Windows_NT" setlocal

set CURRENT_DIR=%cd%
cd %CURRENT_DIR%

echo 1. 设置环境变量
echo     当前路径：%CURRENT_DIR%
set MYSQL_HOME=%CURRENT_DIR%\mysql5

echo 2. 正在停止mysql数据库，请等待......

%MYSQL_HOME%\bin\mysqladmin -uroot -P 3306 shutdown 
echo 3. 已成功停止！


pause