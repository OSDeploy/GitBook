# Update-OSMedia

## Prerequisites

{% page-ref page="../../functions/osmedia/import-osmedia.md" %}

## Functions

{% page-ref page="../../functions/osmedia/update-osmedia.md" %}

## Update-OSMedia

To view the required Updates for any OSMedia, simply use the following PowerShell command

```text
Update-OSMedia
```

A **GridView** list of all existing **OSMedia** will be displayed.  Operating Systems that need an update will show no information under the Servicing, Cumulative, or Adobe headings.  Select an existing **OSMedia** and press OK

![](../../../../.gitbook/assets/2019-02-10_2-46-42.png)

The required Microsoft Updates will be displayed.  Updates that have not been downloaded yet will show as Missing

![](../../../../.gitbook/assets/image%20%28258%29.png)

## Update-OSMedia -Execute \(Missing Update\)

When you are ready to update an **OSMedia**, use the **`Execute`** parameter

```text
Update-OSMedia -Execute
```

If you do not have all the Updates downloaded, Execution will be disabled

![](../../../../.gitbook/assets/image%20%28118%29.png)

## Update-OSMedia -Download -Execute

You can add the **`Download`** parameter.  This will automatically download any Missing updates and Execute the Update

![](../../../../.gitbook/assets/image%20%28137%29.png)

{% hint style="warning" %}
**This process will take between 30 minutes and 2 hours to complete on a good system.  Plan on taking a break while the process is running and make sure you do not have an AntiVirus On Access Scan running**
{% endhint %}

## Complete Process

The image below is the complete Update-OSMedia process.  Right click and open in a new tab for best results

![](../../../../.gitbook/assets/image%20%2849%29.png)









