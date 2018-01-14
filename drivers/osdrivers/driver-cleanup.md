# Driver Cleanup

Dell doesn't do a good job of only giving us Windows 10 x64 Drivers.  This Touchpad Driver has almost 900MB in Drivers, but we only need 88MB for Windows 10 x64.

![](/assets/2017-11-17_13-33-45.png)

We can remove these by searching for these directories in our x64 Repository

```
Vista-x86
W2K8R2-x86
Windows10-x86
Windows7-x86
Windows8-x86
Windows8.1-x86
Windows8_1-x86
Windows9-x86
XP-x86
x86
```

Or use the Remove-OSDriversDell PowerShell Command to do this for us automatically.  It cleared about 700MB of space or about 1%.  Not quite the savings we had in mind, but its a start.

![](/assets/2017-11-17_13-47-57.png)

