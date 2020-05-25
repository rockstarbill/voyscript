@ECHO OFF
REM ************************************************************
REM ************************************************************


REM Script:	VOYAGER ARRAY AUTO COPY SCRIPT - 2 Node
REM Author: 	Bill Long - bill@outlook.com
REM Updated:	5/25/2020


REM ************************************************************
REM ************************************************************


REM 	Setting Voyager Array Environment Variables


REM ************************************************************
REM ************************************************************


SETX VOYAGERDIR1 "%USERPROFILE%\Documents\Voyager"
SET VOYAGERDIR1=%USERPROFILE%\Documents\Voyager

SETX VOYAGERDIR2 "%USERPROFILE%\Documents\Voyager#2"
SET VOYAGERDIR2=%USERPROFILE%\Documents\Voyager#2


REM ************************************************************
REM ************************************************************


REM 	EDIT THESE VARIABLES TO CHANGE THE SOURCE / DESTINATION


SET SOURCE1=%VOYAGERDIR1%\Sequence
SET SOURCE2=%VOYAGERDIR2%\Sequence
SET DEST=\\ASTROBEAST\INBOX


REM ************************************************************
REM ************************************************************


REM 	Copy FITS Files to Destination


REM ************************************************************
REM ************************************************************


ROBOCOPY %SOURCE1% %DEST% /E /NP /LOG:VOYROBOCOPY1.LOG
ROBOCOPY %SOURCE2% %DEST% /E /NP /LOG:VOYROBOCOPY2.LOG


REM ************************************************************
REM ************************************************************


