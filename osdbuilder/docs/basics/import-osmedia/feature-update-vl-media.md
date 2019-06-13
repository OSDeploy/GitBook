---
description: OSDBuilder 19.4.3+
---

# Feature Update VL Media

A cool thing about using WSUS Catalogs is the ability to download Feature Updates.  These updates are used by WSUS to upgrade Windows 10.  These files are in ESD format and must be converted to WIM for Offline Servicing.  Keep in mind these Feature Updates are Volume License media, so this won't work if you use an OEM, Retail, or MSDN product key.

OSDBuilder can download the Windows 10 Feature Updates and convert them automatically to WIM

{% hint style="warning" %}
**Due to the large size, these downloads will require BITS Transfer, so you will need to be logged in interactively**
{% endhint %}

## Viewing Available Feature Updates

To view the available Feature Updates without downloading, use the following

```text
Get-DownOSDBuilder -MediaESD GridView
```

You will see that there are two different types per language available \(Business and Consumer\).  Also note that OSDBuilder only contains Feature Updates for Windows 10 1809

![](../../../../.gitbook/assets/image%20%28280%29.png)

## Downloading and Converting Feature Updates

If you want to download an ESD file, use the following command line

```text
Get-DownOSDBuilder -MediaESD Download
```

Select one or more ESD files to download and press OK.  Keep in mind this will take quite a bit of time to download

![](../../../../.gitbook/assets/image%20%28306%29.png)

The ESD file will be downloaded to **OSDBuilder\Media** using BITS Transfer.  The nice thing about BITS Transfer is that you do get to see progress of the download

![](../../../../.gitbook/assets/image%20%28118%29.png)

An ESD file contains several Indexes, just like a WIM.  The next process is to rebuild the ESD file into a proper Windows Media format.  This involves expanding the Windows Setup Media \(Index 1\), the Boot.wim \(Index 2-3\), and the Windows Images \(remaining indexes\).  This process will take some time as it must be converted from Recovery compression, to High compression \(about 10 minutes\)

![](../../../../.gitbook/assets/image%20%2891%29.png)

When complete, the ESD and Feature Update Media directory will be ready to Import

![](../../../../.gitbook/assets/image%20%28182%29.png)

![](../../../../.gitbook/assets/image%20%28229%29.png)

## Import-OSMedia

Import-OSMedia can now be used to import the Feature Update into OSDBuilder where it can be Updated and Customized just like any other OS

![](../../../../.gitbook/assets/image%20%28195%29.png)

## Media Directory

Yes, I know what you are thinking ... Can you copy your own extracted ISO into the OSDBuilder\Media directory and import the OS?

Yes you can ... but keep in mind OSDBuilder is not meant to service customized Media ... don't bug me for help on this if you decide to go this path

