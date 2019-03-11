# Quick Start

**If you don't feel like reading through all the documentation, these three steps will get your Operating System updated with the latest Microsoft Updates**

## 1. Install OSBuilder \(Clean Install\)

> ### Touch Time: 1 Minute

```text
Install-Module -Name OSBuilder -Force
Import-Module -Name OSBuilder -Force
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

