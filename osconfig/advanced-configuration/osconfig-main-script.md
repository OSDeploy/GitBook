# OSConfig

Now let's start with our simple OSConfig.ps1 located at %DeploymentShare%\OSDeploy\OSConfig.

---

### OSConfig.ps1

Place this script in your OSConfig directory at %DeploymentShare%\OSDeploy\OSConfig\OSConfig.ps1 \(replacing the one we used in the MDT Quick Start  
This script will perform the following actions:

* Increase the Screen Buffer size of the Console Windows
* Create C:\ProgramData\OSConfigLogs
* Create a PowerShell Transcript at C:\ProgramData\OSConfigLogs
* Log all Environment Variables
* Execute all PowerShell scripts in C:\OSConfig

```
    #======================================================================================
    #	Author: David Segura
    #	Version: 20180601
    #======================================================================================
    #	Increase the Screen Buffer size
    #======================================================================================
    #	This entry allows scrolling of the console windows
    if (!(Test-Path "HKCU:\Console")) {
    	New-Item -Path "HKCU:\Console" -Force | Out-Null
    	New-ItemProperty -Path HKCU:\Console ScreenBufferSize -Value 589889656 -PropertyType DWORD -Force | Out-Null
    }
    #======================================================================================
    #	Create the Log Directory
    #======================================================================================
    if (!(Test-Path "$env:ProgramData\OSConfigLogs")) {New-Item -ItemType Directory -Path $env:ProgramData\OSConfigLogs}
    #======================================================================================
    #	Start the Transcript
    #======================================================================================
    $ScriptName = $MyInvocation.MyCommand.Name
    $LogName = "$ScriptName-$((Get-Date).ToString('yyyy-MM-dd-HHmmss')).log"
    Start-Transcript -Path (Join-Path $env:ProgramData\OSConfigLogs $LogName)
    Write-Host ""
    #======================================================================================
    #	Capture the Environment Variables in the Log
    #======================================================================================
    Get-Childitem -Path Env:* | Sort-Object Name | Format-Table
    #======================================================================================
    #	Execute PowerShell files in OSConfig
    #======================================================================================
    Write-Host ""
    #	Strange bug, even though we specify a Depth of 1, PowerShell in OOBE will not
    #	honor this and will execute all child scripts, no matter the depth
    $OSConfigFiles = Get-ChildItem $PSScriptRoot -Filter *.ps1 -File -Depth 1 -Exclude $ScriptName
    foreach ($file in $OSConfigFiles) {
        Write-Host "Processing $($file.FullName)" -ForegroundColor Cyan
        Start-Process PowerShell.exe -ArgumentList "-file `"$($file.FullName)`"" -Wait
    }
    Write-Host ""
    #======================================================================================
    #	Enable the following lines for testing
    #======================================================================================
    #Start-Process PowerShell_ISE.exe -Wait
    #Read-Host -Prompt "Press Enter to Continue"
    #======================================================================================
    Write-Host ""
    Stop-Transcript
    Return
    #======================================================================================
```


