# Windows MultiLang

This section relates to **Windows MultiLang**, which is really an abbreviation for '**Multiple Languages**'.  Its also referred to as '**Multilingual**', so it covers both.

In regards to a Windows Image \(WIM\), **MultiLang** would refer to the Language Packs installed.  In an SCCM or Enterprise setting, it may refer to the different Windows 10 Languages that exist in the environment.

The goal of this section is to detail how to create a Windows 10 Image with **MultiLang** support that can be  used for OS Deployment.

## OSDBuilder Guide to Windows 10 MultiLang

{% hint style="danger" %}
**This Guide requires OSDBuilder 19.4.11 or newer**

**You will be required to download the Windows 10 Language ISO and the Windows 10 Features on Demand ISO to create a proper Windows 10 MultiLang \(no workaround\)**
{% endhint %}

This guide is split up into multiple parts, as it is quite detailed and lengthy.  If you work with multiple Windows 10 languages in your organization, take the time to fully read these pages so you can fully understand the integration with **OSDBuilder** \(I'm not open to MultiLang questions if you don't read this guide first\).  

**This guide will focus on Windows 10 1809**.  Other Windows versions, including Server, are not presented in this guide.  There are no plans to create guides for every OS Build, but you should be able to figure things out using this guide as a reference

{% page-ref page="multi-lang-requirements.md" %}

{% page-ref page="osmedia.md" %}

{% page-ref page="multi-lang-osbuild-task.md" %}

{% page-ref page="osbuild-task-winpe.md" %}

{% page-ref page="osbuild.md" %}

{% page-ref page="osbuild-test.md" %}

{% page-ref page="osbuild-multilang.md" %}

{% page-ref page="osbuild-multilang-test.md" %}

## Language Resources

{% embed url="https://dennisspan.com/managing-windows-languages-and-language-packs/" %}

{% embed url="https://configgirl.com/2019/03/24/servicing-windows-10-when-multiple-languages-are-installed/" %}

{% embed url="https://www.vacuumbreather.com/index.php/blog/item/31-mastering-windows-10-language-packs" %}

## Microsoft Docs

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-language-packs-to-windows" caption="Add languages to Windows Images" %}

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/add-multilingual-support-to-a-windows-distribution" caption="Add languages to a Windows Distribution" %}

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-multilingual-support-to-windows-setup" caption="Add languages to Windows Setup" %}

{% embed url="https://configgirl.com/2019/03/24/servicing-windows-10-when-multiple-languages-are-installed/" %}

{% embed url="https://support.microsoft.com/en-us/help/14236/language-packs" caption="Language Pack Information" %}

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-mount-and-customize" caption="WinPE: Mount and Customize" %}

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-add-packages--optional-components-reference" caption="WinPE: Optional Components \(OC\) Reference" %}

{% embed url="https://techcommunity.microsoft.com/t5/Configuration-Manager-Archive/How-to-Upgrade-Windows-Clients-with-Multiple-Languages-installed/ba-p/401044" %}

{% embed url="https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/Language-pack-acquisition-and-retention-for-enterprise-devices/ba-p/275404" %}









