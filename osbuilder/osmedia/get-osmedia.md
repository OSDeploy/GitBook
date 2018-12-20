---
description: Updated 18.12.19 (Unreleased OSBuilder Christmas Edition)
---

# Get-OSMedia

Get-OSMedia will return all OSMedia as a PowerShell Custom Object with detailed information about the OSMedia

![](../../.gitbook/assets/2018-12-19_0-37-59.png)

## Get-OSMedia -Verbose

Even more detail can be viewed when using the -Verbose parameter

![](../../.gitbook/assets/2018-12-19_0-40-09.png)

## Get-OSMedia \| Out-GridView

Displays all OSMedia in a simple Grid

![](../../.gitbook/assets/2018-12-19_0-43-00.png)

## Get-OSMedia \| Out-GridView -PassThru \| Show-OSInfo

You can use Get-OSMedia to [**`Show-OSInfo`**](../docs/how-to/show-osinfo.md)**\`\`**

Or accomplish the same thing using this command line

```text
Get-OSMedia | ? {$.Arch -eq 'x64' -and $.ReleaseId -eq '1809'} | Show-OSInfo
```

![](../../.gitbook/assets/2018-12-19_0-45-16.png)



## 







