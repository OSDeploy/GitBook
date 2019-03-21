# OneDrive

{% hint style="info" %}
**The OneDrive directory's only function is to allow you to add an updated OneDriveSetup.exe.  This will be used to replace the existing version during Windows 10 Offline Servicing**
{% endhint %}

## Related

{% page-ref page="../../functions/get-downosdbuilder.md" %}

## Update-OSMedia and New-OSBuild

When executing **`Update-OSMedia`** or **`New-OSBuild`**, the **OneDriveSetup.exe** version information will be displayed.  In Windows 10 1809 \(November re-release\), the version installed is from September 2018.  The problem is that if you are interested in using KFM \(Known Folder Move\), you need to update OneDriveSetup.exe

![](../../../../.gitbook/assets/image%20%2833%29.png)

You can view the Release Notes with the version information in the following link

{% embed url="https://support.office.com/en-gb/article/new-onedrive-sync-client-release-notes-845dcf18-f921-435e-bf28-4e24b95e5fc0" %}

## Get-DownOSDBuilder -ContentDownload

Use this function to download either the Production or Enterprise versions to **&lt;OSDBuilder&gt;\Content\OneDriveSetup.exe**

{% hint style="warning" %}
**You should repeat this process as needed to ensure you are on the latest version**
{% endhint %}

![](../../../../.gitbook/assets/image%20%28113%29.png)

## Update-OSMedia and New-OSBuild

Now when you execute **`Update-OSMedia`** or **`New-OSBuild`**,  **OneDriveSetup.exe** will be up to date!

![](../../../../.gitbook/assets/image%20%2881%29.png)



