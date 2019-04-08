# Parameter Task

There are several parameters you can use to configure an OSBuild.  The goal of this process is to create a Parameter Task

## New-OSBuildTask

Again, we are going to use **`New-OSBuildTask`**, but this time, selecting all Basic Parameters.  Leave off the **`CustomName`**

![](../../../../.gitbook/assets/image%20%28232%29.png)

This gives quite a lengthy PowerShell command line

```text
New-OSBuildTask -TaskName "Reference Image Windows 10 x64 1809 Parameters" -DisableFeature -EnableFeature -EnableNetFX3 -RemoveAppx -RemoveCapability -RemovePackage -WinPEAutoExtraFiles
```

### EnableNetFX3

This parameter will enable **DotNet Framework 3.5** in your **OSBuild**.  This is probably the most common setting that gets configured

### WinPEAutoExtraFiles

This will automatically copy several Windows executables from your **Install.wim** into **WinPE**.  These files were already copied from your **Install.wim** when you executed **`Import-OSMedia`**

![](../../../../.gitbook/assets/image%20%2897%29.png)

### RemoveAppx

This parameter will allow you to select **Appx Provisioned Packages** that you want removed from your **OSBuild**

![](../../../../.gitbook/assets/image%20%28133%29.png)

### RemovePackage

You can select multiple **Windows Packages** to remove in the **OSBuild**.  For this, I typically just press Cancel

![](../../../../.gitbook/assets/image%20%28164%29.png)

### RemoveCapability

You can remove a **Windows Capability** from your **OSBuild**.  Again, I typically cancel in this step

![](../../../../.gitbook/assets/image%20%28120%29.png)

### DisableFeature

**Windows Optional Features** can be disabled.  This again is something I typically leave alone and press cancel

![](../../../../.gitbook/assets/image%20%28189%29.png)

### EnableFeature

You can use this parameter to Enable Windows Optional Features.  In this case, I am going to enable Hyper-V

![](../../../../.gitbook/assets/image%20%28213%29.png)

## Task JSON

I now have a new Task JSON which has all the settings I selected

![](../../../../.gitbook/assets/image%20%28126%29.png)























