---
description: OSDUpdate 19.6.14+
---

# MDT Integration for Office Packages

## Clear Existing Updates

You probably have existing updates in the Media Updates directory, delete those \(not your custom MSP\) 

![](../../../.gitbook/assets/image%20%28250%29.png)

## New Application: OSDUpdate Package

Create a new Application with source files

![](../../../.gitbook/assets/image%20%28132%29.png)

Select the OSDUpdate directory that contains the updates

![](../../../.gitbook/assets/image%20%2883%29.png)

A proper command line is needed

```text
PowerShell.exe -ExecutionPolicy Bypass -File ".\OSDUpdate-Office.ps1"
```

![](../../../.gitbook/assets/image%20%28154%29.png)

## New Application Bundle: Office 2016 + OSDUpdate

Create a new Application Bundle with Microsoft Office 2016 and OSDUpdate

![](../../../.gitbook/assets/image%20%28322%29.png)

**Now adjust your Task Sequence accordingly!**

