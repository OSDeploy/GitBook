# New-OSDriverCAB

Used to create CAB files from a given Path, or make CAB files from the subdirectories of the given Path

![](../../.gitbook/assets/2018-02-18_0-34-32.png)

## -Path

The directory you want to convert to a CAB

## -HighCompression

By default MSZIP is used for making the CAB file. If you want to use LZX to create a smaller CAB \(takes longer\) you have this option by enabling this switch.

## -MakeCABsFromSubDirs

Selecting this switch will make CAB files from the Subdirectories of the Path that was entered. This comes in handy if you want to convert all your Model Drivers in to Model Driver CABs.

