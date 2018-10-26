# Quick Instructions

If you don't feel like reading through all the documentation, here are the quick instructions in 6 steps. These steps can be completed in about 6 **minutes of Touch Time, and 39 - 167 minutes of Processing Time**

## 1. Install OSBuilder

> ### Touch Time:  1 Minute

```text
Install-Module -Name OSBuilder -Scope CurrentUser
```

{% hint style="info" %}
**How To:**  [**Installation and Requirements**](installation.md)\*\*\*\*
{% endhint %}

## 2. Import an Operating System

> ### Touch Time:  1 Minute
>
> ### Processing Time:  8 - 15 Minutes

```text
Import-OSMedia
```

{% hint style="info" %}
**How To:**  [**`Import-OSMedia`**](osmedia/import-osmedia/)**\`\`**
{% endhint %}

## 3. Update an Imported Operating System

> ### Touch Time:  1 Minute
>
> ### Processing Time:  20-120 Minutes

```text
Update-OSMedia -DownloadUpdates -Execute
```

{% hint style="info" %}
**Select the OSMedia that was Imported in \#2**

**How To:**  [**`Update-OSMedia`**](osmedia/update-osmedia/)**\`\`**
{% endhint %}

## 4. Create a New OSBuild Task

> ### Touch Time Required: 1 Minute

```text
New-OSBuildTask -TaskName "Win10 x64 Ent 1809" -EnableNetFX3
```

{% hint style="info" %}
**Select the OSMedia that was Updated in \#3**

**How To:**  [**`New-OSBuildTask`**](osbuild/new-osbuildtask/)**\`\`**
{% endhint %}

## 5. Create a New OSBuild

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 10 - 30 Minutes

```text
New-OSBuild -DownloadUpdates -Execute
```

{% hint style="info" %}
**Select the OSBuild Task that was created in \#4**

**How To:** [**`New-OSBuild`**](osbuild/new-osbuild.md)**\`\`**
{% endhint %}

## 6. Create a Media ISO

> ### Touch Time Required: 1 Minute
>
> ### Processing Time: 1 - 2 Minutes

```text
New-MediaISO
```

{% hint style="info" %}
**Select the OSBuild that was created in \#5**

**How To:**  [**`New-MediaISO`**](how-to/new-mediaiso.md)**\`\`**
{% endhint %}



