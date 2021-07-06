REM @ECHO OFF
CLS
SET ARG1PASS=%1
SET ARG2PATH=%2
IF [%ARG1PASS%] EQU [] (GOTO USAGE) ELSE (GOTO INIT)
IF [%ARG2PATH%] EQU [] (GOTO USAGE) ELSE (GOTO INIT)

:USAGE
ECHO [92mUSAGE[0m : multiunrar password PATHfiles
EXIT /B 1


:INIT
DIR /B *.rar > %temp%\rarlist.txt 

SETLOCAL EnableDelayedExpansion
FOR /F %%a IN (%temp%\rarlist.txt) DO (
unrar e -p%ARG1PASS% -y %%a
)
pause
DEL %TEMP%\rarlist.txt
GOTO EOF

:EOF
REM BELL SONG
ECHO 
EXIT /B 0 
 

