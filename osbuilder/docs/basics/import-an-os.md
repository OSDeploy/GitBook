# Import an OS

{% hint style="info" %}
**Open PowerShell with Admin Rights**
{% endhint %}

## Windows Media

You will need to Import an Operating System to use with OSBuilder.  This must be done with the original DVD or a mounted ISO.  You can use any of the following Media

* \*\*\*\*[**Microsoft Volume Licensing Service Center**](https://www.microsoft.com/Licensing/servicecenter/default.aspx) **\(MVLS\) ISO**
* \*\*\*\*[**Microsoft Developer Network**](https://msdn.microsoft.com) **\(MSDN\) ISO**
* \*\*\*\*[**Microsoft Media Creation Tool**](https://www.microsoft.com/en-us/software-download/windows10) **\(ESD Format\) ISO**

## Import-OSMedia

Once you have the DVD or ISO mounted, you can import the Operating System.  In PowerShell, simply enter the following command

```text
Import-OSMedia
```

OSBuilder will scan the drives for an Operating System to import and display the results in GridView.  Simply select the Operating System you want to import and press OK

{% hint style="info" %}
**You can multi-select multiple Editions from multiple ISO's at the same time**
{% endhint %}

![](../../../.gitbook/assets/2019-02-10_0-41-26.png)

The Operating System will be mounted to obtain a full inventory, and then dismounted.  This will take between 5-10 minutes to complete per Operating System Edition

![](../../../.gitbook/assets/2019-02-10_0-47-01.png)







