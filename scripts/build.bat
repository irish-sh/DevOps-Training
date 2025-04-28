@echo off
echo ============================
echo  [BUILD STAGE STARTED]
echo ============================

@REM Create build folder
if not exist build (
    mkdir build
)

@REM Compile java program
javac -d build src\interview_programs\*.java

if %errorlevel% neq 0 (
    echo ❌ compilation failed
    exit /b 1
)

@REM Create .jar file
cd build
jar cvf ReverseString.jar *.class
cd ..

echo ✅ Build completed successfully!
