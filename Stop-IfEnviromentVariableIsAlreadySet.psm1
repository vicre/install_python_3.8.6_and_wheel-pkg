function Stop-IfEnviromentVariableIsAlreadySet {
    param
    (
        [string]$NewEnviromentVariable=$null            
    )

    if ($null -eq $NewEnviromentVariable) {
        throw "null error exception"
    }

    
    $key = 'HKCU:/Environment'
    $enviroment_variables = [string]((Get-ItemProperty -Path $key).Path)

    # if(($null -eq $enviroment_variables) -or (0 -eq $enviroment_variables.Length)) {return $false}
    
    $enviroment_variable_already_set = if(($enviroment_variables.ToLower()).Contains($NewEnviromentVariable.ToLower())) {$true} else {$false}
    return $enviroment_variable_already_set
}
