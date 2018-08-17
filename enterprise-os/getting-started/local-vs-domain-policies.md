# Local vs Domain Policies

Applying a Domain GPO to a Workstation for OS Customizations is not the same as a Domain GPO that is Enforced.  This means that even though you can use a GPO to do the OS Customizations, it is no different than setting a Local Policy.  Anyone with Administrative Rights will be able to open GPEDIT.MSC and make the change

### Enforcing Policies

If you need to Enforce any of these settings, you must join the computer to a Domain and link the GPO to the Computer or User's OU.  This guide will not go into doing this, but if you want to go this route, keep your Enterprise OS GPO's used for customizations separate from your Enforcement.  

### Registry Group Policy Preferences

Registry Group Policy Preferences are applied by editing the Current User, Local Machine, and Users hives.  Additionally, the Default User and Administrator \(if applicable\) hives are mounted and modified.  In this instance, there is nothing preventing these settings from being undone.  Just like Enforcing Policies above, if you need Registry modifications Enforced, they must be set in a Domain GPO.

### Workgroup Policies

I work in a large Enterprise, and what makes my situation a challenge is that there are instances where we deploy systems that are not joined to a Domain.  These are Workgroup Computers.

If all your computers are Domain joined, then you have it easy . . . but if you deploy an OS for Workgroup and Domain, keep your Policies and Preferences for Enterprise OS configured for the Workgroup Computer.  Domain settings can be applied from an Active Directory GPO when the Computer logs into the Domain with a Domain User Account.

What this means is that for Workgroup Computers, set your Internet Homepage to the public Corporate Homepage . . . and let your Intranet Homepage be set for Domain Computers.  If the Workgroup Computer will be disconnected from your Domain, don't mess with applying WSUS settings, leave things pointing to Windows Update.  Don't set CM settings in your Policies, let CM handle this . . . basically if these settings are already being configured by your Domain GPO, there is no need to set these in Enterprise OS.

### Summary

To sum it up, the Group Policies that will be used to configure the Enterprise OS should only be used for configuring the OS, and not for Policy Enforcement, just as your current customizations in your Task Sequence are only for customizations during OS Deployment, and not for any other purpose after the OS has been deployed . . . and keep in mind if you deploy computers in Workgroups or not when configuring your settings.

