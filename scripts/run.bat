@echo off
echo ============================
echo  [RUN APP STAGE STARTED]
echo ============================

@REM Create logs folder
cd ..
if not exist logs (
    mkdir logs
)

@REM Run .jar file in the background
start /b java -jar build\interview_programs\ReverseString.jar > logs\app.log 2>&1

echo App started in background!