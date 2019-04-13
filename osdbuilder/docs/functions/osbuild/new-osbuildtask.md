# New-OSBuildTask

## Usage

{% page-ref page="../../basics/new-osbuildtask/" %}

## Get-Help New-OSBuildTask -Detailed

```text
NAME
    New-OSBuildTask
    
SYNOPSIS
    Creates a JSON Task for use with New-OSBuild
    
    
SYNTAX
    New-OSBuildTask -Kind <String> -TaskName <String> [-CustomName <String>] [-EnableNetFX3] 
    [-WinPEAutoExtraFiles] [-RemoveAppx] [-RemoveCapability] [-RemovePackage] [-DisableFeature] 
    [-EnableFeature] [<CommonParameters>]
    
    New-OSBuildTask -Kind <String> -TaskName <String> [-CustomName <String>] [-EnableNetFX3] 
    [-WinPEAutoExtraFiles] [-RemoveAppx] [-RemoveCapability] [-RemovePackage] [-DisableFeature] 
    [-EnableFeature] [-ContentDrivers] [-ContentExtraFiles] [-ContentFeaturesOnDemand] 
    [-ContentPackages] [-ContentScripts] [-ContentStartLayout] [-ContentUnattend] 
    [-ContentWinPEADK] [-ContentWinPEDart] [-ContentWinPEDrivers] [-ContentWinPEExtraFiles] 
    [-ContentWinPEScripts] [-ContentLanguagePackages] [-SetAllIntl <String>] [-SetInputLocale 
    <String>] [-SetSKUIntlDefaults <String>] [-SetSetupUILang <String>] [-SetSysLocale <String>] 
    [-SetUILang <String>] [-SetUILangFallback <String>] [-SetUserLocale <String>] 
    [-SourcesLanguageCopy] [<CommonParameters>]
    
    
DESCRIPTION
    Creates a JSON Task for use with New-OSBuild
    

PARAMETERS
    -Kind <String>
        Task or Template
        
    -TaskName <String>
        Name of the Task to create
        
    -CustomName <String>
        Custom Name of the OSBuild
        
    -EnableNetFX3 [<SwitchParameter>]
        Enables NetFX3 in the OSBuild
        
    -WinPEAutoExtraFiles [<SwitchParameter>]
        Adds WinPE Auto Extra Files
        
    -RemoveAppx [<SwitchParameter>]
        Displays a GridView to select Appx Provisioned Packages to Remove
        
    -RemoveCapability [<SwitchParameter>]
        Displays a GridView to select Windows Capabilities to Remove
        
    -RemovePackage [<SwitchParameter>]
        Displays a GridView to select Windows Packages to Remove
        
    -DisableFeature [<SwitchParameter>]
        Disables an Enabled Windows Optional Feature
        
    -EnableFeature [<SwitchParameter>]
        Enables a Disabled Windows Optional Feature
        
    -ContentDrivers [<SwitchParameter>]
        Select Content Drivers
        
    -ContentExtraFiles [<SwitchParameter>]
        Select Content Extra Files
        
    -ContentFeaturesOnDemand [<SwitchParameter>]
        Select Content FeaturesOnDemand
        
    -ContentPackages [<SwitchParameter>]
        Select Content Packages
        
    -ContentScripts [<SwitchParameter>]
        Select Content Scripts
        
    -ContentStartLayout [<SwitchParameter>]
        Select Content StartLayout
        
    -ContentUnattend [<SwitchParameter>]
        Select Content Unattend
        
    -ContentWinPEADK [<SwitchParameter>]
        Select Content WinPE ADK
        
    -ContentWinPEDart [<SwitchParameter>]
        Select Content WinPE Dart
        
    -ContentWinPEDrivers [<SwitchParameter>]
        Select Content WinPE Drivers
        
    -ContentWinPEExtraFiles [<SwitchParameter>]
        Select Content WinPE ExtraFiles
        
    -ContentWinPEScripts [<SwitchParameter>]
        
    -ContentLanguagePackages [<SwitchParameter>]
        Select Content Language Packages
        
    -SetAllIntl <String>
        Dism SetAllIntl
        
    -SetInputLocale <String>
        Dism SetInputLocale
        
    -SetSKUIntlDefaults <String>
        Dism SetSKUIntlDefaults
        
    -SetSetupUILang <String>
        Dism SetSetupUILang
        
    -SetSysLocale <String>
        Dism SetSysLocale
        
    -SetUILang <String>
        Dism SetUILang
        
    -SetUILangFallback <String>
        Dism SetUILangFallback
        
    -SetUserLocale <String>
        Dism SetUserLocale
        
    -SourcesLanguageCopy [<SwitchParameter>]
        Copy OSMedia Languages into Sources
```

