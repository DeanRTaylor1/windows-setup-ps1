# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Chocolatey packages
choco install awscli docker-cli fd gh git golang jq kubernetes-cli lua make cmake neovim mingw nodejs-lts notion openssl pkgconfiglite postgresql postman powershell-core powertoys python python3 ripgrep rustup.install skaffold vim vscode Wget winrar wsl2 -y

# Install Oh My Posh
Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease

# Create a new PowerShell profile if it doesn't exist
if (!(Test-Path -Path $PROFILE)) { New-Item -ItemType File -Path $PROFILE -Force }

# Add Oh My Posh initialization and configuration to the profile
Add-Content -Path $PROFILE -Value "`nImport-Module oh-my-posh`noh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cloud-native-azure.omp.json' | Invoke-Expression`n"
