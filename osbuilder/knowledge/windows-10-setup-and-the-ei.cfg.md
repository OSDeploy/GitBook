# Windows 10 Setup and the ei.cfg

Windows 10 1709 and 1803 Volume License media includes multiple Indexes in the WIM.  When booting one of these ISO's in a VM and starting Windows Setup, we can see the different options for installation.  This screen was not displayed prior to 1709 as those ISO's contain a single Index in the WIM.

![](../../.gitbook/assets/2018-07-29_13-28-48.png)

### ei.cfg

Additionally, older Media had a file called ei.cfg in the SOURCES directory which contained the EditionID \(ei\).  Since Multi Index ISO's contain multiple versions of Windows, this file does not contain the EditionID.

![](../../.gitbook/assets/2018-07-29_13-22-53.png)

{% hint style="info" %}
Learn more about EI.cfg and PID.txt from Microsoft Hardware Dev Center

[Windows Setup Edition Configuration and Product ID Files \(EI.cfg and PID.txt\)](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-setup-edition-configuration-and-product-id-files--eicfg-and-pidtxt)
{% endhint %}

### Modifying the ei.cfg

I can modify the ei.cfg by adding the EditionID and then create a new ISO.  During Windows Setup, I am not prompted to select an Edition, even though my install.wim has multiple Indexes.

![](../../.gitbook/assets/2018-07-29_13-44-13.png)









