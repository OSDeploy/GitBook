# MDT Deployment

You should have completed the previous page first

{% page-ref page="osdupdate-mdt-integration.md" %}

Then make sure that you have the Office 2016 Bundle and the OSDUpdate Windows Package available.  You will want to make these hidden in your Production environment

![](../../../.gitbook/assets/image%20%2886%29.png)

Office 2016 is installed first

![](../../../.gitbook/assets/image%20%28201%29.png)

## OSDUpdate Package Office 2016 64-Bit

This package will install after Office 2016

![](../../../.gitbook/assets/image%20%28245%29.png)

## OSDUpdate Package Windows 10 x64 1903

Followed by the Windows OSDUpdate Package

{% hint style="info" %}
I'll need to work on some logic to apply the Servicing Stack first, but this should be easy enough to solve in the next few days
{% endhint %}

![](../../../.gitbook/assets/image%20%28242%29.png)

## Wrap-Up

After the updates are applied, you should restart the computer to finalize the update

![](../../../.gitbook/assets/image%20%28316%29.png)

And that's it!  OSDUpdate can be easily integrated with MDT for keeping deployments up to date when you can't update the Reference Image

















