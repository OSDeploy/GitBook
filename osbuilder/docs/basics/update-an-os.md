# Update an OS

OSBuilder makes it easy to update any Imported Operating System with the latest Microsoft Updates

{% hint style="info" %}
An OSMedia is an Imported or Updated OS without any customizations
{% endhint %}

## Update-OSMedia

To view the required Updates for any OSMedia, simply use the following PowerShell command

```text
Update-OSMedia
```

A GridView list of OSMedia will be displayed.  Operating Systems that need an update will show no information under the Servicing, Cumulative, or Adobe headings.  Select an OSMedia and press OK

![](../../../.gitbook/assets/2019-02-10_2-46-42.png)

The required Microsoft Updates will be displayed.  If they have not been downloaded yet, you will receive a warning

![](../../../.gitbook/assets/2019-02-10_2-43-14.png)

## Update-OSMedia -DownloadUpdates

To download the required Microsoft Updates for an OSMedia, simply add the -DownloadUpdates parameter

```text
Update-OSMedia -DownloadUpdates
```

This will automatically download the Microsoft Updates using BITS Transfer.

{% hint style="warning" %}
BITS requires an Interactive Login
{% endhint %}

When using thi

![](../../../.gitbook/assets/2019-02-10_2-54-29.png)











