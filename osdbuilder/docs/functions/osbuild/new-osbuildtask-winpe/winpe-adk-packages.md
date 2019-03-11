# WinPE ADK Packages

{% hint style="danger" %}
I do not recommend adding any ADK Packages to WinRE unless you account for the increased size in your BIOS System Partition or UEFI Recovery Partition.  Your default Task Sequence should create a 500MB Partition, but this is not enough as it needs a fair amount of free space.

I recommend changing your Partition sizes to 984MB for BIOS System and UEFI Recovery

You have been warned!
{% endhint %}

Its time to have some fun.  Gather your ADK OC's \(Optional Components\) and Language \(just the one you need\) from these directories

```text
C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs
C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\WinPE_OCs
```

And add them to OSDBuilder in your corresponding directory in **OSDBuilder\Content\WinPE\ADK\\***

![](../../../../../.gitbook/assets/2018-08-02_1-53-53.png)

### New-OSBuildTask

Once the files are in place, when you create a new OSBuild Task, you will be promped for each WinPE \(Setup, WinPE, WinRE\) to select the Packages to inject

![](../../../../../.gitbook/assets/2018-08-02_1-52-20.png)

### Invoke-OSDBuilder

During execution of your Task, the selected ADK Packages will be installed.  You can select different ADK Packages for each WinPE WIM.

![](../../../../../.gitbook/assets/2018-08-02_2-02-27.png)

### PowerShell in Windows Setup

Because why not?

![](../../../../../.gitbook/assets/2018-08-02_2-10-32.png)

