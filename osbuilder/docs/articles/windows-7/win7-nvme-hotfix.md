# Win7 - NVMe Hotfix

## NVMe Hotfix KB2990941

To enable NVMe support to Windows 7 you need to add this **KB2990941**

{% embed url="https://support.microsoft.com/en-us/help/2990941/update-to-add-native-driver-support-in-nvm-express-in-windows-7-and-wi" %}

The issue is that this Hotfix is not available from Microsoft anymore, which explains why it is not automatically added to OSBuilder.  The only place I could find the MSU file was on a Third Party website.

If you require this update, save this XML file to **&lt;OSBuilder&gt;\Content\Updates\Windows 7 x64 7601**

{% file src="../../../../.gitbook/assets/catalog-windows-7-x64-7601-nvme-hotfix-for-windows-7-x64-kb2990941.xml" caption="Win7 x64 KB2990941" %}

{% hint style="danger" %}
This Microsoft Update is hosted by a Third Party \([http://thehotfixshare.net/board/](http://thehotfixshare.net/board/)\), but is digitally signed by Microsoft
{% endhint %}

## NVMe Hotfix KB3087873

Additonally you will need a second Hotfix which can be added easily to OSBuilder

If you require this update, save this XML file to **&lt;OSBuilder&gt;\Content\Updates\Windows 7 x64 7601**

{% file src="../../../../.gitbook/assets/catalog-windows-7-x64-7601-nvme-hotfix-for-windows-7-x64-kb3087873.xml" caption="Win7 x64 KB3087873" %}

Here is the KB Article for reference

{% embed url="https://support.microsoft.com/en-us/help/3087873/0x0000007e-stop-error-after-you-install-hotfix-2990941-in-windows-7-sp" %}

## Update-OSMedia -DownloadUpdates

Simply run another [**`Update-OSMedia -DownloadUpdates`**](../../functions/osmedia/update-osmedia/#update-osmedia-downloadupdates) to get the added Hotfixes and you should be ready to go

![](../../../../.gitbook/assets/2019-01-01_20-16-07.png)

## Windows 7 x86 SP1 7601

While I do not have any plans on adding x86 support, here are the necessary XML files if you decide YOU want to do this

{% file src="../../../../.gitbook/assets/catalog-win7-x86-7601-nvme-hotfix-for-windows-7-x86-kb2990941.xml" caption="Win7 x86 KB2990941" %}

{% file src="../../../../.gitbook/assets/catalog-win7-x86-7601-nvme-hotfix-for-windows-7-x86-kb3087873.xml" caption="Win7 x86 KB3087873" %}



