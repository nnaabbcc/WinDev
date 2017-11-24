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
CALL :Install Notepad++

EXIT /b
