@echo off

set CONFIGURATION=Debug

cmake  -G "%CMAKE_GENERATOR%" . || exit /b 1
cmake --build . --config %CONFIGURATION% || exit /b 2
bin\ArduinoJsonTests.exe || exit /b 3
