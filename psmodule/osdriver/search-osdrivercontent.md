# Search-OSDriverContent

Detailed documentation and screenshots coming soon

```
<#
.SYNOPSIS
	Searches in INF files for a text string
.DESCRIPTION
	Searches in INF files for a text string
.PARAMETER Path
	Directory to search for INF files
.PARAMETER Files
	Files to Include.  Default is *.inf
.PARAMETER FindText
	Text string to search
.EXAMPLE
	Search-OSDriverContent -Path C:\DeploymentShare\OSDrivers -FindText "VEN_8086&DEV_1902"
	Searches in all INF files for "VEN_8086&DEV_1902".  Results in Gridview
.EXAMPLE
	Search-OSDriverContent -Path C:\DeploymentShare\OSDrivers -Files *.txt -FindText "VEN_8086&DEV_1902"
	Searches in all TXT files for "VEN_8086&DEV_1902".  Results in Gridview
.NOTES
        NAME:	Search-OSDriverContent.ps1
		AUTHOR:	David Segura, david@segura.org
		BLOG:	http://www.osdeploy.com
        CREATED:	02/07/2018
        VERSION:	1.0.7.1
#>
```



