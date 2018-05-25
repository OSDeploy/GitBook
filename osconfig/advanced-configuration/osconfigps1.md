# OSConfig.ps1

This is the current OSConfig.ps1 script that I use.  I'll explain some things.

* **Screen Buffer Size** - Adding this entry to the registry gives us the ability to scroll in any scripts that are executed AFTER making this change
* **Move the Logs** - This is important as OSConfig should be a static copy of our full Content.  In this respect, we may need to replace the scripts, keeping the LOGS in a separate location may help us in troubleshooting.
* **Child Scripts** - It does not make sense to keep adding to a single PowerShell script to make OS changes, so any Child Item that is within one level deep of our OSConfig.ps1 will be executed.  This allows us to completely separate scripts for different functions.

---

    #======================================================================================
    #	OSConfig.ps1
    #	Author: David Segura
    #	Version: 20180525
    #======================================================================================
    #	SYSTEM Profile does not have any default values for Console
    #	Adding this entry allows us to scroll in OOBE
    #======================================================================================
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
    #======================================================================================
    #	Capture the Environment Variables in the Log
    #======================================================================================
    Get-Childitem -Path Env:* | Sort-Object Name | Format-Table
    #======================================================================================
    #	Execute all PowerShell files in the Script $PSScriptRoot
    #	Only files up to one level deep are executed
    #======================================================================================
    Write-Host ""
    $OSConfigFiles = Get-ChildItem $PSScriptRoot -Filter *.ps1 -File -Recurse -Depth 1 -Exclude $ScriptName
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
    Write-Host $ScriptName
    Stop-Transcript
    Return
    #======================================================================================



