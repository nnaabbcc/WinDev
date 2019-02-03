@ECHO OFF
SETLOCAL
PUSHD %~dp0

:: Add curl.exe to PATH
SET PATH=C:\Program Files\Git\mingw64\bin;%PATH%
CALL :InstallAll

POPD
ENDLOCAL
EXIT /b

:Install
IF EXIST %1 (
    PUSHD %1
    CALL Install.bat
    POPD
) ELSE (
    ECHO %1 not exist, could not be install
)
EXIT /b

:InstallAll

:: Install Notepad++
:: CALL :Install Notepad++

:: Install TortoiseGit
:: CALL :Install TortoiseGit

:: Install Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install 7zip activepresenter cmake dcmtk everything filezilla meld python3 teamviewer vscode you-get grepwin foxitreader

EXIT /b
