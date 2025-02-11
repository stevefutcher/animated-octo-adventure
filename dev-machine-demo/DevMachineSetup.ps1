# Install Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Visual Studio
# https://learn.microsoft.com/en-us/visualstudio/install/workload-and-component-ids?view=vs-2022
$config = 'C:\VS-Config\Professional2022.vsconfig'
New-Item $config  -ItemType File -Force -ErrorAction SilentlyContinue
Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/stevefutcher/animated-octo-adventure/refs/heads/main/dev-machine-demo/Professional2022.vsconfig' -OutFile $config

choco install visualstudio2022professional -y --package-parameters "--config C:\VS-Config\Professional2022.vsconfig --passive"

#Azure Development
choco install azure-cli -y
choco install microsoftazurestorageexplorer -y

#Other IDEs 
choco install jetbrains-rider -y
choco install vscode -y

#Other Software
choco install postman -y #ReST Client
choco install googlechrome -y --ignore-checksums # In case not already installed
choco install firefox -y #Alternative browser that isn't IE :)
choco install keepass -y #Password manager
choco install 7zip -y #Archive tool
choco install docker-desktop -y #Containers
choco install winscp -y #FTP Client
choco install fiddler -y # Proxy