@echo off
echo ============================
echo  [CLEANUP OLD ZIPS STAGE STARTED]
echo ============================

cd build_artifacts

REM List ZIPs sorted by time and delete older ones
for /f "skip=3 delims=" %%a in ('dir /b /o-d *.zip') do (
    echo Deleting old file: %%a
    del "%%a"
)

cd ..
echo ✅ Cleanup completed!
