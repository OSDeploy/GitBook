# WinPE Extra Files

You can now add Extra Files to WinPE.  Simply create a new directory in your OSDBuilder\Content\WinPE\ExtraFiles and add whatever you want in a relative path to the WinPE Root.  This means that if I want CMTrace.exe to go in WinPE under X:\Windows\System32, then my path would be \(change your Drive Letter as needed\):

```text
D:\OSDBuilder\Content\WinPE\ExtraFiles\CMTrace x64\Windows\System32
```

![](../../../../../.gitbook/assets/2018-08-02_3-13-38.png)

### New-OSBuildTask

When creating a new OSBuild Task, you will have the option to select multiple directories to be applied.  You will be prompted for each WinPE.  Once this is complete, simply create your OSBuild using Invoke-OSDBuilder and you are all set.

![](../../../../../.gitbook/assets/2018-08-02_2-37-01.png)

### CMTrace in Windows Setup

Its now a thing . . .

![](../../../../../.gitbook/assets/2018-08-02_3-10-05.png)

