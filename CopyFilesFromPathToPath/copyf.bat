@echo off
title COPY IT AS WAS ORDERED
color 3
SETLOCAL enabledelayedexpansion

REM obteniendo la ruta de donde se desea copiar el contenido 
echo -----------ENTER THE PATH YOU WANT TO COPY FROM ---------------
SET /P SOURCEPATH="please enter the entire path e.g -> c:\users\user\desktop -->"
REM moving to sourcepath in order to make the entire copy of the content 
echo  SOURCE PATH = %SOURCEPATH%
pause 

REM obteniendo la ruta de destino, a la que se quiere copiar el contenido
echo -----------ENTER THE PATH YOU WANT TO COPY TO------------------
SET /P DESTINYPATH="please enter the entire path e.g -> f:\destinyfolder\ -->"
cls
color e
echo.
echo.
echo.
echo.
echo --------COPYING ALL FILES FROM %SOURCEPATH% --TO-> %DESTINYPATH%---------
REM color /?? --> usalo e investiga la posible falla, - pista - se ejecuta sin err
echo PROGRESS.......
call xcopy %SOURCEPATH%\* %DESTINYPATH%
REM capturando error, mostrandolo y saliendo con código 1
IF %ERRORLEVEL% NEQ 0 (color c&&echo AN ERROR WAS OCCURRED CODE %errorlevel%&&echo press any key to continue&& pause>nul &&exit /b 1)
color a 
echo  -------------------PROCCESS HAS BEEN FINALIZED!!!!------------------
PAUSE
cls
echo --------------SHOWING CONTENT FROM %DESTINYPATH%------------------------
DIR %DESTINYPATH%
PAUSE 
:EOF

EXIT /b 0




 

