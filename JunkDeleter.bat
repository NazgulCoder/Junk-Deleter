@echo off

rem Set variables for the different cleanup tasks
set TEMP_CLEANUP=1
set REGISTRY_CLEANUP=1
set APPDATA_CLEANUP=1
set RECYCLE_BIN_CLEANUP=1
set REGISTRY_COMPACT=1
set DISK_CLEANUP=1
set SYS_FILE_CHECK=1
set UPDATE_CLEANUP=1
set EVENT_LOG_CLEANUP=1

rem Set the locations of the different folders and files
set TEMP_FOLDER=%TEMP%
set REGISTRY_KEY1=HKCU\Software\Temp
set REGISTRY_KEY2=HKLM\Software\Temp
set APPDATA_FOLDER=%APPDATA%\Temp
set FOLDER1=C:\Temp
set FOLDER2=D:\Temp

rem Set the number of cleanup tasks to perform
set TOTAL_TASKS=0
if %TEMP_CLEANUP%==1 set /a TOTAL_TASKS+=1
if %REGISTRY_CLEANUP%==1 set /a TOTAL_TASKS+=1
if %APPDATA_CLEANUP%==1 set /a TOTAL_TASKS+=1
if %RECYCLE_BIN_CLEANUP%==1 set /a TOTAL_TASKS+=1
if %REGISTRY_COMPACT%==1 set /a TOTAL_TASKS+=1
if %DISK_CLEANUP%==1 set /a TOTAL_TASKS+=1
if %SYS_FILE_CHECK%==1 set /a TOTAL_TASKS+=1
if %UPDATE_CLEANUP%==1 set /a TOTAL_TASKS+=1
if %EVENT_LOG_CLEANUP%==1 set /a TOTAL_TASKS+=1

rem Initialize the progress counter
set CURRENT_TASK=0

rem Perform the temporary file cleanup task if selected
if %TEMP_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Cleaning up temporary files...
  rd /s /q %TEMP_FOLDER%
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the registry cleanup task if selected
if %REGISTRY_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Cleaning up registry keys...
  reg delete %REGISTRY_KEY1% /f
  reg delete %REGISTRY_KEY2% /f
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the AppData cleanup task if selected
if %APPDATA_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Cleaning up old files in AppData...
  del /f /s /q %APPDATA_FOLDER%\*
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the recycle bin cleanup task if selected
if %RECYCLE_BIN_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Emptying the recycle bin...
  rd /s /q C:\$Recycle.Bin
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the registry compaction task if selected
if %REGISTRY_COMPACT%==1 (
  set /a CURRENT_TASK+=1
  echo Compacting the registry...
  regedit /v /c
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the disk cleanup task if selected
if %DISK_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Performing disk cleanup...
  cleanmgr /sageset:1
  cleanmgr /sagerun:1
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the system file check task if selected
if %SYS_FILE_CHECK%==1 (
  set /a CURRENT_TASK+=1
  echo Checking and repairing system files...
  sfc /scannow
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the update cleanup task if selected
if %UPDATE_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Cleaning up update files...
  wuauclt /detectnow
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

rem Perform the Windows event log cleanup task if selected
if %EVENT_LOG_CLEANUP%==1 (
  set /a CURRENT_TASK+=1
  echo Clearing the System and Application event logs...
  wevtutil cl System
  wevtutil cl Application
  echo %CURRENT_TASK% / %TOTAL_TASKS%
)

echo Cleanup complete!
pause

