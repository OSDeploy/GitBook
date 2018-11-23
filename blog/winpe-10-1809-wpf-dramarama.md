# WinPE 10 1809 WPF Dramarama

....



## Workaround: Replace UIAutomationCore.dll

One solution is to replace UIAutomationCore.dll with the one from WinPE 10 1803.  While this workaround does get the ball moving, I cannot recommend making this change as there is no way to know what using an older version will break.

So let's see how this came about.  [I think Nathan Ziehnert gets credit for finding the issue first.  He then detailed the error message on his blog.](https://z-nerd.com/blog/2018/10/08-fix-wpf-in-1809-winpe/)

![https://z-nerd.com/blog/2018/10/08-fix-wpf-in-1809-winpe/](../.gitbook/assets/2018-11-23_13-00-09.png)

Mohammed Feroze Khan came up with the workaround on Twitter

{% embed url="https://twitter.com/ferozekhan267oa/status/1049168421198483456" %}

And the rest is history.

## System.DllNotFoundException

A closer look at Nathan's error shows that there was a DLL not found.

> **System.DllNotFoundException**: Unable to load DLL ‘UIAutomationCore.dll’: The specified module could not be found. \(Exception from HRESULT: 0x8007007E\)

A quick read would suggest that this is a problem with UIAutomationCore.dll ... but this is not entirely accurate.  UIAutomationCore.dll threw the exception because it could not find a required DLL

## WinPE Process Monitor



