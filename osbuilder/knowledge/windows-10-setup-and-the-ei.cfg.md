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

### Install.wim Multi-Index and ei.cfg with EditionID

I can modify the ei.cfg by adding the EditionID and then create a new ISO.  During Windows Setup, I am not prompted to select an Edition, even though my install.wim has multiple Indexes.

![](../../.gitbook/assets/2018-07-29_13-44-13.png)

### Install.wim Single-Index and ei.cfg without EditionID

The Install.wim only has the Enterprise Index, and the ei.cfg does not contain the EditionID.  In this case, no prompt to select an Edition.

![](../../.gitbook/assets/2018-07-29_14-12-37.png)

### Install.wim Multi-Index and ei.cfg without EditionID with AutoUnattend.xml Key

Because why not.  In this example I have added the KMS Client Setup Key to a simple AutoUnattend.xml

```text
<?xml version="1.0" encoding="utf-8"?>
<unattend xmlns="urn:schemas-microsoft-com:unattend">
    <settings pass="windowsPE">
        <component name="Microsoft-Windows-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <UserData>
                <ProductKey>
                    <Key>NPPR9-FWDCX-D2C8J-H872K-2YT43</Key>
                </ProductKey>
            </UserData>
        </component>
    </settings>
</unattend>
```

{% hint style="info" %}
[Microsoft KMS Client Setup Keys](https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys)
{% endhint %}

Windows Setup knows which Key corresponds with the proper Edition

![](../../.gitbook/assets/2018-07-29_14-49-33.png)

When using the AutoUnattend.xml, include the WillShowUI entry with a value of Never to hide the Select Operating System screen.

```text
<?xml version="1.0" encoding="utf-8"?>
<unattend xmlns="urn:schemas-microsoft-com:unattend">
    <settings pass="windowsPE">
        <component name="Microsoft-Windows-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <UserData>
                <ProductKey>
                    <Key>NPPR9-FWDCX-D2C8J-H872K-2YT43</Key>
                    <WillShowUI>Never</WillShowUI>
                </ProductKey>
            </UserData>
        </component>
    </settings>
</unattend>
```

