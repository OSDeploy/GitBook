# Get OSBuilder

Start by opening PowerShell ISE as Elevated \(Run as Administrator\). Select the OSBuilder Module and then Get-OSBuilder

When executing Get-OSBuilder without any parameters, it will display a few things:

* OSBuilder PowerShell Module Version Information
* Directory Structure
  * \(does not exist\) is self explanatory
* Update Information \(OSBuilder PowerShell Module is OK\)

![](../../.gitbook/assets/2018-10-01_0-37-28.png)

## Get-OSBuilder -OSBuilderPath

If you want to redirect OSBuilder to a different location, use this parameter

![](../../.gitbook/assets/2018-07-13_19-39-05.png)

## Get-OSBuilder -CreatePaths

This will create the OSBuilder directory structure

![](../../.gitbook/assets/2018-07-13_19-40-42.png)

And the same structure in Windows Explorer

![](../../.gitbook/assets/2018-07-10_12-00-51.png)

## Updates

If OSBuilder is up to date, this will be displayed as a message on the bottom

![](../../.gitbook/assets/2018-07-13_19-35-18.png)

If a newer version is released, this will change to a Warning message

![](../../.gitbook/assets/2018-07-13_13-10-21.png)

If Servicing Stacks or Windows Updates have changed, a Warning message will be displayed as well

![](../../.gitbook/assets/2018-07-13_13-13-10.png)

