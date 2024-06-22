@echo off
title Painel de Limpeza - Natanael Carvalho

:menu
cls
echo ====================================
echo         Painel de Limpeza
echo          por Natanael Carvalho
echo ====================================
echo 1. Limpar a Lixeira
echo 2. Remover Arquivos Temporários
echo 3. Sair
echo ====================================
set /p choice=Digite a sua escolha: 

if "%choice%"=="1" goto :limpar_lixeira
if "%choice%"=="2" goto :remover_temp
if "%choice%"=="3" goto :sair

echo Opção inválida. Por favor, escolha uma opção válida.
pause
goto :menu

:limpar_lixeira
echo Limpando a Lixeira...
PowerShell.exe -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction Ignore"
if %ERRORLEVEL% equ 0 (
    echo A Lixeira foi limpa com sucesso!
) else (
    echo Ocorreu um erro ao limpar a Lixeira.
)
pause
goto :menu

:remover_temp
echo Removendo Arquivos Temporários...
del /q /f /s %TEMP%\*
echo Arquivos Temporários removidos com sucesso!
pause
goto :menu

:sair
exit
