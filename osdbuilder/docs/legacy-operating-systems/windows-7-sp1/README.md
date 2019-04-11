# Windows 7 SP1

{% hint style="info" %}
**KB4490628 SHA-2 Code Signing Support is included in the latest updates**
{% endhint %}

**OSDBuilder \(19.3.12\)** supports updating **Windows 7 SP1 \(version 6.1.7601.17514 or newer\)**.  Creating an **OSBuild** \(Customized\) is not supported

{% hint style="danger" %}
**There are no long term plans to continue to support Windows 7 SP1 in OSDBuilder**
{% endhint %}

**OSDBuilder** has only been tested with importing and updating Windows 7 Enterprise with SP1 \(February 15, 2011\).  If you do not use this version, expect inconsistent results.  The ISO can be downloaded from [**MVLS \(Microsoft Volume Licensing Service Center\)**](https://www.microsoft.com/Licensing/servicecenter/Home.aspx)\*\*\*\*

![](../../../../.gitbook/assets/image%20%28197%29.png)

## Import-OSMedia

Import the ISO using **`Import-OSMedia`**.  Do not use the **`UpdateOSMedia`** parameter, it is blocked for Legacy Operating Systems

{% page-ref page="../../functions/osmedia/import-osmedia.md" %}

## Get-OSDBuilderDownloads

Use the following command to select and download the updates.  Be aware of Optional Updates and whether they are necessary.  It is recommended that you download everything

```text
Get-OSDBuilderDownloads -GridView -UpdateArch x64 -UpdateOS "Windows 7" -Download
```

![](../../../../.gitbook/assets/image%20%2890%29.png)

**The following is a list of Updates in OSDBuilder 19.3.12**

```text
Virtual PC for Windows 7 x64 KB958559
RSAT for Windows 7 x64 KB958830
Update for Windows 7 for x64-based Systems (KB2732059)
Update for Windows 7 for x64-based Systems (KB2750841)
Update for Windows 7 for x64-based Systems (KB2786081)
Platform Update for Windows 7 x64-Edition (KB2670838)
Update for Windows 7 for x64-based Systems (KB2592687)
Update for Windows 7 for x64-based Systems (KB2574819)
Update for Windows 7 for x64-based Systems (KB2834140)
Cumulative Security Update for ActiveX Killbits for Windows 7 for x64-based Systems (KB2900986)
Security Update for Windows 7 for x64-based Systems (KB2862330)
Update for Windows 7 for x64-based Systems (KB2919469)
Update for Windows 7 for x64-based Systems (KB2830477)
Update for Windows 7 for x64-based Systems (KB2830477)
Update for Windows 7 for x64-based Systems (KB2923545)
Internet Explorer 11 for Windows 7 for x64-based Systems (KB2841134)
Update for Windows 7 for x64-based Systems (KB2761217)
Update for Windows 7 for x64-based Systems (KB2545698)
Update for Windows 7 for x64-based Systems (KB2547666)
Update for Windows 7 for x64-based Systems (KB2603229)
Security Update for Windows 7 for x64-based Systems (KB2698365)
Update for User-Mode Driver Framework version 1.11 for Windows 7 for x64-based Systems (KB2685813)
Update for Windows 7 for x64-based Systems (KB2729094)
Security Update for Windows 7 for x64-based Systems (KB2813347)
Update for Windows 7 for x64-based Systems (KB2773072)
Security Update for Windows 7 for x64-based Systems (KB2667402)
Security Update for Windows 7 for x64-based Systems (KB2706045)
Security Update for Microsoft .NET Framework 3.5.1 on Windows 7 and Windows Server 2008 R2 SP1 for x64-based Systems (KB2894844)
Update for Kernel-Mode Driver Framework version 1.11 for Windows 7 for x64-based Systems (KB2685811)
Update for Windows 7 for x64-based Systems (KB2970228)
Security Update for Windows 7 for x64-based Systems (KB2984972)
Security Update for Windows 7 for x64-based Systems (KB3020388)
Update for Windows 7 for x64-based Systems (KB3021917)
Update for Windows 7 for x64-based Systems (KB3006137)
Update for Windows 7 for x64-based Systems (KB3037623)
Security Update for Windows 7 for x64-based Systems (KB3035126)
Security Update for Windows 7 for x64-based Systems (KB3046269)
Update for Windows 7 for x64-based Systems (KB3020369)
Security Update for Windows 7 for x64-based Systems (KB3031432)
Update for Windows 7 for x64-based Systems (KB3068708)
Security Update for Windows 7 for x64-based Systems (KB3059317)
Security Update for Windows 7 for x64-based Systems (KB3078601)
Security Update for Windows 7 for x64-based Systems (KB3075226)
Update for Windows 7 for x64-based Systems (KB3080149)
Security Update for Windows 7 for x64-based Systems (KB3110329)
Update for Windows 7 for x64-based Systems (KB3102429)
Update for Windows 7 for x64-based Systems (KB3138612)
Security Update for Windows 7 for x64-based Systems (KB3155178)
Security Update for Windows 7 for x64-based Systems (KB3156016)
Security Update for Windows 7 for x64-based Systems (KB3150220)
Update for Windows 7 for x64-based Systems (KB3150513)
Update for Windows 7 for x64-based Systems (KB3125574)
Security Update for Windows 7 for x64-based Systems (KB3159398)
Security Update for Windows 7 for x64-based Systems (KB3161949)
Update for Windows 7 for x64-based Systems (KB3170735)
Update for Windows 7 for x64-based Systems (KB3161102)
Update for Windows 7 for x64-based Systems (KB3172605)
Update for Windows 7 for x64-based Systems (KB3179573)
Update for Windows 7 for x64-based Systems (KB3063109)
Update for Windows 7 for x64-based Systems (KB3184143)
Security and Quality Rollup for .NET Framework 3.5.1 for Windows 7 x64 (KB4040980)
Update for Windows 7 for x64-based Systems (KB2952664)
2018-12 Cumulative Security Update for Internet Explorer 11 for Windows 7 for x64-based systems (KB4483187)
2019-02 Update for Windows 7 for x64-based Systems (KB4486459)
2019-03 Servicing Stack Update for Windows 7 for x64-based Systems (KB4490628)
2019-03 Security Update for Windows 7 for x64-based Systems (KB4474419)
2019-03 Security Monthly Quality Rollup for Windows 7 for x64-based Systems (KB4489878)
2019-03 Cumulative Security Update for Internet Explorer 11 for Windows 7 for x64-based systems (KB4489873)
```

## Update-OSMedia -Execute

Let **`Update-OSMedia -Execute`** do its work

![](../../../../.gitbook/assets/image%20%2847%29.png)

## Results

The only updates remaining can be added Online with minimal effort.  Windows 7 Service Pack 1 is just a validation check \(9.1MB\).  Internet Explorer is installed and up to date

![](../../../../.gitbook/assets/image%20%2898%29.png)

![](../../../../.gitbook/assets/image%20%2844%29.png)

![](../../../../.gitbook/assets/image%20%28170%29.png)

![](../../../../.gitbook/assets/image%20%28111%29.png)



