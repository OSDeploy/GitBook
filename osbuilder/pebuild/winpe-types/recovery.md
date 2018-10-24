---
description: Updated 2018.10.23
---

# Recovery

Windows 10 allows you to create a simple Recovery Drive to USB without much effort.  This uses WinRE, but you can't easily add Drivers and other content using this method

![](../../../.gitbook/assets/2018-10-16_15-11-58.png)

## New-PEBuildTask

You need to start by creating a **New-PEBuildTask**.  WinRE.wim will be automatically used for this Task.  To create Recovery Media, use the following PowerShell command:

```text
New-PEBuildTask -TaskName "Win10 x64 1809" -AutoExtraFiles -ScratchSpace 256
```

When complete, a Task JSON file will be created which can be used with Invoke-PEBuild

## Task JSON

```text
{
    "TaskName":  "Recovery Win10 x64 1809",
    "TaskVersion":  "18.10.15.0",
    "TaskType":  "PEBuild",
    "AutoExtraFiles":  "True",
    "DeploymentShare":  "",
    "MediaName":  "Win10 Ent x64 1809 17763.1",
    "PEOutput":  "Recovery",
    "ScratchSpace":  "256",
    "SourceWim":  "WinRE",
    "WinPEAddADK":  null,
    "WinPEAddDaRT":  "",
    "WinPEAddWindowsDriver":  null,
    "WinPEInvokeScript":  null,
    "WinPERobocopyExtraFiles":  null
}
```

## Demo

![](../../../.gitbook/assets/2018-10-16_2-20-02.png)

![](../../../.gitbook/assets/2018-10-16_2-20-30.png)

![](../../../.gitbook/assets/2018-10-16_2-21-10.png)





