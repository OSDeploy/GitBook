# MDT

You can easily use OSBuilder to create an MDT Boot Image.  One major difference in using OSBuilder is that '**Run the Windows Recovery Wizard**' is now present since OSBuilder uses the OS Boot Images.  WinPE.wim in the ADK does not contain any Recovery Environment components \(which explains why it is so small\)

![MDT without DaRT Integration](../../../.gitbook/assets/2018-10-17_2-23-55%20%281%29.png)

![MDT with DaRT Integration](../../../.gitbook/assets/2018-10-17_2-24-05%20%281%29.png)

## New-PEBuildTask

You need to start by creating a PEBuild Task.  WinRE.wim will be automatically used for this Task.  To create MDT Media, use either of the following PowerShell command:

```text
New-PEBuildTask -DeploymentShare 'D:\Deploy' -SourceWim WinPE -TaskName "Win10 x64 1809" -AutoExtraFiles -ScratchSpace 256
New-PEBuildTask -DeploymentShare 'D:\Deploy' -SourceWim WinRE -TaskName "Win10 x64 1809" -AutoExtraFiles -ScratchSpace 256
```

If you have added MS DaRT to OSBuilder, you will be prompted to add it.  When complete, a Task JSON file will be created which can be used with Invoke-PEBuild

The MDT Prefix will be added automatically to the Task Name, so unless you want '**MDT MDT Win10 x64 1809**' as your Task Name, just leave it out.

## Deployment Share

The DeploymentShare Parameter is what tells OSBuilder to make this an MDT Boot Image.  In my example above, I used MDT USB Media as my DeploymentShare.  You can easily specify a Local Path or a Network Share.

## ADK Packages

At a minimum, MDT requires the following ADK Packages

```text
winpe-fmapi
winpe-hta
winpe-scripting
winpe-securestartup
winpe-wmi
```

If you use WinRE as your SourceWim, there is no need to add these packages as they are already included in WinRE.  You can optionally add things like MDAC, NetFX, and PowerShell to make things cooler.

## Task JSON

```text
{
    "TaskName":  "MDT Win10 x64 1809",
    "TaskVersion":  "18.10.15.0",
    "TaskType":  "PEBuild",
    "AutoExtraFiles":  "True",
    "DeploymentShare":  "D:\Deploy",
    "MediaName":  "Win10 Ent x64 1809 17763.1",
    "PEOutput":  "MDT",
    "ScratchSpace":  "256",
    "SourceWim":  "WinRE",
    "WinPEAddADK":  [
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-DismCmdlets.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-Dot3Svc.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-GamingPeripherals.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-MDAC.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-NetFx.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-PlatformId.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-PowerShell.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-PPPoE.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-RNDIS.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-SecureBootCmdlets.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\WinPE-WinReCfg.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\lp.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-DismCmdlets_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-Dot3Svc_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-EnhancedStorage_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-MDAC_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-NetFx_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-PowerShell_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-PPPoE_en-us.cab",
                        "WinPE\\ADK\\Win10 x64 1809\\en-us\\WinPE-RNDIS_en-us.cab"
                    ],
    "WinPEAddDaRT":  "WinPE\\DaRT\\DaRT 10\\Toolsx64.cab",
    "WinPEAddWindowsDriver":  null,
    "WinPEInvokeScript":  null,
    "WinPERobocopyExtraFiles":  null
}
```



