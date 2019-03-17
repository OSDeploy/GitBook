# New-OSDBuilderVHD

## Usage

{% page-ref page="../basics/virtual-hd/create-a-vhd.md" %}

## Help

```text
Get-Help New-OSDBuilderVHD -Full

NAME
    New-OSDBuilderVHD

SYNOPSIS
    Creates an VHD of any OSMedia or OSBuild

SYNTAX
    New-OSDBuilderVHD [[-FullName] <String>] [[-OSDriveLabel] <String>] [[-VHDSizeGB] <Int32>] [<CommonParameters>]

DESCRIPTION
    Creates an VHD of any OSMedia or OSBuild

PARAMETERS
    -FullName <String>
        Full Path of the OSDBuilder Media.  If omitted, GridView will prompt for selection
        
        Required?                    false
        Position?                    1
        Default value                
        Accept pipeline input?       true (ByPropertyName)
        Accept wildcard characters?  false
        
    -OSDriveLabel <String>
        Drive Label for the OS Partition.  Default is OSDisk
        
        Required?                    false
        Position?                    2
        Default value                OSDisk
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -VHDSizeGB <Int32>
        Size of the VHD in GB.  Default is 50
        
        Required?                    false
        Position?                    3
        Default value                50
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216). 
    
INPUTS
    
OUTPUTS
    
NOTES
        Requested by Bruce Sa @BruceSaaaa and Alan Yousif @Green17Mr
        Thanks to Bruce Sa for testing
        Thanks to Mikael Nystrom for this post
        https://deploymentbunny.com/2013/12/19/powershell-is-king-convert-wim-to-vhdvhdx-with-support-for-gen-1-and-gen-2-biosuefi-and-then-some/

RELATED LINKS
    https://www.osdeploy.com/osdbuilder/docs/functions/new-osdbuildervhd
```



