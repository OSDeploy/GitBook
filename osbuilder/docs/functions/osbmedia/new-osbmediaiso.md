# New-OSBMediaISO

## Function

```text
<#
.SYNOPSIS
Creates an ISO of any OSBuilder Media

.DESCRIPTION
Creates an ISO of any OSBuilder Media (OSMedia, OSBuilds, PEBuilds)

.LINK
https://www.osdeploy.com/osbuilder/docs/functions/media/new-osbmediaiso

.PARAMETER FullName
Full Path of the OSBuilder Media
#>
```

```text
[Parameter(ValueFromPipelineByPropertyName)]
[string[]]$FullName
```

## Windows ADK Required

You need to have ADK installed first or you will get a Warning message

![](../../../../.gitbook/assets/2018-10-23_22-38-53.png)

You can download the Windows ADK from the following link

{% embed url="https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install" %}

## OSBuilder Tools

You can optionally copy the amd64 and x86 directories from ADK into OSBuilder\Content\Tools instead of  having ADK installed

![C:\Program Files \(x86\)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools](../../../../.gitbook/assets/2018-10-23_22-44-52.png)

![&amp;lt;OSBuilder SourcePath&amp;gt;\Content\Tools](../../../../.gitbook/assets/2018-10-23_22-46-23.png)

## Select Media

You can multi-select any OSMedia, OSBuild, or PEBuild you want to create an ISO for and press OK

![](../../../../.gitbook/assets/2018-12-30_22-30-11.png)

## Create ISO

The ISO's will automatically be generated

![](../../../../.gitbook/assets/2018-12-30_22-30-36.png)

And saved within an ISO directory of the Media. Enjoy!

![](../../../../.gitbook/assets/2018-10-23_22-58-52.png)



