# New-OSBuildMultiLang

## Usage

{% page-ref page="../../guides/windows-multilang/osbuild-multilang.md" %}

{% page-ref page="../../guides/windows-multilang/osbuild-multilang-test.md" %}

## Comments

```text
<#
.SYNOPSIS
Separates an OSBuild with Language Packs into separate Image Indexes

.DESCRIPTION
Separates an OSBuild with Language Packs into separate Image Indexes.  This will create a new OSBuild

.LINK
http://osdbuilder.com/docs/functions/osbuild/new-osbuildmultilang

.PARAMETER CustomName
Name of the new OSBuild MultiLang to create.  MultiLang will be appended to the end of CustomName
#>
```

## Parameters

```text
[CmdletBinding()]
PARAM (
    [Parameter(Mandatory)]
    [string]$CustomName
)
```

