REM ============================================
REM mobilefibra-site
REM Atualizado em: 06/04/2026 20:00
REM Alterações: Criação do script de deploy
REM ============================================

@echo off
cd /d "%~dp0"

echo.
echo [mobilefibra-site] Iniciando deploy...
echo.

git add .

set /p msg="Descricao do commit: "

git commit -m "%msg%"
git push origin main

echo.
echo [OK] Deploy enviado! Cloudflare Pages atualiza em instantes.
echo Acesse: https://mobilefibra.com.br
echo.
pause
