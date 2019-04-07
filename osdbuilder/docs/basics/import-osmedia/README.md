# Import-OSMedia

{% hint style="info" %}
**Open PowerShell with Admin Rights**
{% endhint %}

## Windows Media

You will need to Import an Operating System to use with **OSDBuilder**.  This must be done with the original DVD or a mounted ISO.  You can use any of the following Media

* \*\*\*\*[**Microsoft Volume Licensing Service Center**](https://www.microsoft.com/Licensing/servicecenter/default.aspx) **\(MVLS\) ISO**
* \*\*\*\*[**Microsoft Developer Network**](https://msdn.microsoft.com) **\(MSDN\) ISO**
* \*\*\*\*[**Microsoft Media Creation Tool**](https://www.microsoft.com/en-us/software-download/windows10) **\(ESD Format\) ISO**

## Import-OSMedia

Once you have the DVD or ISO mounted, you can import the Operating System.  In PowerShell, simply use the following command

```text
Import-OSMedia
```

**OSDBuilder** will scan the drives for an Operating System to import and display the results in **GridView**.  Simply select the Operating System you want to import and press **OK**

{% hint style="info" %}
**You can select multiple Editions from multiple ISO's at the same time**
{% endhint %}

![](../../../../.gitbook/assets/image%20%2830%29.png)

### Import OSMedia Mount

The Operating System Index that was selected will be mounted

![](../../../../.gitbook/assets/image%20%28144%29.png)

### Mounted Inventory

Once mounted, a full inventory will be saved, and the Operating System will be copied into **OSDBuilder\OSMedia**.  This will take between 5-10 minutes to complete per Operating System Index that was selected

![](../../../../.gitbook/assets/image%20%2885%29.png)

![](../../../../.gitbook/assets/image%20%28139%29.png)

