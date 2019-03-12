# Manual Download

{% hint style="danger" %}
I **STRONGLY** recommend that you **ALWAYS** use the **GridView** parameter so you can select the Downloads that you need.  Downloads that do not have an **UpdateGroup** specified are **Optional**

Make sure that you understand that **MicroCode Updates** are listed, but it is **NOT** recommended that you apply this to your image, but this is your call and **you have been warned**

**Optional Updates are not available when executing Update-OSMedia.  You will need to use New-OBuild**
{% endhint %}

## Get-OSDBuilderDownloads -GridView

You can download updates using **`Get-OSDBuilderDownloads`**.  You can adjust the parameters to narrow down your scope

```text
Get-OSDBuilderDownloads -Download -GridView -UpdateArch x64 -UpdateBuild 1803 -UpdateOS "Windows 10"
```

Then simply select the **Updates** that you want to download and press OK

![](../../../../.gitbook/assets/image%20%2832%29.png)

The selected updates will be downloaded using **BITS Transfer**.  If you need to download non-interactively use the **`WebClient`** parameter

![](../../../../.gitbook/assets/image%20%2825%29.png)

Downloads will be saved in **OSDBuilder\Content\OSDUpdate**

![](../../../../.gitbook/assets/image%20%2870%29.png)

## Remove Superseded

When new Updates are released, you can use the **`Superseded`** parameter to remove old Updates

![](../../../../.gitbook/assets/image%20%286%29.png)

