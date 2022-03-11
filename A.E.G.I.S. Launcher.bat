::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdDWDJFCH+0x+IRhbLA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF6JeA==
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF6JeA==
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdDWDJHjK0QwXZjIaf0rCEGqvCLYU7fq16vKCwg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title A.E.G.I.S. Launcher
cd /d %appdata%\A.E.G.I.S
if not exist "version.txt" (
echo Downloading A.E.G.I.S for the first time
curl -L https://github.com/XG213/A.E.G.I.S./raw/main/A.E.G.I.S..exe > A.E.G.I.S..exe
curl -L --silent https://github.com/XG213/A.E.G.I.S./raw/main/version.txt > version.txt
)
if not exist "launcher_version.txt" (
echo Downloading some things...
curl -L --silent https://github.com/XG213/A.E.G.I.S./raw/main/launcher_version.txt > launcher_version.txt
)
echo Checking for updates...
set /p old_version=<version.txt
set /p old_launcher_version=<launcher_version.txt
del version.txt
del launcher_version.txt
curl -L --silent https://github.com/XG213/A.E.G.I.S./raw/main/version.txt > version.txt"
curl -L --silent https://github.com/XG213/A.E.G.I.S./raw/main/launcher_version.txt > "launcher_version.txt
set /p version=<version.txt
set /p launcher_version=<launcher_version.txt
if %launcher_version% GTR %old_launcher_version% (
echo New launcher update! Downloading...
curl -L https://github.com/XG213/A.E.G.I.S./raw/main/A.E.G.I.S.%%20Launcher.exe > "A.E.G.I.S. Launcher.exe"
echo Done!
pause > nul
)
if %version% GTR %old_version% (
echo New update! Downloading...
del A.E.G.I.S..exe
curl -L https://github.com/XG213/A.E.G.I.S./raw/main/A.E.G.I.S..exe > A.E.G.I.S..exe
echo Done!
)
goto main
:main
cls
echo A.E.G.I.S. Launcher %launcher_version%
echo 1. Play
echo 2. Options
set /p choice=[1/2]: 
if "%choice%"=="1" goto game
if "%choice%"=="2" goto options
goto main
:game
A.E.G.I.S..exe
pause > nul
goto main
:options
cls
echo work in progress lol
pause > nul
goto main
pause