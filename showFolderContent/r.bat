@ECHO OFF
SET argSec=%1
IF [%argSec%] EQU [] (GOTO USAGE) ELSE (GOTO START)
:START
CLS
ECHO [33m       ---_______THE FILES ON %CD%_______---[0m
ECHO.
ECHO [92m&&dir /b&&ECHO [0m >NUL
ECHO [0m>nul
TIMEOUT /T %argSec% >NUL
GOTO START

:USAGE
ECHO [92m        ____-CORRECT USAGE-____
ECHO ---^>[36m r seconds
ECHO EXAMPLE ---^> r 4[0m
ECHO PRESS ANY KEY TO CONTINUE
TIMEOUT /T 4 >NUL

:EOF