# MDT Task Sequence Test

Fire up your Hyper-V VM and let it boot to WinPE. Run the Deployment Wizard

![](../../.gitbook/assets/2018-08-07_1-25-19.png)

Select the Task Sequence

![](../../.gitbook/assets/2018-08-07_1-33-38.png)

Give it a unique name

![](../../.gitbook/assets/2018-08-07_1-34-09.png)

Begin

![](../../.gitbook/assets/2018-08-07_1-34-40.png)

And let the OS install

![](../../.gitbook/assets/2018-08-07_1-36-54.png)

## Checkpoint

Create a Checkpoint when Notepad opens. Close Notepad and the VM should reboot

![](../../.gitbook/assets/2018-08-07_1-37-53.png)

The VM will restart

![](../../.gitbook/assets/2018-08-07_1-40-13.png)

## OSConfig Sucess!

If everything worked right, PowerShell ISE should open

![](../../.gitbook/assets/2018-08-07_1-48-53.png)

And here is full PowerShell ISE running in the Specialize phase . . . notice the path?

![](../../.gitbook/assets/2018-08-07_1-49-16.png)

Close PowerShell ISE and then press Enter to continue the Deployment process. If you do not see the PowerShell Window, press Alt+Tab

![](../../.gitbook/assets/2018-08-07_2-06-12.png)

And here is the second Notepad step that was added to the Task Sequence. The purpose of adding this is to keep the Deployment Process running. This allows you to save content from the VM to the Deployment Share \(which is why we allow Full Control\)

![](../../.gitbook/assets/2018-08-07_2-12-26.png)

## What's the Point?

You now have a hook in your Task Sequence to apply changes to your OS before first login. You also have VM Snapshot and method to test your customizations repeatedly with minimal effort . . .

Over the next few days, I'll detail how to make customizations to the Logon Screen, Start Layout, Theme, and Local Policies, without using any Reg Hacks. If you are used to adding multiple steps in your Task Sequences to make these changes, those are no longer necessary. If you can script the step in PowerShell, then you can add it to your OSConfig.ps1.

![](../../.gitbook/assets/2018-08-07_2-03-08.png)

