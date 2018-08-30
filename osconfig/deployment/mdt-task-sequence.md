# MDT New PC Task Sequence

OSConfig can be added to an MDT Task Sequence in a few steps.  Edit your task Sequence and in the Postinstall Phase, add a **Run Command Line** step right before Restart computer called **Copy OSConfig** with the following **Command line**

{% hint style="info" %}
Make sure Task Sequence Variable &lt;OSDisk&gt; is set to your Windows drive
{% endhint %}

```text
cmd /c robocopy "%DeployRoot%\OSDeploy\OSConfig" %OSDisk%\ProgramData\OSConfig *.* /mir /ndl /nfl /r:1 /w:1 /xj /z
```

![Copy OSConfig Step](../../.gitbook/assets/2018-08-07_0-07-31.png)

In the Options tab, add a 1 to the **Success codes** and check **Continue on error**

![](../../.gitbook/assets/2018-08-07_0-09-29.png)

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

## Add OSConfig

Add your OSConfig directory to the following path

```text
<DeploymentShare>\OSDeploy\OSConfig
```

## Complete

That's it!  Now give it a test

