function Add-NewEnviromentVariable {
    param(
        [string]$NewEnviromentVariable=$null
    )
    $key = 'HKCU:/Environment'
    $updated_path_variable = @((Get-ItemProperty -Path $key).Path, ";", "$NewEnviromentVariable")
    [System.Environment]::SetEnvironmentVariable('Path',"$updated_path_variable",[System.EnvironmentVariableTarget]::User)
}