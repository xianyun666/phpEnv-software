@echo off
set myPath=%~dp0
%myPath%redis-server.exe %myPath%redis.windows.conf
pause