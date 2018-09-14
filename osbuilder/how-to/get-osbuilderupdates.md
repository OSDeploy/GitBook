# Download Microsoft Updates

You may want to download the Microsoft Updates you need before Updating any Operating Systems.  This is not required as you can let OSBuilder what you need, but if you want to get them all downloaded first, follow these instructions

## Get-OSBuilderUpdates

Get-OSBuilderUpdates is used to download Microsoft Updates into the OSBuilder\Content\Updates directory.  When running Get-OSBuilder for the first time you will receive a message that Microsoft Updates are missing.

![](../../.gitbook/assets/2018-09-12_0-50-04.png)

## Update Catalog

OSBuilder downloads a list of current Microsoft Updates into an XML and a JSON file.  This is known as the OSBuilder Update Catalog \(think Microsoft Update Catalog\).  Once these files are downloaded, a list of available downloads will be displayed.

![](../../.gitbook/assets/2018-09-12_1-11-28.png)

## Catalog Update

You can update the Catalog by using the **CatalogUpdate** parameter

![](../../.gitbook/assets/2018-09-12_1-13-49.png)

## Filter Updates

Its much easier to see the Filters that can be used in PowerShell ISE.  You can filter by Category, OS, Architecture, and OS Build

![](../../.gitbook/assets/2018-09-12_1-17-49.png)

## Filter By Keywords

If you are feeling brave, you can also Filter by using Keywords

![](../../.gitbook/assets/2018-09-12_1-23-10.png)

## Download Updates

Once you have your proper Filters, the -Download parameter will get the updates for you

![](../../.gitbook/assets/2018-09-12_1-20-32.png)

## PowerShell ISE GridView

If you are in PowerShell ISE, you can use the **IseGridView** parameter to display a list of available updates.  Select the ones you want to download \(use the **Download** parameter\) and press OK

![](../../.gitbook/assets/2018-09-12_1-25-32.png)

## Remove Superseded

When Catalogs get new updates, old updates will need to be removed.  They will be displayed and you can use the **RemoveSuperseded** parameter to delete them

![](../../.gitbook/assets/2018-09-12_1-29-10.png)



