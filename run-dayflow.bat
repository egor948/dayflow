@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>&1
if not errorlevel 1 goto use_py
where python >nul 2>&1
if not errorlevel 1 goto use_python
echo Python was not found. Install Python 3 or run: npx serve .
pause
goto end

:use_py
echo Dayflow is available at http://localhost:8080
echo Keep this window open while using the app.
py -m http.server 8080
goto end

:use_python
echo Dayflow is available at http://localhost:8080
echo Keep this window open while using the app.
python -m http.server 8080

:end
endlocal
