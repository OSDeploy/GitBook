# Customizing the Lock and Logon Background

If you don't want the random Windows Lock and Logon background, you are going to have make some simple changes

![](/assets/2018-05-25_14-28-53.png)

---

## Background

Create a Background directory and download a copy of Background.ps1 and place it in the Background directory

[https://github.com/OSDeploy/OSConfig/blob/master/Background/Background.ps1](https://github.com/OSDeploy/OSConfig/blob/master/Background/Background.ps1)

Create a LockScreen.jpg.  I prefer a solid color, with a resolution of 1980 x 1200px for the JPG.  You can make a copy of LockScreen.jpg and name it BackgroundDefault.jpg if you also deploy Windows 7.  The Background.bmp should be 1024 x 768px and can be used for customizing WinPE.

![](/assets/2018-06-05_1-02-55.png)

**Reference Files:** [https://github.com/OSDeploy/OSConfig/tree/master/Background](https://github.com/OSDeploy/OSConfig/tree/master/Background)

---

## After

![](/assets/2018-05-25_14-05-08.png)

---

## Script Nitty Gritty

Here is a snipped from the Background.ps1 script that sets the Lock and Logon Screen Background.  Edit as needed, but pay attention to the LGPO lines . . .

    #======================================================================================
    # Lock and Logon Screen Background
    #======================================================================================
    if ($ProductName -like "*Windows 10*") {
        if (Test-Path "$PSScriptRoot\LockScreen.jpg") {
            #Apply Policy using LGPO
            if ($(Test-Path "$env:ProgramData\OSConfig\LGPO\LGPO.exe") -and $(Test-Path "$PSScriptRoot\LockScreen.txt")){
                Write-Host "Applying LGPO "$PSScriptRoot\LockScreen.txt"" -ForegroundColor Cyan
                Start-Process "$env:ProgramData\OSConfig\LGPO\LGPO.exe" -ArgumentList "/t `"$PSScriptRoot\LockScreen.txt`"" -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue
            } else {

                Write-Host ""
                $RegChange = 'add HKLM\Software\Policies\Microsoft\Windows\System /v DisableLogonBackgroundImage /t REG_DWORD /d 1 /f'
                Write-Host "reg $RegChange" -ForegroundColor Green
                Start-Process reg -ArgumentList $RegChange -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

                Write-Host ""
                $RegChange = 'add HKLM\Software\Policies\Microsoft\Windows\Personalization /v LockScreenImage /t REG_SZ /d "%ProgramData%\OSConfig\Background\LockScreen.jpg" /f'
                Write-Host "reg $RegChange" -ForegroundColor Green
                Start-Process reg -ArgumentList $RegChange -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue

                Write-Host ""
                $RegChange = 'add HKLM\Software\Policies\Microsoft\Windows\Personalization /v NoChangingLockScreen /t REG_DWORD /d 1 /f'
                Write-Host "reg $RegChange" -ForegroundColor Green
                Start-Process reg -ArgumentList $RegChange -Wait -WindowStyle Hidden -ErrorAction SilentlyContinue
            }
        }
    }



