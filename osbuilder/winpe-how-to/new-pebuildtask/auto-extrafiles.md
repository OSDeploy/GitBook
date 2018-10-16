# Auto ExtraFiles

Auto ExtraFiles are files that are copied from a Windows Install.wim during an OSMedia or an OSBuild Task and copied to WinPE\AutoExtraFiles.  The purpose is to inject these files into WinPE when executing a PEBuild Task.

The following files are collected \(contact me if I need to add things\)

* AeroLite Styles
* Cacls
* Choice
* Comp
* Defrag
* Djoin
* ForFiles
* GetMac
* MakeCab
* MSInfo32
* OSK \(On Screen Keyboard\)
* Shutdown
* SystemInfo
* TSKill
* WinVer

![](../../../.gitbook/assets/2018-10-15_0-29-42.png)

##  New-PEBuildTask

When creating a PEBuild, you have the option to copy the Auto ExtraFiles to WinPE using the -AutoExtraFiles parameter

![](../../../.gitbook/assets/2018-10-15_0-34-35.png)

## WinPE Examples

When adding Auto ExtraFiles to a PEBuild, you will be able to execute the commands in a completed PEBuild.  


![GetMAC](../../../.gitbook/assets/2018-10-16_1-31-51.png)

![MSInfo32](../../../.gitbook/assets/2018-10-15_0-31-08.png)

![OSK \(On Screen Keyboard\)](../../../.gitbook/assets/2018-10-15_0-31-38.png)

![Shutdown](../../../.gitbook/assets/2018-10-16_1-30-09.png)

![Systeminfo](../../../.gitbook/assets/2018-10-16_1-30-35.png)

![TSKill](../../../.gitbook/assets/2018-10-16_1-31-07.png)

![WinVer](../../../.gitbook/assets/2018-10-16_1-31-28.png)

