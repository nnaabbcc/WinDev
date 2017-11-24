@ECHO OFF
SETLOCAL
PUSHD %~dp0

ECHO Downloading Git for windows, please wait
CALL :Download https://github.com/git-for-windows/git/releases/download/v2.15.0.windows.1/Git-2.15.0-64-bit.exe Git-2.15.0-64-bit.exe
CALL :Download https://raw.githubusercontent.com/nnaabbcc/WinDev/master/Git/git_install.inf git_install.inf
ECHO Git for windows downloaded

ECHO Install Git
Git-2.15.0-64-bit.exe /LOADINF="git_install.inf"

ECHO Add Git to PATH
SET PATH=C:\Program Files\Git\bin;%PATH%

ECHO Clone the repository from github
git.exe clone https://github.com/nnaabbcc/WinDev.git

ECHO Install the contents from github
CALL WinDev\Install.bat

ECHO Complete

POPD
ENDLOCAL
EXIT /b

::***************************************************
:Download
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
EXIT /b
