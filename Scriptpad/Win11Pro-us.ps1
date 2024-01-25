Write-Host -ForegroundColor Green "Starting OSDCloud ..."
start-sleep -Seconds 3

Write-Host -ForegroundColor Green "Importing OSD Powershell Module"
Import-Module OSD -Force

Write-Host -ForegroundColor Green "Start OSD Cloud"
Start-OSDCloud -OSLanguage en-us -OSName 'Windows 11 23H2 x64' -OSLicense Retail -OSEdition Pro

#================================================
#   WinPE PostOS Sample
#   AutopilotOOBE Offline Staging
#================================================
Install-Module AutopilotOOBE -Force
Import-Module AutopilotOOBE -Force

$Params = @{
    Title = 'OSDeploy Autopilot Registration'
    GroupTag = 'Enterprise'
    GroupTagOptions = 'Development','Enterprise'
    Hidden = 'AddToGroup','AssignedComputerName','AssignedUser','PostAction'
    Assign = $true
    Run = 'NetworkingWireless'
    Docs = 'https://autopilotoobe.osdeploy.com/'
}
AutopilotOOBE @Params


Write-Host -ForegroundColor Green "Restarting ..."
start-sleep -Seconds 5
wpeutil reboot
