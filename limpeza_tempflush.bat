@echo off
:: Script para limpeza de arquivos temporários
:: Inclui limpeza de arquivos temporários do navegador Brave

echo Limpando arquivos temporários do Windows...
del /s /q "%temp%\*.*"
rd /s /q "%temp%"

echo Limpando arquivos temporários de navegadores...

:: Brave
echo Limpando cache do Brave...
set BRAVE_CACHE_PATH=%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cache
del /s /q "%BRAVE_CACHE_PATH%\*.*"
rd /s /q "%BRAVE_CACHE_PATH%"

:: Opção adicional: limpar cookies e histórico (remover os comentários para habilitar)
:: del /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cookies"
:: del /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\History"

echo Limpando arquivos temporários de outros diretórios...

:: Prefetch (Cuidado ao usar, pois pode causar perda de desempenho temporária ao carregar programas)
echo Limpando arquivos Prefetch...
del /s /q "%SystemRoot%\Prefetch\*.*"

:: Temp
echo Limpando arquivos temporários de outros diretórios...
del /s /q "%SystemRoot%\Temp\*.*"

:: Recycle Bin (Lixeira)
echo Limpando Lixeira...
PowerShell -command "Clear-RecycleBin -Force"

:: Limpa o cache do DNS
ipconfig /flushdns

:: Limpeza finalizada
echo Limpeza concluída!
pause
