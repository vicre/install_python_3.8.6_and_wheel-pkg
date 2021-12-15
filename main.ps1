Import-Module "$PSScriptRoot\Set-EnviromentVariable.psm1"
Import-Module "$PSScriptRoot\Install-PipModule.psm1"
Import-Module "$PSScriptRoot\Install-WheelsPackages.psm1"
Import-Module "$PSScriptRoot\Install-Python386.psm1"

Install-Python386 # Requires admin rights
Set-EnviromentVariable -NewEnviromentVariable "$env:USERPROFILE\AppData\Roaming\Python\Python38\Scripts"
Install-PipModule
Install-WheelsPackages
