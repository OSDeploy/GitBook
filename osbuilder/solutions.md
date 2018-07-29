# Solutions

### Windows 10 Upgrade - DEVINV

This issue occurs when performing Windows 10 upgrades.  The computer you are upgrading should have the latest Cumulative Update installed.  This results in a newer version of devinv.dll in the Media Sources directory which causes the failure.

To solve this issue, when the Install.wim is updated using the latest Cumulative Update, OSBuilder will copy the updated files to the Sources directory to ensure that it is up to date.

{% hint style="info" %}
**References**

**Adam Gross:** [http://www.asquaredozen.com/2018/05/21/windows-10-1709-in-place-upgrade-hangs-on-making-sure-youre-ready-to-install/](http://www.asquaredozen.com/2018/05/21/windows-10-1709-in-place-upgrade-hangs-on-making-sure-youre-ready-to-install/)

**Marc Graham:** [http://blog.ctglobalservices.com/configuration-manager-sccm/mag/devicemap-and-device-inventory-failures-in-win7-to-win10-1709-in-place-upgrades/](http://blog.ctglobalservices.com/configuration-manager-sccm/mag/devicemap-and-device-inventory-failures-in-win7-to-win10-1709-in-place-upgrades/)
{% endhint %}

### Windows 10 Upgrade - 1709+ Multi Edition

Windows 10 Upgrade fails due to EI.CFG not containing the Windows EditionID and a Product ID not specified in the Update Task Sequence

{% hint style="info" %}
**Adam Gross:** [http://www.asquaredozen.com/2018/01/16/windows-7-windows-10-fall-creators-update-1709-place-upgrade-fails-error-0xc1900204-invalid-sku/](http://www.asquaredozen.com/2018/01/16/windows-7-windows-10-fall-creators-update-1709-place-upgrade-fails-error-0xc1900204-invalid-sku/)

**Microsoft EI.CFG** [https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-setup-edition-configuration-and-product-id-files--eicfg-and-pidtxt](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-setup-edition-configuration-and-product-id-files--eicfg-and-pidtxt)

**Microsoft VL Keys** [https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys](https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys)
{% endhint %}

\*\*\*\*







