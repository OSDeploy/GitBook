# SetupComplete.ps1

C:\ProgramData\OSUpgrade\SetupComplete.cmd\SetupComplete.ps1

```text
$AppsList = "Microsoft.3DBuilder",
            "Microsoft.BingWeather",
            "Microsoft.ConnectivityStore",
            #"Microsoft.DesktopAppInstaller",
            #"Microsoft.Getstarted",
            "Microsoft.Messaging",
            "Microsoft.Microsoft3DViewer",
            "Microsoft.MicrosoftOfficeHub",
            "Microsoft.MicrosoftSolitaireCollection",
            #"Microsoft.MicrosoftStickyNotes",
            "Microsoft.Office.OneNote",
            "Microsoft.OneConnect",
            "Microsoft.People",
            "Microsoft.SkypeApp",
            #"Microsoft.StorePurchaseApp",
            "Microsoft.Wallet",
            "Microsoft.Windows.Photos",
            #"Microsoft.WindowsAlarms",
            #"Microsoft.WindowsCalculator",
            #"Microsoft.WindowsCamera",
            "microsoft.windowscommunicationsapps",
            "Microsoft.WindowsFeedbackHub",
            #"Microsoft.WindowsMaps",
            #"Microsoft.WindowsSoundRecorder",
            #"Microsoft.WindowsStore",
            "Microsoft.XboxApp",
            "Microsoft.XboxGameOverlay",
            "Microsoft.XboxIdentityProvider",
            "Microsoft.XboxSpeechToTextOverlay",
            "Microsoft.ZuneMusic",
            "Microsoft.ZuneVideo"

ForEach ($App in $AppsList)
    {
        $PackageFullName = (Get-AppxPackage $App).PackageFullName
        $ProPackageFullName = (Get-AppxProvisionedPackage -online | where {$_.Displayname -eq $App}).PackageName
        write-host $PackageFullName
        Write-Host $ProPackageFullName
        if ($PackageFullName)
            {
                Write-Host "Removing Package: $App"
                Remove-AppxPackage -package $PackageFullName
            }
        else
            {
                Write-Host "Unable to find package: $App"
            }
        if ($ProPackageFullName)
            {
                Write-Host "Removing Provisioned Package: $ProPackageFullName"
                Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
            }
        else
            {
                Write-Host "Unable to find provisioned package: $App"
            }
    }
```

## Reference

| Windows 10 Creators Update 1703 Cleanup Script |
| :--- |
| [http://joseespitia.com/2017/08/01/windows-10-creators-update-1703-cleanup-script/](http://joseespitia.com/2017/08/01/windows-10-creators-update-1703-cleanup-script/) |

