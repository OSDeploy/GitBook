# Update-OneDriveSetup

So today I get a fan request to update OneDriveSetup.exe using OSBuilder

{% embed url="https://twitter.com/hoyty/status/1088148904862932993" %}

## The Script

Download the attached PowerShell script and save it in your OSBuilder\Content\Scripts directory

{% file src="../../../../../../.gitbook/assets/windows-10-x64-update-onedrivesetup.ps1" %}

This is a quick and dirty script to download an update OneDriveSetup.exe and copy it to the Windows 10 x64 default location

![](../../../../../../.gitbook/assets/2019-01-23_23-34-42.png)

I'll make sure to enable the Testing line at the bottom of the script.  This one:

![](../../../../../../.gitbook/assets/2019-01-23_23-45-21.png)

## The Task

Create a new Task and make sure to select the PowerShell Script when prompted

![](../../../../../../.gitbook/assets/2019-01-23_23-43-28.png)

## The Build

The PowerShell Script will wait for me to press Enter

![](../../../../../../.gitbook/assets/2019-01-23_23-31-22.png)

Which gives me time to check the Mount Directory.  Looks good

![](../../../../../../.gitbook/assets/2019-01-23_23-33-29.png)

## The Test

I'll setup a Virtual Machine with no Internet Access to make sure I get proper results and now its time to play some Xbox.  BRB

![](../../../../../../.gitbook/assets/2019-01-23_23-48-25.png)

Ok, back.  Let's see how we did ...

![](../../../../../../.gitbook/assets/2019-01-23_23-51-08.png)

![](../../../../../../.gitbook/assets/2019-01-23_23-51-53.png)

## Conclusion

If there is something that OSBuilder doesn't do, just add a PowerShell script!  For a copy of this script and any of my other "Bonus" scripts, hit up this link

{% embed url="https://github.com/OSDeploy/OSBuilder.Public/tree/master/Content/Scripts" %}



