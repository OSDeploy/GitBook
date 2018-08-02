# OSBuild WinPE Scripts

OSBuilder 18.8.2 allows you the ability to execute scripts during the an OSBuild Task before WinPE is dismounted.

Add a PowerShell script to your C:\OSBuilder\Content\WinPE\Scripts directory.  Once you have content in this directory, you will be prompted to select it when creating a new **OSBuild Task**.  You can optionally select one or more PowerShell scripts to execute in each of the different WinPE's \(Setup, WinPE, and WinRE\)

![](../../.gitbook/assets/2018-08-01_22-27-46.png)

In the example above, I have created a script to stop actions until I press Enter.  This allows me to validate things before the WinPE WIMs are dismounted.

```text
[void](Read-Host 'Press Enter to continue')
```

During **Invoke-OSBuilder** when running the **OSBuild Task**, the selected scripts will execute before the WinPE WIMs are dismounted.  Let me know what you create!

![](../../.gitbook/assets/2018-08-02_1-39-06.png)

