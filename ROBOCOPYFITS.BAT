@ECHO OFF
REM ************************************************************
REM ************************************************************


REM Script:	VOYAGER BASIC AUTO COPY SCRIPT
REM Author: 	Bill Long - bill@outlook.com
REM Updated:	5/25/2020


REM ************************************************************
REM ************************************************************


REM 	Setting Voyager Environment Variables


REM ************************************************************
REM ************************************************************


SETX VOYAGERDIR "%USERPROFILE%\Documents\Voyager"
SET VOYAGERDIR=%USERPROFILE%\Documents\Voyager


REM ************************************************************
REM ************************************************************


REM 	EDIT THESE VARIABLES TO CHANGE THE SOURCE / DESTINATION


SET SOURCE=%VOYAGERDIR%\Sequence
SET DEST=\\ASTROBEAST\INBOX


REM ************************************************************
REM ************************************************************


REM 	Copy FITS Files to Destination


REM ************************************************************
REM ************************************************************


ROBOCOPY %SOURCE% %DEST% /E /NP /LOG:VOYROBOCOPY.LOG


REM ************************************************************
REM ************************************************************


