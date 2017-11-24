@ECHO OFF
SETLOCAL
PUSHD %~dp0

ECHO Downloading Notepad++
curl -k https://notepad-plus-plus.org/repository/7.x/7.5.1/npp.7.5.1.Installer.x64.exe -o npp.7.5.1.Installer.x64.exe

ECHO Installing Notepad++
npp.7.5.1.Installer.x64.exe /S

ECHO Notepad++ Installed
ENDLOCAL
POPD
