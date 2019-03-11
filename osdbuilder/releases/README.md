# Releases

## Install OSDBuilder PowerShell Module

{% hint style="warning" %}
**You have some different options here.  Choose wisely**
{% endhint %}

### Install OSDBuilder \(Clean Install\)

```text
Install-Module -Name OSDBuilder -Force
Import-Module -Name OSDBuilder -Force
```

### Update OSDBuilder to Latest Version

```text
OSDBuilder -Update
```

### Upgrade from OSBuilder

```text
#Remove OSBuilder First
Uninstall-Module -Name OSBuilder -AllVersions -Force
#Install OSDBuilder
Install-Module -Name OSDBuilder -Force
Import-Module -Name OSDBuilder -Force
```

## OSDBuilder 19.3.10 \(March 10, 2019\) Beta

Final testing for March Patch Tuesday release

## OSDBuilder 19.3.9 \(March 9, 2019\) Beta

{% hint style="info" %}
**Some Functions and Parameters have been renamed for consistency**
{% endhint %}

* Get-OSBuilds
* **Get-OSDBuilder**
  * **Replaces Get-OSBuilder**
* **Get-OSDBuilderDownloads**
* Get-OSMedia
* Get-PEBuilds
* Import-OSMedia
* New-OSBuild
* New-OSBuildTask
* **New-OSDBuilderISO**
* **New-OSDBuilderUSB**
* New-PEBuild
* New-PEBuildTask
* **Show-OSDBuilderInfo**
* Update-OSMedia

