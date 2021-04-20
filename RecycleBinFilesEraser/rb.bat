@echo off
title Remove Recycle Bin Files
Set /a passcount=0

:start
cls
color 0f
IF [%passcount%]==[3] goto limitpass
Set pass=
Set /P pass="ENTER THE PASSWORD ->"
	IF NOT [%pass%]==[daf] goto invalidpass 
	IF [%pass%]==[daf] goto question

:question
cls 
color 0b
Set resp=
Set /p resp="Do you want to be prompted after each file will be deleted? (N/y) "
IF NOT [%resp%]==[n] IF NOT [%resp%]==[N] IF NOT [%resp%]==[y] IF NOT [%resp%]==[Y] IF NOT [%resp%]==[] (goto invalidResp)
IF [%resp%]==[y] (goto deleteFilesQ)
IF [%resp%]==[Y] (goto deleteFilesQ)
IF [%resp%]==[] (goto deleteFiles) 
IF [%resp%]==[N] (goto deleteFiles)
IF [%resp%]==[n] (goto deleteFiles)

:deleteFiles
cls
color 0b
cd C:\$Recycle.Bin
del /F /S /Q *.*
goto EOF

:deleteFilesQ
cls
color 0b
cd C:\$Recycle.Bin
del /F /S /P *.*
goto EOF

:invalidResp
color 0c 
echo 
echo invalid response just type y or n!!!!!!
pause
goto question

:invalidpass
color 0c 
echo 
echo Your enter is invalid!!!! TRY AGAIN
set /a passcount=%passcount%+1
pause
goto start

:limitpass
echo you have been enter the wrong password so many times = %passcount%
pause

:EOF
exit 0