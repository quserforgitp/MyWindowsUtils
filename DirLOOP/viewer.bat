@echo off
cls
:SHOW
CLS
ECHO [107m[90mSHOWING THE FOLDER'S CONTENT[0m
echo.
echo.
DIR /B
echo.
echo. 
choice /C CD /N /T 5 /D C /M "press C to continue showing or press D to stop"
IF %ERRORLEVEL%  EQU 1 (GOTO SHOW) ELSE (GOTO EOF)
:EOF
CLS
EXIT /B 0
