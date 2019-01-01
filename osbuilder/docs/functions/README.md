# Functions

There are several OSBuilder functions, and they are grouped by commonality

## OSBuilder Functions

These functions are commonly shared between all the other OSBuilder Functions

* **\`\`**[**`Get-OSBuilder`**](osbuilder/get-osbuilder/)**\`\`**
  * Primary function used to define common variables
* **\`\`**[**`Show-OSBinfo`**](osbuilder/show-osbinfo.md)**\`\`**
  * Returns detailed information about any OSBuilder Media
* **\`\`**[**`New-OSBiso`**](osbuilder/new-osbiso.md)**\`\`**
  * Creates a bootable ISO of any OSBuilder Media
* **\`\`**[**`New-OSBusb`**](osbuilder/new-osbusb.md)**\`\`**
  * Creates a bootable USB of any OSBuilder Media

{% page-ref page="osbuilder/" %}

## Updates Functions

* **\`\`**[**`Get-OSBUpdate`**](updates/get-osbupdate.md)**\`\`**
  * Downloads OSBuilder Update Catalogs and Microsoft Updates
* **\`\`**[**`New-OSBUpdate`**](updates/new-osbupdate.md)**\`\`**
  * Creates a custom OSBuilder Update Catalog

{% page-ref page="updates/" %}

## OSMedia Functions

* **\`\`**[**`Get-OSMedia`**](osmedia/get-osmedia.md)**\`\`**
  * Returns a PowerShell Custom Object containing detailed OSMedia information
* **\`\`**[**`Import-OSMedia`**](osmedia/import-osmedia/)**\`\`**
  * Imports an ISO into OSMedia
* **\`\`**[**`Update-OSMedia`**](osmedia/update-osmedia/)**\`\`**
  * Applies the latest Microsoft Updates to an OSMedia

{% page-ref page="osmedia/" %}

## OSBuild Functions

* **\`\`**[**`Get-OSBuild`**](osbuild/get-osbuild.md)**\`\`**
  * Returns a PowerShell Custom Object containing detailed OSBuild information
* **\`\`**[**`New-OSBuildTask`**](osbuild/new-osbuildtask/)**\`\`**
  * Creates a custom OSBuild configuration \(JSON\)
* **\`\`**[**`New-OSBuild`**](osbuild/new-osbuild.md)**\`\`**
  * Executes a custom OSBuild configuration created with New-OSBuildTask

{% page-ref page="osbuild/" %}

## PEBuild Functions

* **\`\`**[**`Get-PEBuild`**](pebuild/get-pebuild.md)**\`\`**
  * Returns a PowerShell Custom Object containing detailed PEBuild information
* **\`\`**[**`New-PEBuildTask`**](pebuild/new-pebuildtask/)**\`\`**
  * Creates a custom PEBuild configuration \(JSON\)
* **\`\`**[**`New-PEBuild`**](pebuild/new-pebuild.md)**\`\`**
  * Executes a custom PEBuild configuration created with New-PEBuildTask

{% page-ref page="pebuild/" %}

