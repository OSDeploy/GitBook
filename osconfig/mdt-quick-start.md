# MDT Quick Start

Running OSConfig is easy to configure in a few steps with MDT.  I recommend starting with MDT for testing, then moving to Configuration Manager.

---

## Edit the Unattend.xml

Start with a New Computer Task Sequence.  Locate your Unattend.xml at _%DeploymentShare%\Control\%TaskSequenceID%\Unattend.xml_

In the Specialize pass, add a RunSynchronousCommand.  In the example below, I am adding the following.  Make sure your Order value is unique and sequential.  Since I have 4 previous entries, I will assign this as Order 5.

```
<RunSynchronousCommand wcm:action="add">
    <Description>OSConfig</Description>
    <Order>5</Order>
    <Path>PowerShell.exe -ExecutionPolicy Bypass -File C:\ProgramData\OSConfig\OSConfig.ps1</Path>
</RunSynchronousCommand>
```

![](/assets/2018-06-01_1-48-41.png)

---

## Edit the Task Sequence

Add the following command in your Task Sequence right before the Restart computer step.  This will copy the contents of the OSConfig directory in your Deployment Share to %ProgramData%.  Make sure your Variable %OSDisk% is assigned properly in your Disk Partitioning

```
cmd /c robocopy "%DeployRoot%\OSDeploy\OSConfig" %OSDisk%\ProgramData\OSConfig *.* /mir /ndl /nfl /r:1 /w:1 /xj /z
```

![](/assets/2018-05-24_23-31-09.png)

---

## Create a Sample OSConfig PowerShell Script

On your Deployment Share, create a new file at %DeploymentShare%\OSDeploy\OSConfig\OSConfig.ps1 and paste the following contents in the file

```
#======================================================================================
$ScriptName = $MyInvocation.MyCommand.Name
$LogName = "$ScriptName-$((Get-Date).ToString('yyyy-MM-dd-HHmmss')).log"
Start-Transcript -Path (Join-Path $PSScriptRoot $LogName)
#======================================================================================
Write-Host "OSConfig"
Write-Host ""
Get-Childitem -Path Env:* | Sort-Object Name
#======================================================================================
Write-Host ""
Write-Host $ScriptName
Read-Host -Prompt "Press Enter to Continue"
Stop-Transcript
Return
#======================================================================================
```

---

## Run the Task Sequence

Now the fun part ... run the Task Sequence

As you can see, this PowerShell Script is running under the System context, so you can pretty much do anything you want.  Since we added a Read-Host command, it will stay at this point until you press Enter.

![](/assets/2018-05-24_23-42-47.png)

---

## Reviewing the Transcript

Since we added Start-Transcript step in our OSConfig.ps1, we can look at this file at C:\ProgramData\OSConfig\OSConfig\*.log.  This captured our Environment Variables which we can use when building scripts.

![](/assets/2018-05-25_9-45-03.png)

---

## PowerShell ISE Support

If you want to have some real fun, add the following to your script

```
Start-Process PowerShell_ISE.exe -Wait
```

Yup, even PowerShell ISE works so you can do some test scripting in a Pre-OS Environment

![](/assets/2018-05-24_23-50-13.png)

---

## What's Missing?

For starters, we do not have WMI running, so keep this in mind when customizing your scripts.  Also since we are under the SYSTEM context, we do not have any default Console settings, so you cannot scroll back on long PowerShell scripts that are executing as the Screen Buffer is at the minimum.

And keep in mind this is running in a Local System context, so we do not have rights to access anything on the Network.  This is why everything should be copied locally before restarting from WinPE.

---

## Why ProgramData?

For one thing, it is stable.  When performing Feature Updates, if our Local Content is in the Windows directory, this will be removed.  C:\ProgramData will not, so this is the best location for your Local Content.

