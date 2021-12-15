function Install-WheelsPackages {
    Write-Host -ForegroundColor Green "Install-WheelsPackages"
    Get-ChildItem -Path "$PSScriptRoot\Python_Pakker\Wheels_Packages\" | ForEach-Object {
        $whl_filename = $PSItem.Name
        & "C:\Program Files\Python38\python" -m pip install "$PSScriptRoot\Python_Pakker\Wheels_Packages\$whl_filename"
    }

}