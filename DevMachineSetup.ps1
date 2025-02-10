# Visual Studio 
$config = 'C:\VS-Config\Professional2022.vsconfig'
New-Item $config  -ItemType File -Force -ErrorAction SilentlyContinue
Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/stevefutcher/animated-octo-adventure/refs/heads/main/Professional2022.vsconfig' -OutFile $config

choco install visualstudio2022professional -y --package-parameters "--config C:\VS-Config\Professional2022.vsconfig --passive"

#Azure Development
choco install azure-cli -y
choco install microsoftazurestorageexplorer -y

#JetBrains Tools
choco install resharper-ultimate-all -y --params "/NoCpp /NoTeamCityAddin" # Don't install for C++ or TeamCity - remove /NoCpp if desired
choco install jetbrains-rider -y

#Other Software
choco install vscode -y #The "everything" IDE
choco install openssl -y #Certificate Creation
choco install bloomrpc -y #gRPC client
choco install postman -y #ReST Client
choco install googlechrome -y --ignore-checksums # In case not already installed
choco install firefox -y #Alternative browser that isn't IE :)
choco install keepass -y #Password manager
choco install 7zip -y #Archive tool
choco install docker-desktop -y #Containers
choco install winscp -y #FTP Client
choco install fiddler -y # Proxy

#Show file extensions and hidden folders
$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty "$RegPath" -Name "HideFileExt" -Value 0 -Type Dword
Set-ItemProperty "$RegPath" -Name "Hidden" -Value 1 -Type Dword