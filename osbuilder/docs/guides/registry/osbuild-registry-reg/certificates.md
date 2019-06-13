# Certificates

## Fan Request

This Guide is the result of this Tweet from [@Marctwain\_C](https://twitter.com/Marctwain_C) when he first asked me ...

{% embed url="https://twitter.com/Marctwain\_C/status/1083589702362517504" %}

And the additional bugging ...

{% embed url="https://twitter.com/Marctwain\_C/status/1089866104787402752" %}

While I don't have a need for this myself, I am not one to turn down an Offline Servicing challenge, so ...

![](../../../../../.gitbook/assets/image%20%28301%29.png)

## Traditional Certificate Installation

There are four methods for getting Certifications installed on an Enterprise Workstation

1. **Active Directory**
2. **Group Policy**
3. **Certificate File using CertUtil**
4. **OSBuilder**

But since we are talking about OSBuilder, I assume you are looking for a way to install Certificates through Offline Servicing.  Unfortunately the first two methods don't work until the computer is on the Domain, and CertUtil doesn't allow installation to a mounted Windows Image \(neither does DISM\), so we are going to have to work with OSBuilder

## Certificate Stores

Take a quick read about Certificate Stores so I don't have to repeat things too much

{% embed url="https://blogs.msdn.microsoft.com/muaddib/2013/10/18/understanding-and-managing-the-certificate-stores-used-for-smart-card-logon/" %}

If you don't want to read everything, here is the important stuff

![](../../../../../.gitbook/assets/2019-02-06_23-29-15.png)

## Determining Origin

You need to know the method the Certificate was installed, so you can associate it with the proper Registry location.

In Certificates \(certlm\), change the **View Options** to show **Physical certificate stores** 

![](../../../../../.gitbook/assets/2019-02-07_1-05-26.png)

![](../../../../../.gitbook/assets/2019-02-07_1-05-59.png)

Now you can know where you should look in the Registry for the Certificate

![](../../../../../.gitbook/assets/2019-02-07_1-09-28.png)

## Thumbprints

Every Certificate has a Thumbprint.  You need to know the Certificate Thumbprint to find it in the Registry

![](../../../../../.gitbook/assets/2019-02-07_1-11-59.png)

Another method to get the Thumbprint is with PowerShell

```text
Get-ChildItem -Path Cert:\LocalMachine\Root -Recurse
```

![](../../../../../.gitbook/assets/2019-02-07_1-15-18.png)

## The Registry

Once you have found the Thumbprint for your Certificate, search the Registry for the Key.  You may find more than one.  These are the Registry Keys that need to be exported

![](../../../../../.gitbook/assets/2019-02-07_1-19-17.png)

## The OSDeploy Way

Ok, that was alot of work, which is not cool, so just copy the following code into PowerShell

{% embed url="https://gist.github.com/OSDeploy/968ae0c956d360708e56de7c4b263e4d" %}

This script will display all the Certificates in the Registry, allowing you to select the ones you need.  Duplicate entries are in multiple Registry locations, so you need all the ones that match the Thumbprint

![](../../../../../.gitbook/assets/2019-02-07_1-25-35.png)

After you press OK, the Registry Keys will be exported into your %Temp% directory

![](../../../../../.gitbook/assets/2019-02-07_1-27-28.png)

![](../../../../../.gitbook/assets/2019-02-07_1-28-40.png)

Which can then be easily copied into OSBuilder Registry Templates where it will be installed automatically

![](../../../../../.gitbook/assets/2019-02-07_1-30-46.png)

During New-OSBuild, these will be applied automatically.  Here's an example of what you will see

![](../../../../../.gitbook/assets/2019-02-06_2-19-38.png)

