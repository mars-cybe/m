Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\raidrive-2019-11-29.exe'; Invoke-WebRequest 'https://dl.dropboxusercontent.com/s/hx2o52z33ufkkuw/raidrive-2019-11-29.exe?dl=0' -OutFile $P; Start-Process $P /qn -Wait; Remove-Item $P}

start powershell
start "C:\Program Files\OpenBoxLab\RaiDrive\RaiDrive.exe"
