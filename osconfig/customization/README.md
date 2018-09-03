# Components

This section will detail the Components of OSConfig and how they work . . . 

## OSConfig.ps1

This is the Main script that kicks everything off in the following steps

#### Relocate OSConfig

If OSConfig.ps1 is not executed from C:\ProgramData\OSConfig\\*, it will be coped there automatically

#### Log Environment Variables

Environment Variables will be logged and saved in the OSConfig Transcript

#### Increase Screen Buffer Size

When running OSConfig in the OOBE Phase, there are no defaults set for PowerShell Console.  A default will be added to allow for extended scrolling

#### Execute Child-Items

The Main part of OSConfig.ps1 is to search for all subdirectories and to execute all PowerShell scripts that exist in the root of the subdirectories.  These can be anything you want . . . the choice is up to you.  I have included some of the customizations that I run to help you get a head start.

