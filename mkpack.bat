@echo off

set VER=1-0-0

set SRC_DIR=src
set ZIP_FILE=craftableuncraftables.%VER%.zip

pushd "%SRC_DIR%"
if errorlevel 1 (
    echo Failed to change to source directory "%SRC_DIR%".
    exit /b 1
)

tar.exe -a -c -v -f "../%ZIP_FILE%" *

popd

if exist "%ZIP_FILE%" (
    echo .zip file created successfully: "%ZIP_FILE%"
) else (
    echo Failed to create .zip file.
    exit /b 1
)