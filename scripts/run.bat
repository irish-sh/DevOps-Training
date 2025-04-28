@echo off
echo ============================
echo  [RUN APP STAGE STARTED]
echo ============================

if not exist logs (
    mkdir logs
)

@REM Run .jar file in the background
start /b java -jar build\ReverseString.jar > logs\app.log 2>&1

echo ✅ App started in background!