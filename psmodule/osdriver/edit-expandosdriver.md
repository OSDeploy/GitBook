# Edit-ExpandOSDriver

Detailed documentation and screenshots coming soon

```
<#
.SYNOPSIS
	Optionally expands compressed drivers.  Optionally removes Nvidia Driver junk
.DESCRIPTION
	Optionally expands compressed drivers.  Optionally removes Nvidia Driver junk
.PARAMETER Path
	Directory containing Drivers
.PARAMETER ExpandCompressedFiles
	Expands compressed files *.bi,*.cf,*.cp,*.dl,*.ex,*.hl,*.pd,*.sy,*.tv,*.xm
.PARAMETER RemoveNvidiaJunk
	Removes directories named Display.NView, Display.Optimus, Display.Update, DisplayDriverCrashAnalyzer, GFExperience, GFExperience.NvStreamSrv, MSVCRT, nodejs, NV3DVision, NvBackend, NvCamera, NvContainer, NVI2, NvTelemetry, NVWMI, PhysX, ShadowPlay, Update.Core
.EXAMPLE
	Edit-ExpandOSDriver -Path C:\OSDrivers\Nvidia -ExpandCompressedFiles -RemoveNvidiaJunk
.NOTES
        NAME:	Edit-ExpandOSDriver.ps1
		AUTHOR:	David Segura, david@segura.org
		BLOG:	http://www.osdeploy.com
        CREATED:	02/07/2018
        VERSION:	1.0.7.1
#>
```



