
PUSHD %~dp0

ECHO Installing Notepad++
curl -k https://notepad-plus-plus.org/repository/7.x/7.5.1/npp.7.5.1.Installer.x64.exe -o npp.7.5.1.Installer.x64.exe

npp.7.5.1.Installer.x64.exe /S

POPD
