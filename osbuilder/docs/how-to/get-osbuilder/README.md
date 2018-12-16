---
description: Updated 18.10.23
---

# Get-OSBuilder

Start by opening PowerShell ISE Elevated \(Run as Administrator\). Select the OSBuilder Module and then **`Get-OSBuilder`**.  Run

When executing **`Get-OSBuilder`** without any parameters, it will display a few things:

* OSBuilder PowerShell Module Version Information
* Directory Structure
* Update Information \(OSBuilder PowerShell Module is OK\)

![](../../../../.gitbook/assets/2018-10-22_23-03-38.png)

## Get-OSBuilder -CreatePaths

This will create the OSBuilder directory structure

![](../../../../.gitbook/assets/2018-10-22_23-05-59.png)

And the same structure in Windows Explorer

![](../../../../.gitbook/assets/2018-10-22_23-07-13.png)

## Get-OSBuilder -HideDetails

This parameter does not output any information and is used by other functions to populate OSBuilder variables

## Additional Information

Latest Updates will be displayed.  This is typically reserved for updated documentation.  OSBuilder Module information will be displayed indicating if there is an update on PowerShell Gallery.  Update Catalogs are checked as well, to make sure you have the latest Cumulative Updates.

If you don't receive any Warnings, then everything is good!

![](../../../../.gitbook/assets/2018-10-22_23-10-39.png)



