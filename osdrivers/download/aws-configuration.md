# AWS Configuration

Before downloading OSDrivers, you will need to create an Amazon AWS Account





---

[https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-windows.html](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-getting-set-up-windows.html)

## Install AWS Tools for PowerShell

You must enable Script Execution Policy to 

```
PS C:\> Install-Module -Name AWSPowerShell
```

---

[https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html)

## Configure AWS Account and Access Key

Example

```
PS C:\> Set-AWSCredential -AccessKey AKIAIOSFODNN7EXAMPLE -SecretKey wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY -StoreAs default
```

End





