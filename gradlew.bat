@echo off
:: Gradle startup script for Windows

set DIR=%~dp0
set EXEC=%DIR%\gradle\wrapper\gradle-wrapper.jar

if exist "%EXEC%" (
    java -jar "%EXEC%" %*
) else (
    echo Gradle wrapper jar not found at %EXEC%
    exit /b 1
)