# Mount-WindowsImage -Optimize

According to Microsoft Docs, when you [**`Mount-WindowsImage`**](https://docs.microsoft.com/en-us/powershell/module/dism/mount-windowsimage?view=win10-ps), you can add the **`Optimize`** parameter

> The Optimize parameter reduces the amount of time it takes to initially mount the image. However, processes that are ordinarily performed during a mount will instead be completed the first time that you access a directory. As a result, there may be an increase in the time that is required to access a directory for the first time after mounting an image using the Optimize parameter.

## The Test

I can test this in PowerShell using the following script to see how much longer it takes to Mount a Windows Image without using the Optimize parameter

{% embed url="https://gist.github.com/OSDeploy/56daf11ee1ffb95a43c51380346ba24d" %}

## The Results

I initially ran the script after a clean boot.  After the first test, I swapped the processing order and rebooted to run the script a second time.

| Win10 1809 x64 | Win10 1809 x64 Optimize |
| :--- | :--- |
| 54.881 seconds | 64.306 seconds |
| 48.171 seconds | 78.166 seconds |

As you can see the results were quite the opposite of what I expected according to the Microsoft Docs.

## Recommendation

I cannot recommend using the Optimize parameter when mounting a Windows Image, add this to the fact that in Windows 10 1809 you [cannot remove Appx Provisioned Packages offline when using Optimize](windows-10-1809-appx-issues.md)

## Reference

{% embed url="https://docs.microsoft.com/en-us/powershell/module/dism/mount-windowsimage?view=win10-ps" %}

