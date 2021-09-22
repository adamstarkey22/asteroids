@echo off

:: execute from project root
pushd "%~dp0"

:: build project
cmake --build build
echo Build finished with exit code %errorlevel%
if %errorlevel% neq 0 exit /b

:: run project
echo Executing program...
build\debug\asteroids.exe
echo Program terminated with exit code %errorlevel%

:: restore original calling directory
popd