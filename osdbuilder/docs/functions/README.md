# Functions

There are several OSDBuilder functions, and they are grouped by commonality

## Main

* **\`\`**[**`Get-OSDBuilder`**](main/get-OSDBuilder/)**\`\`**
  * Primary function used to define common variables

{% page-ref page="main/" %}

## OSBMedia Functions

These functions are commonly shared between all the other OSDBuilder Functions

* **\`\`**[**`New-MediaISO`**](osbmedia/new-osbmediaiso.md)**\`\`**
  * Creates a bootable ISO of any OSDBuilder Media
* **\`\`**[**`New-MediaUSB`**](osbmedia/new-osbmediausb.md)**\`\`**
  * Creates a bootable USB of any OSDBuilder Media
* **\`\`**[**`Show-MediaInfo`**](osbmedia/show-osbmediainfo.md)**\`\`**
  * Returns detailed information about any OSDBuilder Media

{% page-ref page="osbmedia/" %}

## OSBUpdate Functions

* **\`\`**[**`Get-OSBUpdate`**](osbupdate/get-osbupdate.md)**\`\`**
  * Downloads OSDBuilder Update Catalogs and Microsoft Updates
* **\`\`**[**`New-OSBUpdate`**](osbupdate/new-osbupdate.md)**\`\`**
  * Creates a custom OSDBuilder Update Catalog

{% page-ref page="osbupdate/" %}

## OSMedia Functions

* **\`\`**[**`Get-OSMedia`**](osmedia/get-osmedia.md)**\`\`**
  * Returns a PowerShell Custom Object containing detailed OSMedia information
* **\`\`**[**`Import-OSMedia`**](osmedia/import-osmedia/)**\`\`**
  * Imports an ISO into OSMedia
* **\`\`**[**`Update-OSMedia`**](osmedia/update-osmedia/)**\`\`**
  * Applies the latest Microsoft Updates to an OSMedia

{% page-ref page="osmedia/" %}

## OSBuild Functions

* **\`\`**[**`New-OSBuildTask`**](osbuild/new-osbuildtask/)**\`\`**
  * Creates a custom OSBuild configuration \(JSON\)
* **\`\`**[**`New-OSBuild`**](osbuild/new-osbuild.md)**\`\`**
  * Executes a custom OSBuild configuration created with New-OSBuildTask

{% page-ref page="osbuild/" %}

## PEBuild Functions

* **\`\`**[**`New-PEBuildTask`**](pebuild/new-pebuildtask/)**\`\`**
  * Creates a custom PEBuild configuration \(JSON\)
* **\`\`**[**`New-PEBuild`**](pebuild/new-pebuild.md)**\`\`**
  * Executes a custom PEBuild configuration created with New-PEBuildTask

{% page-ref page="pebuild/" %}

## Maintenance Functions

* **Rename-OSMedia**
  * Renames existing OSMedia to **Current** Format
* \*\*\*\*[**Repair-OSBuildTask**](maintenance/repair-osbuildtask.md)\*\*\*\*
  * Repairs an existing OSBuild Task to the **Current** Version
* **Repair-PEBuildTask**
  * Repairs an existing PEBuild Task to the **Current** version

{% page-ref page="maintenance/" %}



