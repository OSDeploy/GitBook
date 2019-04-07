# Multi-Language OSMedia

## Purpose

There are probably a handful of people that can properly create Windows Multi-Language Media, its not as simple as injecting Language Packs.  The purpose of this guide is to fully detail how this is done properly with Windows 10 1809 x64

## Select Primary Language

In this example, I am going to combine the 5 Languages in Windows.  I should refer to 

{% embed url="https://support.microsoft.com/en-us/help/14236/language-packs" %}

| **Language** | **LP** | **Base Language Required** |
| :--- | :--- | :--- |
| English \(US\) | en-US | Any Language |
| English \(International\) | en-GB | Any Language |
| French | fr-FR | Any Language |
| German | de-DE | Any Language |
| Spanish | es-ES | Any Language |

I'm in luck that there are no requirements on the Base Language.  This means that any language can be used as the Base Language.  I'll take the easy road and use English \(US\)

## Download Windows Media

I will need the original OS Media for each of the Operating Systems that I want to include.  If you already have your ISO's, you can skip this step, otherwise you can use the following command to download Volume Licensing Media for Windows 10 1809 x64

```text
Get-DownOSDBuilder -MediaESD Download
```

![](../../.gitbook/assets/image%20%28150%29.png)

Keep in mind that this may take a considerable amount of time as the files must be downloaded and extracted

![](../../.gitbook/assets/image%20%2827%29.png)

## Import-OSMedia

Use Import-OSMedia to import the Primary OS into OSDBuilder

![](../../.gitbook/assets/image%20%2851%29.png)

## Update-OSMedia

The Primary OS will need to be updated.  Use Update-OSMedia to do this

![](../../.gitbook/assets/image%20%28211%29.png)

## Windows ADK

Add the Windows ADK to the proper Content directory

![](../../.gitbook/assets/image%20%2833%29.png)

## ISO Extract

Download the 











## Media Merge

Merging the Media is important as it adds Language Resources for Windows Setup.  This means it is used when booting to the Media.  Keep in mind when performing Upgrades, you are using Windows Setup, so this applies as well.

Microsoft details that you need to copy the contents of the Sources directory

![](../../.gitbook/assets/image%20%28159%29.png)

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup\#step-3-add-localized-windows-setup-resources-to-the-windows-distribution" %}

But this does not include the Language resources for Boot and Logging, so I find it important to copy everything except the WIMS

![](../../.gitbook/assets/image%20%2843%29.png)

OSDBuilder won't do this automatically for you, but here is the script that I used to combine

```text
$MediaDirectory = "D:\OSDBuilder\Langs\Media"
$PrimaryOS = "$MediaDirectory\17763.379.190312-1352.rs5_release_svc_refresh_CLIENTBUSINESS_VOL_x64FRE_en-us"

Get-ChildItem "$MediaDirectory" | `
Where-Object {$_.PSIsContainer -eq $true} | `
Select -Property Name, FullName | `
foreach {
    robocopy "$($_.FullName)" "$MediaDirectory\MergedOS" *.* /e /ndl /xc /xn /xo /xf *.wim /np
}

#Copy PRIMARY OS
robocopy "$PrimaryOS" "$MediaDirectory\MergedOS" *.* /e /ndl /np
```

When complete, you will have a Merged OS with all the Language resources that are needed in the Media

![](../../.gitbook/assets/image%20%28214%29.png)

















