@echo on

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install nodejs.install -y

choco install gulp-cli -y

npm install -g gulp -y

npm install -g bower -y

npm install -g webpack -y

choco install yarn -y

choco install vim -y

choco install googlechrome -y

choco install vscode

choco install vscode-drawio 

choco install sqlite -y

# WSL X-11 Server 
choco install vcxsrv

@pause
