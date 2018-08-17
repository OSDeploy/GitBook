# OS Local Repository

Before getting too far ahead of things, you need to have a Local Repository for files that will reside on your Operating System.  This is where you will place your customizations.

### Use ProgramData

You may think that placing your files in a customized directory in Windows is a safe bet, but in reality, this is the worst place you can put your files.  During an OS Upgrade, these files will now be relocated in C:\Windows.old

I place all my files in C:\ProgramData\OSConfig as the contents will NOT get relocated by Windows Feature Updates

### OSConfig Files

In this guide, I will be placing customized files in C:\ProgramData\OSConfig.  The additional benefit is that you will be organized instead of placing files randomly throughout the OS.

Here is a list of files that I use and the saved locations:

| **File** | **Path** |
| :--- | :--- |
| App Association File | C:\ProgramData\OSConfig\Applications\AppAssoc.xml |
| Lock Screen | C:\ProgramData\OSConfig\Background\LockScreen.jpg |
| Wallpaper | C:\ProgramData\OSConfig\Background\Wallpaper.jpg |
| Misc. Content | C:\ProgramData\OSConfig\Content\\* |
| Group Policy Files | C:\ProgramData\OSConfig\GroupPolicy |
| [LGPO Tool](https://www.microsoft.com/en-us/download/details.aspx?id=55319) | C:\ProgramData\OSConfig\LGPO\LGPO.exe |
| Start Layout | C:\ProgramData\OSConfig\Start\StartLayout.xml |
| Theme | C:\ProgramData\OSConfig\Theme\Custom.theme |
| Utility Scripts | C:\ProgramData\OSConfig\Utility\\*.ps1 |



