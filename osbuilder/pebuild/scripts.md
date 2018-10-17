# Scripts

You can write custom PowerShell Scripts to make further changes to WinPE, simply place your PowerShell Scripts in C:\OSBuilder\Content\WinPE\Scripts

![](../../.gitbook/assets/2018-10-16_22-54-25.png)

## New-PEBuildTask

When creating a New-PEBuildTask, select the Script to add to the Task

![](../../.gitbook/assets/2018-10-16_22-56-39.png)

## Set-TimeZone

Here is a simple PowerShell script to set the TimeZone of WinPE

```text
#======================================================================================
#	Set Time Zone to Central Standard Time
#======================================================================================
Dism /Image:"$MountDirectory" /Set-TimeZone:"Central Standard Time" /LogPath:"$Logs\$((Get-Date).ToString('yyyy-MM-dd-HHmmss'))-Dism-SetTimeZone.log"

#======================================================================================
#	Testing
#======================================================================================
#	[void](Read-Host 'Press Enter to continue')
```

Or you can download it here

{% file src="../../.gitbook/assets/set-timezone-central-standard-time.ps1" caption="TimeZone Central Standard Time" %}

## Invoke-PEBuild

When running Invoke-PEBuild, the script will be executed

![](../../.gitbook/assets/2018-10-16_23-00-15.png)



