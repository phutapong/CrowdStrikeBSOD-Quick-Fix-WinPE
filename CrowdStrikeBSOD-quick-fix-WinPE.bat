@echo off
title CrowdStrikeBSOD-quick-fix-WinPE by phutapong@gmail.com
:: BY: www.linkedin.com/in/phutapong-suanyim-b217b710
color 0A
echo =============================================
echo          Welcome to CrowdStrikeBSOD-quick-fix-WinPE

## CrowdStrikeBSOD-quick-fix-WinPE.bat
echo for those affected by Crowdstrike Falcon Sensor Update problem
echo          this is not official fix
echo =============================================
echo.
timeout /t 3 /nobreak >nul

:: Find CrowdStrike directory across all drives
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\%windir%\System32\drivers\CrowdStrike (
        echo Found CrowdStrike directory on drive %%d:
        cd /d %%d:\%windir%\System32\drivers\CrowdStrike
        del /f /q C-00000291*.sys
    )
)

echo Done!
shutdown /r /t 1
