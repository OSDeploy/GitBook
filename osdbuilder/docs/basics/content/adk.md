---
description: OSDBuilder 19.4.11+
---

# ADK

{% hint style="info" %}
**OSDBuilder 19.4.11+ uses Content\ADK by default.  Previous versions of OSDBuilder use Content\WinPE\ADK.  You may continue to use the previous location without issues**
{% endhint %}

## Purpose

The purpose of the Content\ADK directory is to contain the Windows 10 Assessment and Deploy.  These files are used for customizing OSBuilds and PEBuilds

## Download

You can download the Windows ADK from Microsoft.  The version of the ADK must match the Windows Build of the OS you are installing on, and must also match the Windows Build of the Windows Image that you are Offline Servicing

{% hint style="warning" %}
**Starting with ADK 1809, you must also download the Windows PE add-on for the ADK**
{% endhint %}

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install" %}

## Install

Install the Windows ADK your appropriate defaults for your environment

{% hint style="warning" %}
**Starting with ADK 1809, you must also install the Windows PE add-on for the ADK**
{% endhint %}

## Copy ADK Content

Copy all directories that were installed with your Windows ADK.  This is typically found in **C:\Program Files \(x86\)\Windows Kits\10\Assessment and Deployment Kit**

![](../../../../.gitbook/assets/image%20%28116%29.png)

Paste the copied Windows ADK in an appropriate directory

![](../../../../.gitbook/assets/image%20%2841%29.png)

There is an existing empty directory called Windows Preinstallation Environment

![](../../../../.gitbook/assets/image%20%28223%29.png)

The purpose of this directory is so you have a reference of the directory structure

![](../../../../.gitbook/assets/image%20%2816%29.png)

## Usage

After adding the Windows ADK in OSDBuilder, you will be able to add PowerShell to WinPE, WinRE, or WinSE by adding these to an OSBuild or PEBuild Task when using the **ContentWinPEADK** parameter

![](../../../../.gitbook/assets/image%20%2848%29.png)

