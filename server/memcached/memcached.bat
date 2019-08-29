@echo off
echo Run start command
echo Memcached version 1.5.16 from 2019-5-24
echo phpEnv is compiled from 2019-08-26
set myPath=%~dp0
%myPath%memcached.exe -p 11211 -m 512
pause