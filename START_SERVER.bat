@echo off
echo Starting Raleigh Home Automation Website Server...
echo.
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File server.ps1
pause
