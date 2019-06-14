# OSBuild MultiLang

{% hint style="danger" %}
**This guide requires OSDBuilder 19.4.11 or newer**
{% endhint %}

So how do you solve the problem of upgrading Windows 10 in an organization with multiple Windows 10 System UI Languages without making 5 separate images?

The answer is so stupid simple, and takes about 10 minutes of time

![](../../../../.gitbook/assets/image%20%28147%29.png)

## New-OSBuildMultiLang

{% page-ref page="../../functions/osbuild/new-osbuildmultilang.md" %}

This new function has a single parameter, CustomName.  This is what you will name your new OSBuild.  In this example I have used the following command line

```text
New-OSBuildMultiLang -CustomName 'HASMUG1904'
```

When prompted, select an OSBuild.  Only OSBuilds with Language Packs installed will be displayed.  Press OK

![](../../../../.gitbook/assets/image%20%2846%29.png)

If you read the warning, you will understand how this works.  A copy of the OSBuild will be made with the CustomName and MultiLang appended at the end.  The install.wim will be exported to Temp, and then mounted, so this is non-destructive to your original OSBuild

![](../../../../.gitbook/assets/image%20%28280%29.png)

Then each Language Pack will be set to the defaults, and a new Index will be added to the Install.wim

![](../../../../.gitbook/assets/image%20%28231%29.png)

The Base Language by default is already Index 1, in my case, en-US

![](../../../../.gitbook/assets/image%20%28103%29.png)

And finally everything will complete.  The entire process takes about 2 minutes per Language \(not including the Base Language as this is already done\).  In my example with 5 total Languages, it completed in a little over 7 minutes.

![](../../../../.gitbook/assets/image%20%28192%29.png)

## Image Details

The size difference is about 100MB

![](../../../../.gitbook/assets/image%20%2838%29.png)

Get-WindowsImage shows the 5 indexes

![](../../../../.gitbook/assets/image%20%28225%29.png)

## MDT and SCCM ConfigMgr

Yes, each Index does contain the proper Language information, so when you deploy this OS, make sure you select the right Index

![](../../../../.gitbook/assets/image%20%2870%29.png)

