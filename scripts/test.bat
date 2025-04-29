@echo off
echo ============================
echo  [TEST STAGE STARTED]
echo ============================

REM Create necessary folders
cd ..
if not exist reports mkdir reports

REM Set the JUnit and Hamcrest JAR paths
set JUNIT_JAR=libs\junit-4.13.2.jar
set HAMCREST_JAR=libs\hamcrest-core-1.3.jar

REM Compile test classes
javac -cp "%JUNIT_JAR%;%HAMCREST_JAR%;build" -d build tests\*.java

if %errorlevel% neq 0 (
    echo Test Compilation Failed
    exit /b 1
)

REM Run tests and redirect output
for %%f in (tests\*.class) do (
    echo Running test: %%~nf
    java -cp "%JUNIT_JAR%;%HAMCREST_JAR%;build" org.junit.runner.JUnitCore %%~nf > reports\%%~nf.txt
)

echo ✅ Testing completed!
