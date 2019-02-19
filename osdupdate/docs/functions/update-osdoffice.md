# Update-OSDoffice

## Function

```text
<#
.SYNOPSIS
Downloads Microsoft Office Updates for the installation Updates directory

.DESCRIPTION
Downloads Microsoft Office Updates for the installation Updates directory
Requires BITS for downloading the updates
Requires Internet access for downloading the updates

.LINK
https://www.osdeploy.com/osdupdate/docs/functions/update-osdoffice

.PARAMETER OfficeVersion
The version of Microsoft Office

.PARAMETER Selection
The types of Updates to download

.PARAMETER DownloadPath
This is the path to download the updates initially.  This should be a repository

.PARAMETER OfficeUpdatesPath
This is the Updates directory in your Office 2016 installation source.  MSP files will be extracted from the DownloadPath

.EXAMPLE
Update-OSDoffice -OfficeVersion "Office 2016 64-Bit" -Selection Default -DownloadPath "C:\Software\Office Updates" -OfficeUpdatesPath "C:\Software\Office 2016 64-Bit\updates"
Selects updates for Office 2016 64-Bit
Downloads the Update CABs to "C:\Software\Office Updates"
Extracts the MSP files to "C:\Software\Office 2016 64-Bit\updates"
#>
```

