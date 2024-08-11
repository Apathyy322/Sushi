@echo off
chcp 65001 > nul 
mode con cols=80 lines=30
color 0f
title Sushi ^| Coded By Apathyy322
cls

:PasswordCheck
cls
call :logo
<nul set /p="[1;91mPassword: [0m"
set /p "password="
IF /i "%password%"=="sushi" echo [1;92mSuccessfully loged in![0m && timeout 1 > nul && goto success
echo [91mError. Wrong password entered![0m
timeout /t 2 >nul
goto PasswordCheck

:success
timeout 1 > nul
cls
call :logo
echo.
echo [90m^> [97m [38;5;33m1^)  First Option  [0m       [38;5;69m 3) Third Option[0m       [38;5;105m 5) Fifth Option[0m     
echo [90m^> [97m [38;5;105m2^)  Second Option  [0m       [38;5;141m4) Fourth Option[0m      [38;5;213m 6) Sixth Option[0m
set choice=
echo.
set /P choice=[[91m%username%[0m~([94m%computername%[0m)] ^> 
if /I "%choice%"=="1" (
    goto firstop
) else if /I "%choice%"=="2" (
    goto secondop
) else if /I "%choice%"=="3" (
    goto thirdop
) else if /I "%choice%"=="4" (
    goto fourthop
) else if /I "%choice%"=="5" (
    goto fifthop
) else if /I "%choice%"=="6" (
    goto sixthop
) else (
    echo [91mWrong Choice! Retry again![0m
    timeout 1 > nul
    goto :success
)
goto :eof

:firstop
cls
call :logo
echo This is first option!
pause > nul
goto :success

:secondop
cls
call :logo
echo This is second option!
pause > nul
goto :success

:thirdop 
cls
call :logo
echo This is third option!
pause > nul
goto :success

:fourth
cls
call :logo
echo This is fourth option!
pause > nul
goto :success

:fifthop 
cls
call :logo
echo This is fifth option!
pause > nul
goto :success

:sixthop
cls
call :logo
echo This is sixth option!
pause > nul
goto :success

:logo
echo.
echo.
echo [38;5;33m                     ███████╗██╗   ██╗███████╗██╗  ██╗██╗
echo [38;5;69m                     ██╔════╝██║   ██║██╔════╝██║  ██║██║
echo [38;5;105m                     ███████╗██║   ██║███████╗███████║██║
echo [38;5;141m                     ╚════██║██║   ██║╚════██║██╔══██║██║
echo [38;5;177m                     ███████║╚██████╔╝███████║██║  ██║██║
echo [38;5;213m                     ╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝[0m   
echo. 
echo [38;5;33m                               Made by [0m[95mApathyy322[0m   
echo.       
echo [38;5;213m                        https://github.com/Apathyy322[0m                                              
goto :eof
