# Getting Started

Adding OSConfig is easy to configure in a few steps

---

## Edit the Unattend.xml

Modify your Unattend.xml for your MDT Task Sequence by adding a RunSynchronousCommand.  In the example below, I am adding the following.  Make sure your Order value is unique.

```
<RunSynchronousCommand wcm:action="add">
    <Description>OS Config</Description>
    <Order>5</Order>
    <Path>PowerShell.exe -ExecutionPolicy Bypass -File %ProgramData%\OSConfig\OSConfig.ps1</Path>
</RunSynchronousCommand>
```

![](/assets/2018-05-24_23-22-43.png)

---

## Edit the Task Sequence

Add the following command in your Task Sequence right before the Restart computer step.  This will copy the contents of the OSConfig directory in your Deployment Share to %ProgramData%

```
cmd /c robocopy "%DeployRoot%\OSDeploy\OSConfig" %OSDisk%\ProgramData\OSConfig *.* /mir /ndl /nfl /r:1 /w:1 /xj /z
```

![](/assets/2018-05-24_23-31-09.png)

---

## Create the Sample OSConfig PowerShell Script

In your Deployment Share, create the following location

```
%DeployRoot%\OSDeploy\OSConfig
```

Now create a file called OSConfig.ps1 and paste the following contents in the file

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

## Deploy the Task Sequence

Now the fun part.  Deploy the Task Sequence

As you can see, this PowerShell Script is running under the System context, so you can pretty much do anything you want.  Since we added a Read=Host command, press Enter to continue.

![](/assets/2018-05-24_23-42-47.png)

---

## Reviewing the Transcript

Since we added Start-Transcript step in our OSConfig.ps1, we can look at this file at C:\ProgramData\OSConfig\OSConfig\*.log.  This captured our Environment Variables which we can use when building scripts.



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



