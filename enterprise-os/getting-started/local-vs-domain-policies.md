# Local vs Domain Policies

Applying a Domain GPO to a Workstation for OS Customizations is not the same as a Domain GPO that is Enforced.  This means that even though you can use a GPO to do the OS Customizations, it is no different than setting a Local Policy.  Anyone with Administrative Rights will be able to open GPEDIT.MSC and make the change

### Enforcing Policies

If you need to Enforce any of these settings, you must join the computer to a Domain and link the GPO to the Computer or User's OU.  This guide will not go into doing this, but if you want to go this route, keep your Enterprise OS GPO's used for customizations separate from your Enforcement.  

### Registry Group Policy Preferences

Registry Group Policy Preferences are applied by editing the Current User, Local Machine, and Users hives.  Additionally, the Default User and Administrator \(if applicable\) hives are mounted and modified.  In this instance, there is nothing preventing these settings from being undone.  Just like Enforcing Policies above, if you need Registry modifications Enforced, they must be set in a Domain GPO.

### Summary

To sum it up, the Group Policies that will be used to configure the Enterprise OS should only be used for configuring this purpose, and not for Policy Enforcement, just as your current customizations in your Task Sequence are only for customizations during OS Deployment, and not for any other purpose after the OS has been deployed.

