@echo off
title proje-1791164218
cd /d "%~dp0"

echo ========================================================
echo   proje-1791164218 - AI Agent Company Projesi Baslatiliyor
echo ========================================================
echo.

if exist "index.html" (
    echo [OK] Web arayuzu baslatiliyor...
    start "" "index.html"
    exit /b 0
)

if exist "app.py" (
    echo [OK] Python uygulamasi baslatiliyor...
    py app.py
    if %errorlevel% neq 0 pause
    exit /b 0
)

echo [HATA] Calistirilacak ana dosya bulunamadi.
pause
