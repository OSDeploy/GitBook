# Quick Instructions

If you don't feel like reading through all the documentation, here are the quick instructions in 6 steps. These steps can be completed in about 6 **minutes of Touch Time, and 39 - 167 minutes of Processing Time**

## 1. Install OSBuilder

> ### Touch Time Required: 1 Minute

```text
Install-Module -Name OSBuilder -Scope CurrentUser
```

{% hint style="info" %}
**How To:** [https://www.osdeploy.com/osbuilder/installation.html](https://www.osdeploy.com/osbuilder/installation.html)
{% endhint %}

## 2. Import an Operating System

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 8 - 15 Minutes

```text
Import-OSMedia
```

{% hint style="info" %}
Steps 2 and 3 can be combined by adding the **-UpdateOSMedia** parameter
{% endhint %}

```text
Import-OSMedia -UpdateOSMedia
```

{% hint style="info" %}
**How To:** [https://www.osdeploy.com/osbuilder/how-to/import-osmedia](https://www.osdeploy.com/osbuilder/how-to/import-osmedia)
{% endhint %}

## 3. Update an Imported Operating System

> ### Touch Time Required: 1 Minute

> ### Processing Time: 20 - 120 Minutes

```text
Update-OSMedia -DownloadUpdates -Execute
```

{% hint style="info" %}
**Select the OS that was imported in Step 2**

**How To:** [https://www.osdeploy.com/osbuilder/how-to/update-osmedia](https://www.osdeploy.com/osbuilder/how-to/update-osmedia)
{% endhint %}

## 4. Create an OSBuild Task

> ### Touch Time Required: 1 Minute

```text
New-OSBuildTask -TaskName "Win10 x64 Ent 1803" -EnableNetFX3
```

{% hint style="info" %}
**Select the updated OSMedia that was created in Step 3**

**How To:** [https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html](https://www.osdeploy.com/osbuilder/how-to/create-an-osbuild-task.html)

**Video \(No Audio\):** [https://www.youtube.com/watch?v=X5HYlCeENJg](https://www.youtube.com/watch?v=X5HYlCeENJg&t=2s)
{% endhint %}

## 5. Run the OSBuild Task

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 10 - 30 Minutes

```text
Invoke-OSBuilderTask -ExecutionMode Execute
```

{% hint style="info" %}
**Select the OSBuild Task that was created in Step 4**

**How To:** [https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html](https://www.osdeploy.com/osbuilder/how-to/executionmode-execute.html)

**Video \(No Audio\):** [https://www.youtube.com/watch?v=17lYVdD89J0](https://www.youtube.com/watch?v=17lYVdD89J0)
{% endhint %}

## 6. Create an ISO

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 1 - 2 Minutes

```text
New-OSBuilderISO
```

{% hint style="info" %}
**Select the OSBuild that was created in Step 5**

**How To:** [https://www.osdeploy.com/osbuilder/how-to/create-an-iso.html](https://www.osdeploy.com/osbuilder/how-to/create-an-iso.html)
{% endhint %}



