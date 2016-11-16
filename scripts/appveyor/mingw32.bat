@echo off

set PATH=C:\MinGW\bin;%PATH:C:\Program Files\Git\usr\bin;=%
set CONFIGURATION=Debug

cmake -DCMAKE_BUILD_TYPE=%CONFIGURATION% -G "MinGW Makefiles" . || exit /b 1
cmake --build . || exit /b 2
ctest -V . || exit /b 3
