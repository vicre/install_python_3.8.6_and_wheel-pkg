function Install-Python386 {


    $python38_is_already_installed = (Test-Path "C:\Program Files\Python38")
    if ( $true -eq $python38_is_already_installed ) {
        Write-Host -ForegroundColor Yellow "Python38 is already installed"
        return
    }

    Write-Host -ForegroundColor Green "Intalling python 3.8.6"
    Start-Process -Wait -FilePath "$PSScriptRoot\Dist\python-3.8.6-amd64.exe" -ArgumentList "/quiet","InstallAllUsers=1","Include_pip=0","CompileAll=1","Shortcuts=1","Include_lib=1","PrependPath=1" -PassThru

}