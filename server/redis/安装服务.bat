@echo off
fltmc>nul||cd/d %~dp0&&mshta vbscript:CreateObject("Shell.Application").ShellExecute("%~nx0","%1","","runas",1)(window.close)&&exit
set myPath=%~dp0
sc create .phpEnv_Redis binPath= "\"%myPath%redis-server.exe\" --service-run %myPath%redis.windows-service.conf --service-name .phpEnv_Redis" start= auto
pause