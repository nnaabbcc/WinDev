
PUSHD %~dp0

ECHO Downloading TortoiseGit
curl -k https://download.tortoisegit.org/tgit/2.5.0.0/TortoiseGit-2.5.0.0-64bit.msi -o TortoiseGit-2.5.0.0-64bit.msi

ECHO Installing TortoiseGit
msiexec.exe /i TortoiseGit-2.5.0.0-64bit.msi /QN

ECHO TortoiseGit Installed

POPD
