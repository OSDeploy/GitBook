---
description: OSBuilder 19.1.31 San Antonio or newer
---

# OSBuild Registry

There are always changes that need to be made to the Registry of a Custom Image.  The way to do this in Offline Servicing is to either use a [custom Driver \(can't do Default User\) like I have detailed for WinPE](../instructions/detailed/pebuild/drivers/regadd-activepowerscheme.md), or to use a [PowerShell Script](../../../osconfig/docs/customization/scripts.md).

To make things eaiser, **OSBuild Registry** is being introduced.  In a new OSBuilder installation, a Registry directory is created in the OSBuilder Content directory

![](../../../.gitbook/assets/2019-01-29_22-17-35.png)

## Registry Filters

As Operating Systems are added to OSMedia, Registry Filters get created automatically.  I plan on developing a method of selection, but for now, this is how they get applied.

Basically if an OSBuild matches a Registry Filter, the contents of the Registry Filter will be applied automatically

![](../../../.gitbook/assets/2019-01-29_22-21-32.png)

![](../../../.gitbook/assets/2019-01-29_22-24-05.png)

## Registry XML

Instead of using REG files, OSBuild Registry uses Registry XML files.  I'll get into how to create them a little further down, but here is an example of what a Registry XML file for adding Desktop Icons in a User's registry looks like.  As you can see in the XML file, the Registry will make changes in the Current User's Hive.

{% embed url="https://gist.github.com/OSDeploy/fda477aab8b7dd76587de2ad5c9ec36a" %}

This file should be placed inside an appropriate Registry Filter directory.  In this example, I have placed this XML file in the Global Filter with two other Registry XML files for setting the default Internet Explorer Start Page.  Since this exists in Global, it will be applied to every OSBuild that gets created

![](../../../.gitbook/assets/2019-01-29_22-45-21.png)

## New-OSBuild

During a New-OSBuild, the three Registry XML files are processed and added to the mounted Offline Registry automatically

![](../../../.gitbook/assets/2019-01-29_22-40-48.png)

The results should speak for themselves.  I have successfully customized the Default User profile with minimal effort

![](../../../.gitbook/assets/2019-01-29_22-49-01.png)

## Group Policy Preferences

So why XML?  Because you are probably already using Registry XML in Group Policy Preferences.  Read more about GPP Registry in the following link

{% embed url="https://blog.thesysadmins.co.uk/group-policy-preferences-1-deploying-registry-settings.html" %}

If you take a look at a Group Policy Object on your Domain's Sysvol that has an enabled GPP Registry, then you should have a Registry.xml file for Machine Preferences and User Preferences

![](../../../.gitbook/assets/2019-01-30_0-07-40.png)

You can easily just copy the whole GPO into the proper Registry Filter

![](../../../.gitbook/assets/2019-01-30_0-11-00.png)

And watch it rain.  **Keep in mind this will not import the entire Group Policy**, just settings in the Registry.xml files.  Ideally, you should create a separate unlocked GPO and configure all your OSBuild settings in there, and use that GPO for settings to your OSBuild

![](../../../.gitbook/assets/2019-01-30_0-19-45.png)

## Converting REG to XML

There are a few ways to convert a regular REG file to an XML.  I find it easy enough to use an online converter

{% embed url="https://www.runecasters.com.au/reg2gpp" %}

{% embed url="https://public.gfsolone.com/tools/reg2gpo/" %}

But you can also download a PowerShell script to do the work

{% embed url="https://gallery.technet.microsoft.com/scriptcenter/Registry-To-GroupPolicyPref-9feae9a3" %}

## Known Issues

There are a few things to know.  Some Registry Keys are protected by Trusted Installer.  These keys cannot be overwritten.  I have not seen many keys like this, but they do exist

![](../../../.gitbook/assets/2019-01-30_0-25-01.png)

And some Registry Keys should not exist until Windows Setup is complete, like setting Default Associations.  This is easy enough to test by creating a Media ISO and installing on a Virtual Machine

![](../../../.gitbook/assets/2019-01-30_0-30-51.png)

















