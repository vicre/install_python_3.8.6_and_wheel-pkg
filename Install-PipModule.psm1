function Install-PipModule {

    $webclient = New-Object System.Net.WebClient;
    $webclient.Encoding = [System.Text.Encoding]::UTF8;

    Write-Host -ForegroundColor Green "Install Pipmodule"

    if (Test-Path -Path "$PSScriptRoot\Python_Pakker\get-pip.py") {
        Remove-Item -Path "$PSScriptRoot\Python_Pakker\get-pip.py"
        Start-Sleep -Seconds 2
    }


    $webclient.DownloadFile("https://bootstrap.pypa.io/get-pip.py", "$PSScriptRoot\Python_Pakker\get-pip.py")

    & "C:\Program Files\Python38\python" "$PSScriptRoot\Python_Pakker\get-pip.py" --no-warn-script-location

}
