@echo off
:: Verifica si ya está en modo administrador
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    :: Si no, relanza el script con privilegios de administrador
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:: Simulación de hackeo
echo Connecting to target system...
ping -n 1 127.0.0.1>nul
echo Bypassing firewalls...
ping -n 1 127.0.0.1>nul
echo Accessing main security grid...
ping -n 1 127.0.0.1>nul
echo Permission denied...
ping -n 1 127.0.0.1 >nul

:: Broma de Metasploit
for /L %%i in (0,1,2) do (
    echo PASSWORD REQUIRED TO ACCESS!
    timeout /t 1 /nobreak >nul
    ping -n 1 127.0.0.1>nul
)

echo Launching payload...
ping -n 1 127.0.0.1>nul
echo Error: Payload failed to execute.
ping -n 1 127.0.0.1>nul
echo WARNING: Your system has detected a critical error!
echo Attempting to fix...
echo All systems stable.


:: Mensaje con MsgBox
echo MsgBox "YOUR SYSTEM HAS BEEN HACKED!",64,"Windows Optimization" > temp.vbs
cscript //nologo temp.vbs
del temp.vbs



