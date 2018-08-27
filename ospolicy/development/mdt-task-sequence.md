# MDT Task Sequence

Now create a new MDT Task Sequence \(take the defaults\). Leave the Administrator password blank

![](../../.gitbook/assets/2018-08-07_19-48-26.png)

## Edit the Task Sequence

In the Postinstall Phase, add a **Run Command Line** step right before Restart computer. Name it Notepad and add the following in the **Command line**

```text
cmd /c notepad.exe
```

![Notepad Step](../../.gitbook/assets/2018-08-06_23-47-23.png)

Add another **Run Command Line** step right after the Notepad step called **Copy OSConfig** with the following **Command line**

```text
cmd /c robocopy "%DeployRoot%\OSDeploy\OSConfig" %OSDisk%\ProgramData\OSConfig *.* /mir /ndl /nfl /r:1 /w:1 /xj /z
```

![Copy OSConfig Step](../../.gitbook/assets/2018-08-07_0-07-31.png)

In the Options tab, add a 1 to the **Success codes** and check **Continue on error**

![](../../.gitbook/assets/2018-08-07_0-09-29.png)

Add another Run Command Line as the first step in the State Restore phase

![](../../.gitbook/assets/2018-08-07_19-10-14.png)

Apply and OK the Task Sequence to save the changes

{% hint style="info" %}
ts.xml can be downloaded from [GitHub](https://github.com/OSDeploy/OSConfig.Development/tree/master/MDT%20Task%20Sequence)
{% endhint %}

## Edit the Task Sequence Unattend.xml

Add a new RunSynchronousCommand entry to your Unattend.xml file at &lt;DeploymentShare&gt;\Control\&lt;TaskSequenceID&gt;\Unattend.xml

```text
<RunSynchronousCommand wcm:action="add">
  <Description>OSConfig</Description>
  <Order>5</Order>
  <Path>PowerShell.exe -ExecutionPolicy Bypass -File %ProgramData%\OSConfig\OSConfig.ps1</Path>
</RunSynchronousCommand>
```

When complete, it should look like this:

![](../../.gitbook/assets/2018-08-07_0-27-35.png)

Save and close it.

{% hint style="info" %}
Unattend.xml can be downloaded from [GitHub](https://github.com/OSDeploy/OSConfig.Development/tree/master/MDT%20Task%20Sequence)
{% endhint %}

## Add OSConfig.ps1

Create the OSConfig.ps1 file with the following content

```text
#======================================================================================
#	Author: David Segura
#	Version: 18.8.7
#	https://www.osdeploy.com/osconfig/development/mdt-task-sequence
#======================================================================================
#	Start OSConfig
Write-Host "Starting OSConfig..." -ForegroundColor Yellow
Write-Host ""
#======================================================================================
#	OSConfig Content
#   Do Stuff Here!!!!!!
#======================================================================================
#	For Testing Only
Start-Process PowerShell_ISE.exe -Wait
Read-Host -Prompt "Press Enter to Continue"
#======================================================================================
```

Save the file to the following path

```text
<DeploymentShare>\OSDeploy\OSConfig\OSConfig.ps1
```

![](../../.gitbook/assets/2018-08-07_1-43-23.png)

{% hint style="info" %}
OSConfig.ps1 can be downloaded from [GitHub](https://github.com/OSDeploy/OSConfig.Development/tree/master/MDT%20Task%20Sequence)
{% endhint %}

## Complete

That's it. Now its time to get this working in a Virtual Machine

