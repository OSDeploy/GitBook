---
description: OSDUpdate 19.6.14+
---

# Create Windows and Office Packages

Using **`Get-OSDUpdatePackage`** all you need is a **PackageName** and a **PackagePath**

## **OSDUpdate Office Package**

```text
Get-OSDUpdatePackage -PackageName "Office 2016 64-Bit" -PackagePath "D:\OSDUpdate\Office\Office 2016 64-Bit"
```

This will download everything needed for a default Update of Office 2016 64-Bit

![](../../../.gitbook/assets/image%20%2873%29.png)

Including a lovely installation script :\)

![](../../../.gitbook/assets/image%20%28269%29.png)

## OSDUpdate Windows Package

Now its time to create a Package for Windows 10 x64 1903.  This is the command that can be used

```text
Get-OSDUpdatePackage -PackageName "Windows 10 x64 1903" -PackagePath "D:\OSDUpdate\Windows\Windows 10 x64 1903"
```

Let it cook for a bit

![](../../../.gitbook/assets/image%20%28224%29.png)

When its finished downloading, you will have a Catalog and Script in the directory

![](../../../.gitbook/assets/image%20%28353%29.png)

{% hint style="danger" %}
**Don't be smart and try to mix different content in a Package.  Yes it will probably work \(because I knew you'd try it out\), but I don't want to troubleshoot or invest time on this approach if something flakes out**
{% endhint %}

