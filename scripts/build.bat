@echo off
echo ============
echo Build stage STARTED
echo ============

cd ..
if not exist build (
    mkdir build
)

@REM Compile the source code
javac -d build src\interview_programs\ReverseString.java

@REM Check error in compilation
if %errorlevel% neq 0 (
    echo Compilation failed!
    exit /b 1
)

@REM Create .jar file
cd build\interview_programs
jar cvf ReverseString.jar ReverseString.class
cd ..\..

echo Build completed successfully!

dir /s /b src > file_list.txt
type file_list.txt
