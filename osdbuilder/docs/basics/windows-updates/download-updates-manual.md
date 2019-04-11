# Manual Download

{% hint style="warning" %}
**This function has been renamed to Get-DownOSDBuilder.  This guide will be updated in the next few days**
{% endhint %}

{% hint style="danger" %}
I **STRONGLY** recommend that you **ALWAYS** use the **GridView** parameter so you can select the Downloads that you need.  Downloads that do not have an **UpdateGroup** specified are **Optional**

Make sure that you understand that **MicroCode Updates** are listed, but it is **NOT** recommended that you apply this to your image, but this is your call and **you have been warned**

**Optional Updates are not installed when executing Update-OSMedia.  They are only installed when executing a New-OSBuild if they are downloaded**
{% endhint %}

## Get-OSDBuilderDownloads -GridView

You can download updates using **`Get-OSDBuilderDownloads`**.  You can adjust the parameters to narrow down your scope

```text
Get-OSDBuilderDownloads -Download -GridView -UpdateArch x64 -UpdateBuild 1803 -UpdateOS "Windows 10"
```

Then simply select the **Updates** that you want to download and press OK

![](../../../../.gitbook/assets/image%20%28101%29.png)

The selected updates will be downloaded using **BITS Transfer**.  If you need to download non-interactively use the **`WebClient`** parameter

![](../../../../.gitbook/assets/image%20%2881%29.png)

Downloads will be saved in **OSDBuilder\Content\OSDUpdate**

![](../../../../.gitbook/assets/image%20%28227%29.png)

## Remove Superseded

When new Updates are released, you can use the **`Superseded`** parameter to remove old Updates

![](../../../../.gitbook/assets/image%20%2813%29.png)

