Write-Host -ForegroundColor Green "Starting OSDCloud..."
start-sleep -Seconds 3

Write-Host -ForegroundColor Green "Updating OSD Powershell Module"
Install-Module OSD -Force

Write-Host -ForegroundColor Green "Importing OSD Powershell Module"
Import-Module OSD -Force

Write-Host -ForegroundColor Green "Start OSD Cloud"
Start-OSDCloud -OSLanguage nl-nl -OSName 'Windows 11 23H2 x64' -OSLicense Retail -OSEdition Pro

Write-Host -ForegroundColor Green "Restarting ..."
start-sleep -Seconds 5
wpeutil reboot
