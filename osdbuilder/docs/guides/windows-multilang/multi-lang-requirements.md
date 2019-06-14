# Requirements

{% hint style="danger" %}
**This guide requires OSDBuilder 19.4.11 or newer**
{% endhint %}

## Select a Windows Base Language

In this guide, I am going to add 5 different languages to Windows 10 1809, so I need to pick a Base Language to start with.  I will refer to the following Microsoft link to make that decision

{% embed url="https://support.microsoft.com/en-us/help/14236/language-packs" %}

| **Language** | **LP** | **Base Language Required** |
| :--- | :--- | :--- |
| English \(US\) | en-US | Any Language |
| English \(International\) | en-GB | Any Language |
| French | fr-FR | Any Language |
| German | de-DE | Any Language |
| Spanish | es-ES | Any Language |

I'm in luck that there are no requirements on the Base Language.  This means that any language can be used as the Base Language.  **I'll take the easy road and use English \(US\) as my Base Language**

## Download OSMedia

You should download all your Volume License Media from **MVLS.**  In this guide, I will be using OSDBuilder to download the Feature Updates and extract the OS from there.  You will need the Windows ISO's for each Language you want combine \(i.e. 5 Languages = 5 ISO's\) unless there isn't one

{% page-ref page="../../basics/import-osmedia/feature-update-vl-media.md" %}

If you already have your ISO's, you can skip this step, otherwise you can use the following command to download Volume Licensing Media for Windows 10 1809 x64

```text
Get-DownOSDBuilder -MediaESD Download
```

![](../../../../.gitbook/assets/image%20%28256%29.png)

Keep in mind that this may take a considerable amount of time as the files must be downloaded and extracted

![](../../../../.gitbook/assets/image%20%2845%29.png)

## Download the Windows 10 1809 Language AND Features on Demand x64 ISO

{% hint style="danger" %}
**If you are unable to download either of these ISO's, the remainder of this guide will not work.  You will need to create separate Windows 10 Language Images**
{% endhint %}

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-language-packs-to-windows\#get-language-resources-language-pack-iso-and-feature-on-demand-iso" %}

## ISO Extract the FOD and Language

{% hint style="danger" %}
**If you are unable to extract either of these ISO's, the remainder of this guide will not work.  You will need to create separate Windows 10 Language Images**
{% endhint %}

{% page-ref page="../../basics/content/isoextract.md" %}

Extract the following ISOs from as shown in the image below

* **Windows 10 1809 Features on Demand x64**
* **Windows 10 1809 Language**

![](../../../../.gitbook/assets/image%20%28203%29.png)

In the Windows 10 1809 Language content, delete the directories and files for the Languages that will not be in your Media.  Do not delete your Primary OSMedia Language files

![](../../../../.gitbook/assets/image%20%28288%29.png)

## Windows ADK

Download and install the Windows ADK and the WinPE Addon

{% page-ref page="../../basics/content/adk.md" %}

Add the Windows ADK to the proper Content directory

![](../../../../.gitbook/assets/image%20%2855%29.png)

If you have the Languages ISO in your ISOExtract directory, delete ALL the ADK Language sub-directories from the following location

```text
<OSDBuilder Home>\Content\ADK\Windows 10 1809\Windows Preinstallation Environment\amd64\WinPE_OCs
```

![](../../../../.gitbook/assets/image%20%2837%29.png)

**Why delete them?  Ask Microsoft ...**

![](../../../../.gitbook/assets/image%20%28130%29.png)

[https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-language-packs-to-windows\#get-language-resources-language-pack-iso-and-feature-on-demand-iso](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-language-packs-to-windows#get-language-resources-language-pack-iso-and-feature-on-demand-iso)

