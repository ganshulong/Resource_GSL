@echo off
if "%OS%" == "Windows_NT" setlocal

set CURRENT_DIR=%cd%
cd %CURRENT_DIR%

echo 1. ���û�������
echo     ��ǰ·����%CURRENT_DIR%
set MYSQL_HOME=%CURRENT_DIR%\mysql5

echo 2. ����ֹͣmysql���ݿ⣬��ȴ�......

%MYSQL_HOME%\bin\mysqladmin -uroot -P 3306 shutdown 
echo 3. �ѳɹ�ֹͣ��


pause