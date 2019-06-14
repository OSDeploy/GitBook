---
description: OSDUpdate 19.6.14+
---

# OSDUpdate MDT Integration

## Office 2016 MDT Application

In this example I'll take an Office 2016 MDT Application and remove all existing MSPs \(except any custom install ones\) from the Updates directory

![](../../../.gitbook/assets/image%20%28262%29.png)

## New MDT Application: OSDUpdate Package Office 2016 64-Bit

Create a new Application with source files

![](../../../.gitbook/assets/image%20%28138%29.png)

Select the OSDUpdate directory that contains the updates

![](../../../.gitbook/assets/image%20%2886%29.png)

A proper command line is needed

```text
PowerShell.exe -ExecutionPolicy Bypass -File ".\OSDUpdate-Office.ps1"
```

![](../../../.gitbook/assets/image%20%28160%29.png)

## New Application Bundle: Office 2016 + OSDUpdate

Create a new Application Bundle with Microsoft Office 2016 and OSDUpdate.  This will allow both the Office installation and OSDUpdate to run together

![](../../../.gitbook/assets/image%20%28336%29.png)

## New MDT Application: OSDUpdate Package Windows 10 x64 1903

{% hint style="info" %}
**The Install Script is coded specifically for Windows 10.  Other OS's will be added soon enough**
{% endhint %}

This process is similar to creating an Office Package, except the Install PS1 has a different name

```text
PowerShell.exe -ExecutionPolicy Bypass -File ".\OSDUpdate-Windows.ps1"
```

![](../../../.gitbook/assets/image%20%28141%29.png)

You should add this to your Task Sequence as a Mandatory Application, and make sure to 'Hide this application in the Deployment Wizard'

![](../../../.gitbook/assets/image%20%28137%29.png)

## Using PowerShell

You can absolutely use PowerShell to do most of the work in creating the new Applications.  Use the script below as an example on how its done

{% embed url="https://gist.github.com/OSDeploy/e51ad0a0198c1ca2df0a98d044f418c3" %}



