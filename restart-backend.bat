@echo off
echo Stopping any running Spring Boot application...
taskkill /f /im java.exe 2>nul

echo Starting Spring Boot application...
cd springapp
start mvn spring-boot:run

echo Backend restart initiated. Please wait for the application to start completely.
pause