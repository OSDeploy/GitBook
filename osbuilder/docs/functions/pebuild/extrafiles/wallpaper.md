# Wallpaper

Looking to add some color to WinPE?  Simply add your Wallpaper as ExtraFiles making sure that your wallpaper will overwrite the ones in WinPE \(Windows\System32\).  Your Wallpaper should be 1024 x 768.  WinPE will stretch the Wallpaper, so I recommend using a SOLID color.

You will need to create files to replace the following files

```text
Windows\System32\setup.bmp
Windows\System32\winpe.bmp
Windows\System32\winpe.jpg
Windows\System32\winre.jpg
```

Make sure you place your files in the following directory structure \(modify path as needed\)

```text
C:\OSBuilder\Content\WinPE\ExtraFiles\Wallpaper Name\Windows\System32\setup.bmp
C:\OSBuilder\Content\WinPE\ExtraFiles\Wallpaper Name\Windows\System32\winpe.bmp
C:\OSBuilder\Content\WinPE\ExtraFiles\Wallpaper Name\Windows\System32\winpe.jpg
C:\OSBuilder\Content\WinPE\ExtraFiles\Wallpaper Name\Windows\System32\winre.jpg
```

![](../../../../../.gitbook/assets/2018-10-17_15-53-31.png)

When creating your New-PEBuildTask, select the Wallpaper Directory when prompted to add WinPE Extra Files

![](../../../../../.gitbook/assets/2018-10-17_15-51-56.png)

## Sample Content

You can clone my OSBuilder Public Repository and copy the files in Content\WinPE\ExtraFiles

{% embed url="https://github.com/OSDeploy/OSBuilder.Public" %}

## Examples

![Default Emptiness](../../../../../.gitbook/assets/2018-10-16_2-45-14.png)

![Wallpaper Blue](../../../../../.gitbook/assets/2018-10-17_15-35-56.png)

![Wallpaper Blue Win10](../../../../../.gitbook/assets/2018-10-17_15-36-03.png)

![Wallpaper Blue PowerShell](../../../../../.gitbook/assets/2018-10-17_15-40-06.png)

