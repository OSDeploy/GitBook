# Microsoft Office Monthly Updates

As updates get published, it is important to keep the OSDUpdate Office Updates current

## Update OSDUpdate Module

Microsoft Office Updates are contained within Catalog XML files inside the OSDUpdate Module.  A PowerShell Module always has a Version.  While OSDUpdate should be a 0.1 version or something, I prefer using a Date, as this is easier to consume when working with Updates

In the image below, OSDUpdate is version 19.3.6.0.  This corresponds with 2019 March 6th with the trailing .0 the revision of OSDUpdate for this specific date.  Additionally you can see the Catalog Date Modified matching the OSDUpdate Module Version.  This is by design

Understanding this, OSDUpdate 19.3.6.x will contain the latest updates up to March 6, 2019.  Easy?

![](../../../.gitbook/assets/image%20%28127%29.png)

You can easily update OSDUpdate by using the included function

```text
Update-ModuleOSDUpdate
```

## Viewing Updates

If you want to view the updates without downloading, you can easily see them using the **`GridView`** parameter

```text
Get-OSDUpdate -CatalogOffice "Office 2016 64-Bit" -OfficeProfile All -GridView
```

In the image below, its easy to see the latest updates \(CreationDate\).  Additionally, in the background, two updates from the previous month are superseded but still present in the Catalog

![](../../../.gitbook/assets/image%20%28133%29.png)

## OSDUpdate Repository Root

As a reminder, the OSDUpdate Repository Root will contain all the different Update Catalog Downloads.  The individual Office directories will be created automatically.  In this case, my OSDUpdate Repository Root is C:\OSDeploy\OSDUpdate

![](../../../.gitbook/assets/image%20%28128%29.png)

## Downloading Updates

To select Microsoft Office Updates to download, I want to use the Get-OSDUpdateDownloads function

```text
Get-OSDUpdateDownloads -CatalogOffice "Office 2016 64-Bit" -OfficeProfile All -RepositoryRootPath C:\OSDeploy\OSDUpdate -GridView
```

Again, I am using the **`GridView`** parameter so I can see the Updates.  If I leave off this parameter, the updates will download automatically without any interaction \(for automatic scripting purposes\)

In the console window, there may be some Warnings in Orange.  This lets me know that I have some Superseded updates already downloaded \(don't worry about the ones in grey, they are Superseded, but still in the Catalog, but they will be hidden from the results, so they will not be downloaded

![](../../../.gitbook/assets/image%20%2823%29.png)

Select the Updates you want to download and press OK, and the Updates will be downloaded into the OSDUpdate Repository

![](../../../.gitbook/assets/image%20%2849%29.png)

## Removing Superseded Updates

Adding the **`RemoveSuperseded`** parameter will remove the Superseded Updates for that specific Microsoft Office Update Catalog.  You will need to repeat this process for any additional Microsoft Office versions you have downloads for

![](../../../.gitbook/assets/image%20%2834%29.png)

## Automating Downloads

Simply leave off the **`GridView`** parameter and go about your day

![](../../../.gitbook/assets/image%20%281%29.png)

Additionally, you can add the **`RemoveSuperseded`** parameter to do your cleanup and download in the same step

![](../../../.gitbook/assets/image%20%2822%29.png)

