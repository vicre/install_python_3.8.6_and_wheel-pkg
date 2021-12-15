Import-Module "$PSScriptRoot\Stop-IfEnviromentVariableIsAlreadySet.psm1"
Import-Module "$PSScriptRoot\Add-NewEnviromentVariable.psm1"

function Set-EnviromentVariable {
    param(
        [string]$NewEnviromentVariable=$null
    )

    if ($NewEnviromentVariable -eq $null) {
        throw "null error exception"
    }

    Write-Host -ForegroundColor Green "Setting Set-EnviromentVariable"

    $enviroment_already_added = (Stop-IfEnviromentVariableIsAlreadySet -NewEnviromentVariable $NewEnviromentVariable)
    if ($true -eq $enviroment_already_added) {return "$NewEnviromentVariable Alerady added"}
    Add-NewEnviromentVariable -NewEnviromentVariable $NewEnviromentVariable
   
}
