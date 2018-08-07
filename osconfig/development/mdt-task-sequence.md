# MDT Task Sequence

Now create a new MDT Task Sequence (take the defaults).  Leave the Administrator password blank

![](../../.gitbook/assets/2018-08-07_0-11-44.png)

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

![](../../.gitbook/assets/2018-08-07_0-13-21.png)

Apply and OK the Task Sequence to save the changes

## Edit Share and NTFS Permissions

Make sure you have Full Control in your Share Permissions

![](../../.gitbook/assets/2018-08-07_0-22-54.png)

And NTFS Full control as well. You will be copying files back and forth, so this will save some time

![](../../.gitbook/assets/2018-08-07_0-24-49.png)

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

## Add OSConfig.ps1

Download OSConfig.ps1 file at the following link

[https://raw.githubusercontent.com/OSDeploy/OSConfig.Development/master/MDT%20Dev%20Share/OSConfig.ps1](https://raw.githubusercontent.com/OSDeploy/OSConfig.Development/master/MDT%20Dev%20Share/OSConfig.ps1)

Save the file to the following path

```text
<DeploymentShare>\OSDeploy\OSConfig\OSConfig.ps1
```

![](../../.gitbook/assets/2018-08-07_1-43-23.png)

## Complete

That's it. Now its time to test . . .
