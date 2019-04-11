# OSBuild Test

Congrats!  You now have a properly configured OSBuild with 5 Language Packs.  This OSBuild is suitable for an oranization that deploys a Global Image with a single System UI

Considering this Windows 10 contains 4 additional Languages, the size increase is not that large

![](../../../../.gitbook/assets/image%20%28155%29.png)

## WinSE \(Windows Setup Environment\)

When booting to the ISO, you will be prompted to select a Language.  This is because the Language Resources have been properly added to WinSE.  This Language selection is for WinSE only and will not affect your Windows once the system reboots to the OS.  There are two English selections in this list for en-US and en-GB

![](../../../../.gitbook/assets/image%20%28238%29.png)

Here you can see that you have the ability to select different Languages for Windows Setup.  This is due to the Lang.ini being added to WinSE.  When making a selection on this screen, this will set the default System UI Language, and the OOBE Language.  In this test I have selected en-GB \(English International\)

![](../../../../.gitbook/assets/image%20%28235%29.png)

## OOBE \(Out of Box Experience\)

OOBE will start and automatically select the configuration that was made in WinSE, but this can be changed

![](../../../../.gitbook/assets/image%20%2855%29.png)

I'll change this to France

![](../../../../.gitbook/assets/image%20%2870%29.png)

My Keyboard was automatically selected to United Kingdom

![](../../../../.gitbook/assets/image%20%2814%29.png)

So I'll change this to US

![](../../../../.gitbook/assets/image%20%28193%29.png)

Now I wait ...

![](../../../../.gitbook/assets/image%20%28169%29.png)

## Windows Desktop

So while it did take my France Region that was selected, selecting France did not change my System UI Language

![](../../../../.gitbook/assets/image%20%28136%29.png)

Windows Display Language is set to English \(United Kingdom\)

![](../../../../.gitbook/assets/image%20%28120%29.png)

DISM confirms that the System UI is en-GB

![](../../../../.gitbook/assets/image%20%28203%29.png)

## Windows 10 Upgrade en-GB to en-US

In this example, I have a Windows 10 x64 1803 with en-GB as the System UI Language

![](../../../../.gitbook/assets/image%20%2879%29.png)

I did get a warning that my Language will change if I proceeded with the Upgrade

![](../../../../.gitbook/assets/image%20%28216%29.png)

But it seems that en-GB to en-US \(with an en-GB Language Pack\) will work

![](../../../../.gitbook/assets/image%20%2851%29.png)

## Windows 10 Upgrade fr-FR to en-US

It seems in this case, going from a French installation to English won't work though, and this is why a single Windows Upgrade with Language Packs will not work for Localized installations

![](../../../../.gitbook/assets/image%20%28290%29.png)

