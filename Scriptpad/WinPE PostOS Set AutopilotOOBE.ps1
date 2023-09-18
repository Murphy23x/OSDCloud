#================================================
#   WinPE PostOS Sample
#   AutopilotOOBE Offline Staging
#================================================
Install-Module AutopilotOOBE -Force
Import-Module AutopilotOOBE -Force

$Params = @{
    Title = 'Technica ICT - Customer Autopilot Registration'
    Hidden = 'GroupTag','GroupTagOptions','AddToGroup','AssignedComputerName','AssignedUser','PostAction'
    Assign = $true
    Run = 'NetworkingWireless'
}
AutopilotOOBE @Params
