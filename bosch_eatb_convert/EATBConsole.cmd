@echo off
setlocal enabledelayedexpansion

:: Define the fixed source directory
set "SOURCE_DIR=C:\Bosch\bosch_eatb_convert\eatb_files"

:: Define the file that contains the destination path
set "DEST_FILE=C:\Bosch\bosch_eatb_convert\m_path.txt"

:: Check if the destination file exists
if not exist "%DEST_FILE%" (
	echo Destination file not found: %DEST_FILE%
	exit /b 1
)

:: Read the destination path from the file 
set /p DEST_DIR=<"%DEST_FILE%"

:: Validate if destination directory exists
if not exist "%DEST_DIR%" (
	echo Destination directory does not exist: %DEST_DIR%
	exit /b 1
)

:: Copy all files and subdirectories
xcopy "%SOURCE_DIR%\*" "%DEST_DIR%\" /E /I /Y

echo Copy operation completed succesfully.
exit /b 0