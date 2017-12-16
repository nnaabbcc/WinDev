@ECHO OFF
SETLOCAL
PUSHD %~dp0

:: Install 

REM Create vim folder
SET VIM_CONFIG_PATH=%USERPROFILE%\.vim
RMDIR /S /Q %VIM_CONFIG_PATH%
MKDIR %VIM_CONFIG_PATH%\bundle

CALL :InstallPathogen

ENDLOCAL
POPD
GOTO :EOF

:InstallPathogen
git clone https://github.com/tpope/vim-pathogen.git
ROBOCOPY vim-pathogen\autoload %VIM_CONFIG_PATH%\autoload
RMDIR /S /Q vim-pathogen
GOTO :EOF