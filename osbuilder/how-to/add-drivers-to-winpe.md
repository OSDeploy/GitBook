# Add Drivers to WinPE \(and WinRE\)

While WinPE 10 has a fair amount of Drivers, it may be necessary to add specific ones for the Computer Models you support.

**I do NOT recommend adding more than a few MB of Drivers as this will increase the size of your WinRE.  If WinRE.wim is too large, it will not fit in your Recovery Partition \(I recommend a 984MB Recovery Partition to prevent this issue\).**

---

### OSBuilder WinPE Driver Location

WinPE Drivers are located in the following \(pre-created\) location

```
C:\OSBuilder\Content\WinPE\Drivers
```

![](/assets/2018-07-10_21-06-41.png)

---

### Integrating Dell WinPE Drivers

Don't worry if you use a different computer vendor,  the process should be similar.  Dell provides a CAB download at

[http://en.community.dell.com/techcenter/enterprise-client/w/wiki/2065.dell-command-deploy-driver-packs-for-enterprise-client-os-deployment\#WinPE](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/2065.dell-command-deploy-driver-packs-for-enterprise-client-os-deployment#WinPE)

I can easily download the WinPE 10 CAB and extract the files to the corresponding directories.  In this case they were added in this structure.

```
C:\OSBuilder\Content\WinPE\Drivers\WinPE 10 x64\Dell A08 x64
C:\OSBuilder\Content\WinPE\Drivers\WinPE 10 x86\Dell A08 x86
```

![](/assets/2018-07-10_21-10-44.png)

---

### Get-OSBuilder

Once the Drivers have been added, Get-OSBuilder should show the added directories.

![](/assets/2018-07-10_21-37-32.png)

---

### New-OSBuildTask

Once there is content in the WinPE Drivers, a New Task will show the content and allow you to add it.

![](/assets/2018-07-10_21-39-44.png)

---

### Large WinRE.wim

Keep in mind that adding Drivers to WinRE may result in a WIM that is too large for the Recovery Partition.  One concern is that Dell has 103MB of MSI files in the WinPE 10 x64 Driver Cab, out of 160MB total.

![](/assets/2018-07-10_21-45-11.png)

Find the large Drivers and remove them, they are more than likely Thunderbolt related.  I removed the following two and was left with 55MB of Drivers remaining to be imported into WinPE, which will increase WinPE and WinRE about half of that, which is acceptable.

```
0XCPP_A00-00
7X8Y6_A00-00
```

---



