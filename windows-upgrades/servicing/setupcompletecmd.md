# SetupComplete.cmd

C:\ProgramData\OSUpgrade\SetupComplete.cmd

```text
@echo off

::====================================================================================
echo Set My Computer / This PC on Desktop to show This PC %ComputerName%
::====================================================================================
reg add HKLM\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D} /v LocalizedString /t REG_EXPAND_SZ /d "This PC %%ComputerName%%" /f
::====================================================================================
echo.

::====================================================================================
echo Delete OneDrive
::====================================================================================
del %SystemRoot%\System32\OneDriveSetup.exe /F /Q
del %SystemRoot%\SysWOW64\OneDriveSetup.exe /F /Q
echo.

::====================================================================================
echo Remove Contact Support
::====================================================================================
dism.exe /Online /Remove-Capability /CapabilityName:App.Support.ContactSupport~~~~0.0.1.0
dism.exe /Online /Remove-Package /PackageName:Microsoft-Windows-ContactSupport-Package~31bf3856ad364e35~amd64~~10.0.14393.0
echo.

::====================================================================================
echo Remove Appx Packages
::====================================================================================
Set psfile=C:\ProgramData\OSUpgrade\SetupComplete.ps1
if exist %psfile% ( 
   Powershell.exe -ExecutionPolicy Bypass -File %psfile% -WindowStyle Hidden
)
```

