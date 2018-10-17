# MDT

You can easily use OSBuilder to create an MDT Boot Image.  One major difference in using OSBuilder is that 'Run the Windows Recovery Wizard'

![MDT without DaRT Integration](../../../.gitbook/assets/2018-10-17_2-23-55%20%281%29.png)

![MDT with DaRT Integration](../../../.gitbook/assets/2018-10-17_2-24-05%20%281%29.png)

## New-PEBuildTask

You need to start by creating a PEBuild Task.  WinRE.wim will be automatically used for this Task.  To create WinPE Media, use the following PowerShell command:

```text
New-PEBuildTask -TaskName "Win10 x86 1809" -AutoExtraFiles -ScratchSpace 256 -SourceWim WinRE
```

If you have added MS DaRT to OSBuilder, you will be prompted to add it.  When complete, a Task JSON file will be created which can be used with Invoke-PEBuild

