@echo off
echo Stopping React development server...
taskkill /f /im node.exe 2>nul

echo Starting React development server with 3D support...
cd reactapp
start npm start

echo Frontend restart initiated. The 3D charts should now be visible.
pause