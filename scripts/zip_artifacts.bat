@echo off
echo ============================
echo  [ZIP ARTIFACTS STAGE STARTED]
echo ============================

REM Create artifacts folder
cd ..
if not exist build_artifacts mkdir build_artifacts

REM Set ZIP filename with timestamp
set datetime=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set datetime=%datetime: =0%

set ZIPNAME=build_artifacts\build_%datetime%.zip

REM Use powershell to zip
powershell Compress-Archive -Path build\*,logs\*,reports\* -DestinationPath %ZIPNAME%

copy %ZIPNAME% D:\Shared

echo Artifacts zipped and copied to Shared folder!
