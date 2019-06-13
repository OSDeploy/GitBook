# Windows 10 Upgrade MultiLang \(Uno\)

I'll start by saying that working with multiple languages is a pain.  I don't use MultiLang in my Enterprise, so I don't have much experience, but I do like to solve problems.  Secondly, this is not a solution, but a workaround.

## The Issue

Global organizations can deploy Windows 10 in a variety of different \(Setup\) Languages.  This causes a problem when it comes time to deploy Feature Updates, as the Windows 10 Upgrade must be in the same Language as the System UI.

This means that a system that was installed with Windows 10 fr-FR, must be upgraded with Windows 10 fr-FR, Language Packs won't cut it.

[**Anton Romanyuk**](https://twitter.com/admiraltolwyn) worked on this problem by booting to WinPE and changed the System UI there

{% embed url="https://www.vacuumbreather.com/index.php/blog/item/31-mastering-windows-10-language-packs" caption="Change Language in WinPE" %}

While [**Dawn Wertz**](https://twitter.com/wertzdm3) made separate images for each language

{% embed url="https://configgirl.com/2019/03/24/servicing-windows-10-when-multiple-languages-are-installed/" caption="Separate Language Media" %}

## The Workaround

The remainder of this document will detail the Workaround, and it has a simple premise.  Change the default System UI BEFORE you need to do a Windows 10 Feature Update

## Windows 10 fr-FR

In this case, I am starting with Windows 10 1803 fr-FR and no Language Packs installed

![](../../.gitbook/assets/image%20%28349%29.png)

I've installed Notepad++ as a control to make sure that this is an Upgrade and not a Refresh

![](../../.gitbook/assets/image%20%28259%29.png)

I'll start Windows 10 Setup en-US.  I have disabled the Network on this VM to ensure I don't get any random interference

![](../../.gitbook/assets/image%20%2873%29.png)

Failure.  Unfortunately this won't work because the Default System UI Language \(fr-FR\) does not match the Operating System I am trying to install \(en-US\)

![](../../.gitbook/assets/image%20%289%29.png)

## Windows 10 en-GB

Let's switch gears to an English installation ... same problem, we can't upgrade with en-US if our install is en-GB, but here is the trick.  **If the Windows installation contains the en-US Language Pack, a simple Registry Change and a Reboot is all that is needed.  In this case I have changed the InstallLanguage to 0409 which is en-US**

```text
HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Nls\Language
```

![](../../.gitbook/assets/image%20%28143%29.png)

And now I'll be able to upgrade Windows en-GB to Windows en-US

![](../../.gitbook/assets/image%20%285%29.png)

![](../../.gitbook/assets/image%20%2899%29.png)

Upgrading ...

![](../../.gitbook/assets/image%20%28167%29.png)

## Conclusion

Its quite possible to upgrade any Windows 10 as long as you have the target Language Pack installed and enabled in the Registry.  Some things to note:

* **Changing to a different System UI will not change the language for Windows Store Apps, etc.  You must allow your computers to talk to Windows Store to obtain the appropriate Language Resources as they will be in your new Base Language only**
* **The Language Pack for the existing Language must be added to your new Install.wim**
* **You should restore the Registry Keys back after the Upgrade is complete**

**This was just a practical workaround to prevent changing the System UI in WinPE, and to keep from maintaining multiple images.  I'll share Windows 10 Upgrade MultiLang \(Deux\) in the next few days**

