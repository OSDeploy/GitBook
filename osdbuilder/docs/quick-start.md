# Quick Start

{% hint style="info" %}
**The Quick Start only details how to create an Updated OS.  For Customizations, you need to read further in the documentation**
{% endhint %}

## 1. Install OSDBuilder \(Clean Install\)

> ### Touch Time: 1 Minute

```text
Install-Module -Name OSDBuilder -Force
Import-Module -Name OSDBuilder -Force
```

{% page-ref page="basics/installation.md" %}

## 2. Import an Operating System

> ### Touch Time: 1 Minute
>
> ### Processing Time:  8 - 15 Minutes

```text
Import-OSMedia
```

{% page-ref page="basics/import-an-os.md" %}

## 3. Update an Imported Operating System

> ### Touch Time:  1 Minute
>
> ### Processing Time:  20-120 Minutes

```text
Update-OSMedia -DownloadUpdates -Execute
```

{% page-ref page="basics/update-an-os.md" %}

