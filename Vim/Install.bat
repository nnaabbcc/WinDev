@ECHO OFF
SETLOCAL
PUSHD %~dp0

:: Install 

REM Create vim folder
SET VIM_CONFIG_PATH=%USERPROFILE%\.vim
RMDIR /S /Q %VIM_CONFIG_PATH%
MKDIR %VIM_CONFIG_PATH%\bundle

git clone https://github.com/VundleVim/Vundle.vim.git %VIM_CONFIG_PATH%/bundle/Vundle.vim

COPY _vimrc %USERPROFILE%

ENDLOCAL
POPD
GOTO :EOF

