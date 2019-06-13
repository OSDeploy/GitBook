# Basic Parameters

There are several parameters you can use to configure an OSBuild.  The goal of this process is to create a Parameter Task

## New-OSBuildTask

Again, we are going to use **`New-OSBuildTask`**, but this time, selecting some Parameters.  Leave off the **`CustomName`** and **`SaveAs`**

![](../../../../.gitbook/assets/image%20%28232%29.png)

This gives quite a lengthy PowerShell command line

```text
New-OSBuildTask -TaskName "Win10 x64 1809 DEV" -DisableFeature -EnableFeature -EnableNetFX3 -RemoveAppx -RemoveCapability -RemovePackage -WinPEAutoExtraFiles
```

## Switch Parameters

### EnableNetFX3

This parameter will enable **DotNet Framework 3.5** in your **OSBuild**.  This is probably the most common setting that gets configured

### WinPEAutoExtraFiles

This will automatically copy several Windows executables from your **Install.wim** into **WinPE**.  These files were already copied from your **Install.wim** when you executed **`Import-OSMedia`**

![](../../../../.gitbook/assets/image%20%28142%29.png)

Since the same TaskName is being used, we will be editing the Task.  A warning will be displayed that the content will be updated.  The values for **DotNet 3.5** and **WinPEAutoExtraFiles** are set to True

![](../../../../.gitbook/assets/image%20%2827%29.png)

## String Parameters

### RemoveAppx

This parameter will allow you to select **Appx Provisioned Packages** that you want removed from your **OSBuild**

![](../../../../.gitbook/assets/image%20%28196%29.png)

### RemoveCapability

You can remove a **Windows Capability** from your **OSBuild**.  Again, I typically cancel in this step

![](../../../../.gitbook/assets/image%20%28177%29.png)

### RemovePackage

You can select multiple **Windows Packages** to remove in the **OSBuild**.  For this, I typically just press Cancel

![](../../../../.gitbook/assets/image%20%28239%29.png)

### DisableFeature

**Windows Optional Features** can be disabled.  This again is something I typically leave alone and press cancel

![](../../../../.gitbook/assets/image%20%28277%29.png)

### EnableFeature

You can use this parameter to Enable Windows Optional Features.  In this case, I am going to enable Hyper-V

![](../../../../.gitbook/assets/image%20%28309%29.png)

## Console Output

The settings are displayed in the Console output and a Task Summary will list all the properties of the Task



![](../../../../.gitbook/assets/image%20%2887%29.png)

## Task JSON

This is how these settings appear in the Task

```text
"EnableNetFX3":  "True",
"WinPEAutoExtraFiles":  "True",
"RemoveAppxProvisionedPackage":  [
"Microsoft.Messaging_2018.727.1430.0_neutral_~_8wekyb3d8bbwe",
"Microsoft.MicrosoftOfficeHub_2017.1219.520.0_neutral_~_8wekyb3d8bbwe",
"Microsoft.MicrosoftSolitaireCollection_4.1.5252.0_neutral_~_8wekyb3d8bbwe",
"Microsoft.OneConnect_5.1807.1991.0_neutral_~_8wekyb3d8bbwe",
"Microsoft.People_2018.516.2011.0_neutral_~_8wekyb3d8bbwe",
"Microsoft.SkypeApp_14.26.95.0_neutral_~_kzf8qxf38zg5c"
],
"RemoveWindowsCapability":  null,
"RemoveWindowsPackage":  null,
"DisableWindowsOptionalFeature":  null,
"EnableWindowsOptionalFeature":  [
"Microsoft-Hyper-V",
"Microsoft-Hyper-V-All",
"Microsoft-Hyper-V-Hypervisor",
"Microsoft-Hyper-V-Management-Clients",
"Microsoft-Hyper-V-Management-PowerShell",
"Microsoft-Hyper-V-Services",
"Microsoft-Hyper-V-Tools-All"
],
```

## RemoveAppx \(Task Edit\)

Use the following Command Line to remove additional Appx Provisioned Packages

```text
New-OSBuildTask -TaskName "Win10 x64 1809 DEV" -RemoveAppx
```

When prompted to select Appx Provisioned Packages, you will see the previously removed items.  Additionally, they will not appear in the GridView selection

![](../../../../.gitbook/assets/image%20%28346%29.png)

It is obviously which are the new selections in the Console output

![](../../../../.gitbook/assets/image%20%28273%29.png)

I'll run the command one additional time to show the difference in the Console output and the GridView selection

![](../../../../.gitbook/assets/image%20%28152%29.png)

