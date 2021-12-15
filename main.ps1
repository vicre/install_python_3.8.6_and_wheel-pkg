Import-Module "$PSScriptRoot\Set-EnviromentVariable.psm1"
Import-Module "$PSScriptRoot\Install-PipModule.psm1"
Import-Module "$PSScriptRoot\Install-WheelsPackages.psm1"
Import-Module "$PSScriptRoot\Install-Python386.psm1"






# Requires admin rights
Install-Python386 

# This should be commented out if the script runs with admin rights
# Because no packages will be installed here - I THINK
Set-EnviromentVariable -NewEnviromentVariable "$env:USERPROFILE\AppData\Roaming\Python\Python38\Scripts"

# Install newest pip module
Install-PipModule

# If running with admin rights. Then pkgs will be installed C:\Program Files\Python38\Lib\site-packages
# Otherwise in AppData\Roaming\Python\Python38\Scripts
Install-WheelsPackages
