# Amazon AWS Setup

I have Published an OSDrivers Dell Repository on Amazon AWS.  You are free to use this as a Sample, but you will need to have an AWS Account created for Authentication.

**Using OSDrivers is Free, but the Sample OSDrivers Dell Repository has a Storage Cost that am consuming for the time being.  I cannot guarantee it will always remain Free.  I will be looking for Sponsors if the costs become excessive, or it may be necessary for you to add Billing to your Amazon AWS.**

**Please limit your downloads to only what you need.  Thanks!**

---

## Create an AWS Account

Create an AWS Account by completing the following.

[https://portal.aws.amazon.com/billing/signup\#/start](https://portal.aws.amazon.com/billing/signup#/start)

![](/assets/2018-02-05_14-19-40.png)

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

Open PowerShell as Administrator.  Make sure that your Script Execution Policy allows you to install the Module first

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

## OSDrivers Download

You will need to add the OSDriver Module to PowerShell before you can Download the Repository

---

## Install OSDriver PowerShell Module

OSDriver is my PowerShell Module hosted on [PowerShell Gallery](https://www.powershellgallery.com/packages/OSDriver).  You will need to open PowerShell as Administrator and make sure that your Script Execution Policy allows you to install the Module first

```
PS C:\> Install-Module -Name OSDriver
```

---

## Select OSDriver in PowerShell ISE

From PowerShell, to open ISE, enter the following command

```
PS C:\> ISE
```

Make sure you have View &gt; Show Command Add-on enabled.  Then enter OSDriver in the Name.  This should return all the OSDriver Scripts you can use.  Select Get-OSDriverDownloads and then press Show Details.

![](/assets/2018-02-05_14-47-44.png)

---

## Get-OSDriverDownloads

LocalFolder should be a path to save the OSDriver Repository

Check your Include, Exclude, and Pack options and then click the Run button

![](/assets/2018-02-05_14-49-42.png)

The command line that is automatically generated is

```
Get-OSDriverDownloads -LocalFolder D:\OSDrivers -ExcludeWin7 -Excludex86 -IncludeOSDCore -IncludeOSDVideo -PackUSBNetwork
```

After you execute Get-OSDriverDownloads, OSDrivers.vbs will be automatically copied to your LocalFolder.

---

## OSD-Core

If you selected IncludeOSDCore, you will be presented with a listing of all Drivers that apply to you.  Simply select the Drivers you wish to include and press OK

![](/assets/2018-02-05_14-38-22.png)

---

## OSD-Video

Select the Video Drivers you need and press OK

![](/assets/2018-02-05_14-52-08.png)

---

## CORE-Dell

These are the Dell Family Driver Packs.  Simply select the ones that you need and press OK.

![](/assets/2018-02-05_14-55-32.png)

---

## Download Progress

Your selected Drivers will download automatically.

![](/assets/2018-02-05_14-57-10.png)

---

## Complete

When the downloads are finished, you will have a complete OSDriver Repository :\)

