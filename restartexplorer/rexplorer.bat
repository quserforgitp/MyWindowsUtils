@ECHO OFF
CLS
REM setting the cmd window to fullscreen
MODE 800
REM THE "sp" has  43 blnks
SET sp=                                           
REM CHANGING THE PAGE'S CODE IN ORDER TO BE ABLE TO SHOW UTF CHARACTERS 
ECHO %sp%[33m[***][31mCLOSING EXPLORER.EXE[0m
TIMEOUT /T 3 >NUL
TASKKILL /IM EXPLORER.EXE /F >NUL
TASKKILL /IM brave.* /F >NUL
ECHO.
ECHO.
ECHO.
ECHO %sp%[33m[**][36mPLEASE WAIT WHILE THE PROGRAM RESTARTS...[0m
TIMEOUT /T 3 > NUL
ECHO.
ECHO.
ECHO.
ECHO %sp%[33m[*][92mRESTARTING THE PROGRAM....[0m
TIMEOUT /T 3 > NUL
CLS
START EXPLORER.EXE
:EOF
EXIT  0