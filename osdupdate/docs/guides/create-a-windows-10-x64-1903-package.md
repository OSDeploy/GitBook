# Create a Windows 10 x64 1903 Package

Another easy task with the following command

```text
Get-OSDUpdatePackage -PackageName "Windows 10 x64 1903" -PackagePath "D:\OSDUpdate\Windows\Windows 10 x64 1903"
```

And let it cook for a bit

![](../../../.gitbook/assets/image%20%28211%29.png)

When its finished downloading, you will have a Catalog and Script in the directory

![](../../../.gitbook/assets/image%20%28331%29.png)

{% hint style="danger" %}
**Don't be smart and try to mix different content in a Package.  Yes it will probably work \(because I knew you'd try it out\), but I don't want to troubleshoot or invest time on this approach if something flakes out**
{% endhint %}

