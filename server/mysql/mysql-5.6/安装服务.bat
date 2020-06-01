@echo off
fltmc>nul||cd/d %~dp0&&mshta vbscript:CreateObject("Shell.Application").ShellExecute("%~nx0","%1","","runas",1)(window.close)&&exit
set myPath=%~dp0
sc create .phpEnv_MySQL binPath= "%myPath%bin\mysqld .phpEnv_MySQL" start= auto
pause