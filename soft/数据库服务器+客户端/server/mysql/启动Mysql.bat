@echo off
if "%OS%" == "Windows_NT" setlocal

set CURRENT_DIR=%cd%
cd %CURRENT_DIR%

echo 1. ���û�������
echo     ��ǰ·����%CURRENT_DIR%
set MYSQL_HOME=%CURRENT_DIR%\mysql5

echo 2. ��������mysql���ݿ⣬��ȴ�......
echo 3. �����ɹ�

rem mysqld-opt.exe --defaults-file=my-small.cnf
rem mysql -uroot -p -P 3306
rem mysql -uroot -p --port=3306
call %MYSQL_HOME%\bin\mysqld-max-nt --basedir=%MYSQL_HOME% --max_allowed_packet=2000000 --character-sets-dir=%MYSQL_HOME%\share\charsets\ --datadir=%MYSQL_HOME%\data\ --language=%MYSQL_HOME%\share\english\ --pid-file=%MYSQL_HOME%\data\simon.pid --master-port=3306 --port=3306 --report-port=3306   --innodb_data_home_dir=%CURRENT_DIR%\mysql5\data --innodb_flush_log_at_trx_commit=0 --innodb_file_io_threads=4  --innodb_lock_wait_timeout=50 --innodb_log_arch_dir=%CURRENT_DIR%\mysql5\data --innodb_log_group_home_dir=%CURRENT_DIR%\mysql5\data --innodb_buffer_pool_size=10000000 --innodb_additional_mem_pool_size=500000 --sort_buffer_size=1000000 --read_buffer_size=100000  --binlog_cache_size=100000 --console=false --standalone


pause


rem CREATE TABLE tranc1 (s1 INT, PRIMARY KEY (s1)) engine=innodb;
rem --bdb=true
rem set autocommit = 0
rem   mysql ��ȡ�����ļ���˳��: 
rem ����`/etc/my.cnf' Global options. 
rem ����`DATADIR/my.cnf' Server-specific options. 
rem ����`defaults-extra-file' The file specified with the --defaults-extra-file option. 
rem ����`~/.my.cnf' User-specific options. 
rem 
rem �����ڴ�ʹ������ļ�������Ҫ����2G: 
rem 
rem ����innodb_buffer_pool_size 
rem ����+ key_buffer_size 
rem ����+ max_connections*(sort_buffer_size+read_buffer_size+binlog_cache_size) 
rem ����+ max_connections*2MB 
rem 
rem ����InnoDb ����˵��: 
rem 
rem ����innodb_additional_mem_pool_size 
rem �����洢�����ֵ���Ϣ���ڲ��ṹ��Ϣ,  �����ı�Խ��,�����Ҫ���ڴ��Խ��,�����Ԥ���Ŀռ䲻��,�Ϳ�ʼ��ϵͳ�����ڴ�.errlog ���д���. ȱʡ����Ϊ1M. 
rem 
rem ����innodb_autoextend_increment 
rem ��������ռ���ʱ�ֶ���չ��С. 
rem 
rem ����innodb_buffer_pool_size 
rem �������ݺ������õĻ����С.һ��ʱϵͳ�����ڴ��50~80% .
