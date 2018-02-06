# AWS Setup

You can download OSDrivers with PowerShell with a few steps. OSDrivers is hosted on Amazon AWS S3 and you will need to create an AWS Account in order to Download.

---

## Create an AWS Account

Create an AWS Account by completing the following.

[https://portal.aws.amazon.com/billing/signup\#/start](https://www.gitbook.com/book/segura/osdeploy/edit)

**Using OSDrivers is Free, and the Amazon AWS Account is free as well. I will be hosting Driver CAB files on AWS and depending on the costs that I incur for your downloads, I cannot guarantee it will always remain Free. I will be looking for Sponsors if the costs become excessive, or it may be necessary for you to add Billing to your Amazon AWS.**

**Please limit your downloads to only what you need. Thanks!**

---

## Generate Access Keys

Once you have created your AWS Account, you can Generate Access Keys

[https://console.aws.amazon.com/iam/home?\#/security\_credential](https://www.gitbook.com/book/segura/osdeploy/edit)

Create New Access Key to generate an Access Key ID and a Secret Access Key. Save these numbers!

**AWS Reference:** [https://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html](#)

---

Install AWS Tools for PowerShell

Open PowerShell as Administrator. Make sure that your Script Execution Policy allows you to install the Module first

PS C:\&gt; Install-Module -Name AWSPowerShell

**AWS Reference:** [https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-windows.html](#)

---

Configure AWS Account and Access Key

Once the AWSPowerShell module is installed, save your Amazon AWS Keys in PowerShell

PS C:\&gt; Set-AWSCredential -AccessKey &lt;Access Key ID&gt; -SecretKey &lt;Secret Access Key&gt; -StoreAs default

**AWS Reference:** [https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html](#)

