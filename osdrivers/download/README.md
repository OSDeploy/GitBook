# AWS Setup

You can download OSDrivers with PowerShell with a few steps.  OSDrivers is hosted on Amazon AWS S3 and you will need to create an AWS Account in order to Download.

---

## Create an AWS Account

Create an AWS Account by completing the following.

[https://portal.aws.amazon.com/billing/signup\#/start](https://portal.aws.amazon.com/billing/signup#/start)

![](/assets/2018-02-05_14-19-40.png)

**Using OSDrivers is Free, and the Amazon AWS Account is free as well.  I will be hosting Driver CAB files on AWS and depending on the costs that I incur for your downloads, I cannot guarantee it will always remain Free.  I will be looking for Sponsors if the costs become excessive, or it may be necessary for you to add Billing to your Amazon AWS.**

**Please limit your downloads to only what you need.  Thanks!**

---

[https://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html](https://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html)

## Generate Access Keys

Once you have created your AWS Account, you can Generate Access Keys

[https://console.aws.amazon.com/iam/home?\#/security\_credential](https://console.aws.amazon.com/iam/home?#/security_credential)

Create New Access Key to generate an Access Key ID and a Secret Access Key.  Save these numbers!

![](/assets/2018-02-05_14-23-31.png)

---

[https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-windows.html](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-windows.html)

## Install AWS Tools for PowerShell

Open PowerShell as Administrator.  Make sure that your Script Execution Policy allows you to install the Module before proceeding

```
PS C:\> Install-Module -Name AWSPowerShell
```

---

[https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html)

## Configure AWS Account and Access Key

Once the AWSPowerShell module is installed, save your Amazon AWS Keys in PowerShell

```
PS C:\> Set-AWSCredential -AccessKey <Access Key ID> -SecretKey <Secret Access Key> -StoreAs default
```

---

## Install OSDriver PowerShell Module

OSDriver is my PowerShell Module hosted on [PowerShell Gallery](https://www.powershellgallery.com/packages/OSDriver)

```
PS C:\> Install-Module -Name OSDriver
```

---

## Find OSDriver in PowerShell ISE

From PowerShell, simply enter ISE

Make sure you have View &gt; Show Command Add-on enabled.  Then enter OSDriver in the Name.  This should return all the OSDriver Scripts you can use.

---

## Get-OSDriverDownloads

Select Get-OSDriverDownloads

LocalFolder should be a path to save the OSDriver Repository

Check your Include, Exclude, and Pack options and then Run.  The command line that is automatically generated is

```
Get-OSDriverDownloads -LocalFolder D:\OSDrivers -ExcludeWin7 -Excludex86 -IncludeOSDCore -IncludeOSDVideo -PackUSBNetwork
```

After you execute Get-OSDriverDownloads, OSDrivers.vbs will be automatically copied to your LocalFolder.

If you selected IncludeOSDCore, you will be presented with a listing of all Drivers that apply to you.  Simply select the Drivers you wish to include and press OK

![](/assets/2018-02-05_14-38-22.png)

