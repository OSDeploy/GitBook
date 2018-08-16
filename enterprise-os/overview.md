# Enterprise OS Overview

I am going to shift gears from OSBuilder to detailing how to customize Windows 10 from its default configuration to a fully customized Enterprise OS using Group Policy.  Be patient while I get the documentation up to speed.

### Default Windows 10

We all know what it looks like if you do nothing.  This is simply not an ideal presentation for your Enterprise

![](../.gitbook/assets/2018-08-14_13-44-42.png)

### Group Policy

It's actually much easier to take all your Policies and Preferences and put them in Group Policy instead of having multiple steps and custom scripts in your Task Sequence

![](../.gitbook/assets/2018-08-16_15-05-07.png)

### Local Copy

Once you have all your settings in Group Policy, simply the Policies from SysVol to your OS during deployment, or run in an SCCM Package.

![](../.gitbook/assets/2018-08-16_14-54-05.png)

### LGPO

Use Local GPO to apply these Policies

![](../.gitbook/assets/2018-08-16_15-11-54.png)

### Apply Preferences with PowerShell

Since LGPO only applies Policies and not Preferences, simply add a PowerShell script to read the GPO Preferences and apply the settings \(yes I will publish said script soon\)

![](../.gitbook/assets/2018-08-16_15-15-18.png)

### Enterprise OS

And as soon as Windows starts for the first time, everything is configured exactly how you want it.  Fully customized without multiple steps in the Task Sequence.

![](../.gitbook/assets/2018-08-16_15-17-48.png)

![](../.gitbook/assets/2018-08-16_15-19-06.png)

![](../.gitbook/assets/2018-08-16_15-19-15.png)

![](../.gitbook/assets/2018-08-16_15-22-12.png)



