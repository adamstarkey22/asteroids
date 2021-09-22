@echo off

pushd "%~dp0"

:: configure and build project
cmake -S . -B build
cmake --build build --config Debug
echo Build finished with exit code %errorlevel%
if %errorlevel% neq 0 goto end

:: run executable
setlocal
path = build\ext\SFML\lib\Debug;%path%
echo Executing program...
build\debug\asteroids.exe
echo Program terminated with exit code %errorlevel%
endlocal

:end
popd