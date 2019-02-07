---
description: OSBuilder 19.1.31 SASMUG or newer
---

# OSBuild Registry

{% hint style="danger" %}
**OSBuilder 19.2.5 has moved Registry to OSBuilder\Templates\Registry  
This guide will be updated soon**
{% endhint %}

There are always changes that need to be made to the Registry of a Custom Image.  The way to do this in Offline Servicing is to either use a [custom Driver \(can't do Default User\) like I have detailed for WinPE](../../instructions/detailed/pebuild/drivers/regadd-activepowerscheme.md), or to use a [PowerShell Script](../../../../osconfig/docs/customization/scripts.md).

To make things eaiser, **OSBuild Registry** is being introduced.  In a new OSBuilder installation, a Registry directory is created in the OSBuilder Content directory

![](../../../../.gitbook/assets/2019-01-29_22-17-35.png)

## Registry Filters

As Operating Systems are added to OSMedia, a directory in Registry called AutoApply will be created automatically.  Inside AutoApply are Filters

If an OSBuild uses an OSMedia that matches an AutoApply Filter, the contents of the AutoApply Filter will be automatically processed.  The screenshots below show the AutoApply Filter for each existing OSMedia

![](../../../../.gitbook/assets/2019-01-30_21-46-16.png)

![](../../../../.gitbook/assets/2019-01-30_21-46-16b.png)

## File Types

You can use REG or XML \(GPP\) files with OSBuild Registry.  Details on how to use them are in the following two links

{% page-ref page="osbuild-registry-reg/" %}

{% page-ref page="osbuild-registry-xml.md" %}

