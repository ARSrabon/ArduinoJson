@echo off

echo %PATH%

:: remove git.exe from PATH (CMake don't like it)
set PATH=%PATH:C:\Program Files\Git\usr\bin;=%

:: inject MinGW in PATH
set PATH=C:\mingw64\bin;%PATH%

echo %PATH%

cmake -DCMAKE_BUILD_TYPE=Debug -G "MinGW Makefiles" . || exit /b 1
cmake --build . || exit /b 2
bin\ArduinoJsonTests.exe || exit /b 3
