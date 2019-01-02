# NVMe Hotfix

To enable **NVMe** support to Windows 7 you need to add **KB2990941** and **KB3087873**

{% embed url="https://support.microsoft.com/en-us/help/2990941/update-to-add-native-driver-support-in-nvm-express-in-windows-7-and-wi" %}

{% embed url="https://support.microsoft.com/en-us/help/3087873/0x0000007e-stop-error-after-you-install-hotfix-2990941-in-windows-7-sp" %}

## OSBuilder Catalog XML

The issue is that this Hotfix is not available from Microsoft anymore, which explains why it is not automatically added to OSBuilder.  The only place I could find the MSU file was on a Third Party website.

{% hint style="danger" %}
Microsoft Update KB2990941 is hosted by a Third Party \([http://thehotfixshare.net/board/](http://thehotfixshare.net/board/)\), but is digitally signed by Microsoft
{% endhint %}

To add these Hotfixes to OSBuilder simply download the attached XML file and save it in **C:\OSBuilder\Content\Updates\Windows 7 x64 7601**

{% file src="../../../../.gitbook/assets/catalog-windows-7-x64-7601-nvme-hotfix.xml" %}

![](../../../../.gitbook/assets/2019-01-01_23-26-59.png)

## Update-OSMedia -DownloadUpdates

Simply run another [**`Update-OSMedia -DownloadUpdates`**](../../functions/osmedia/update-osmedia/#update-osmedia-downloadupdates) to get the added Hotfixes and you should be ready to go

![](../../../../.gitbook/assets/2019-01-01_20-16-07.png)

## WinPE

For Windows 7, only the Servicing and Cumulative Updates are applied to WinPE.  For the NVMe Hotfixes, I change the Severity of the update to WinPE.  OSBuilder will automatically import these Microsoft Updates in WinPE for Windows 7 as long as this value is present.

![](../../../../.gitbook/assets/2019-01-01_23-32-36.png)

## Windows 7 x86 SP1 7601

While I do not have any plans on adding Windows 7 x86 SP1 7601 support, here is the XML files if you decide YOU want to do this.  Save this file in **C:\OSBuilder\Content\Updates\Windows 7 x86 7601**

{% file src="../../../../.gitbook/assets/catalog-windows-7-x86-7601-nvme-hotfix.xml" %}

And here's a minimal and very incomplete CORE file

{% file src="../../../../.gitbook/assets/catalog-windows-7-x86-7601-core.xml" %}



