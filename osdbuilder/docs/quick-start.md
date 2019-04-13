# Quick Start

{% hint style="info" %}
**The Quick Start only details how to create an Updated OS.  To create a custom Build, you need to read through the Basics**
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

{% page-ref page="basics/import-osmedia/" %}

## 3. Update an Imported Operating System

> ### Touch Time:  1 Minute
>
> ### Processing Time:  20-120 Minutes

```text
Update-OSMedia -Download -Execute
```

{% page-ref page="basics/update-osmedia/" %}

