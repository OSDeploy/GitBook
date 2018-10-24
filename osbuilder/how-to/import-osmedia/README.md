---
description: Updated 18.10.23
---

# Import-OSMedia

After installing OSBuilder, the next step is to import an Operating System. In this example I have two mounted ISO's, Windows 10 1709 x64 and Windows 10 1803 x64.

![](../../../.gitbook/assets/2018-07-10_14-04-39.png)

## Import-OSMedia

Import-OSMedia can be run without any parameters.  Once executed it will will search all attached Drives for install.wims. A multi-boot OS will not work for now since Import-OSMedia is looking specifically for "sources\install.wim". Be patient and let the scan finish.

Once the scanning is complete, a Grid will be displayed with all the available Operating Systems. Multi-select the ones you want to import and press OK. I have tested the import on 8 ISO's at the same time.

![](../../../.gitbook/assets/2018-09-14_0-00-12.png)

## Import-OSMedia -UpdateOSMedia

Optionally, you can add the **UpdateOSMedia** parameter to automatically patch the Imported Operating System using [Import-OSMedia](./).  This option will automatically download any required Updates.  You will need an Internet connection and keep in mind the Cumulative Updates are quite large, so don't do this with a Metered Connection.

## Import Phase

The following steps will occur in this phase

* Install.wim will be mounted directly from the attached Media
* UBR will be determined
* Name and UBR will be gathered so a named directory can be created in C:\OSBuilder\OSMedia
* Operating System files will be copied to the new directory
* Information concerning the mounted Operating System will be collected
* The selected Install.wim Index that was selected will be exported to the Imported Media directory
* All PE's will be exported to a WinPE subdirectory \(boot.wim, setup.wim, winpe.wim, winre.wim\)
* Install.wim will be dismounted
* Configuration information will be collected on the WIMs

**Right click and open the following image in a new tab for a better look at the output**

![](../../../.gitbook/assets/import-osmedia-importing.png)

## Reporting Phase

In this phase, all the configuration about the imported Operating System will be displayed. All of this is saved in the OSMedia logs as well as the PowerShell transcript.

**Right click and open the following image in a new tab for a better look at the output**

![](../../../.gitbook/assets/import-osmedia-reporting.png)

## Complete

The process of importing an Operating System into OSMedia took about 1 minute of actual work, with 6 minutes of processing. In the end, the Operating System is fully copied into OSMedia and ready to update.

Repeat this process for all your Operating Systems and run Get-OSBuilder. The imported Operating Systems will show up in OSMedia

![](../../../.gitbook/assets/2018-07-19_23-43-19.png)

