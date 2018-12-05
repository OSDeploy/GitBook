---
description: Updated 18.12.4
---

# Update Catalogs

Catalogs provide all the information that OSBuilder needs for applying Microsoft Updates to an Operating System.

## Catalog Information

To know which catalogs OSBuilder needs to download, it pulls a master Content JSON file from GitHub

{% embed url="https://github.com/OSDeploy/OSBuilder.Public/blob/master/Content/Updates/Cat.json" %}

This file is copied to the Updates directory in Content

![](../../.gitbook/assets/2018-12-04_16-59-04.png)

And tells OSBuilder which Update Catalog XML files to download

![](../../.gitbook/assets/2018-12-04_16-57-05%20%281%29.png)

## Catalog XML Files

The Catalog XML files are then copied into an Updates Category subdirectory and is then used by OSBuilder to know which Microsoft Updates to download and apply

![](../../.gitbook/assets/2018-12-04_17-01-43.png)

## WSUS Content

WSUS provides the content for the Catalogs, and I simply use PowerShell to export the information after reviewing it for errors

