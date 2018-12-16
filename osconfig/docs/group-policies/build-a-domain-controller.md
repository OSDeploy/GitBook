# Build a Domain Controller

If you do not have rights to create a GPO in Active Directory, or you do not use Active Directory, you can easily build one in a Virtual Machine.

Create a new Virtual Machine without External Network Access \(you don't want to see your Production Network\).  You can add a Network Adapter with 'Internal' to access your PC if necessary

{% hint style="info" %}
[Download a Windows Server 2016 Evaluation Copy](https://www.microsoft.com/en-us/evalcenter/try)
{% endhint %}

### Install Windows Server 2016 Standard \(Desktop Experience\)

Take the Defaults

![Select Windows Server 2016 Standard \(Desktop Experience\)](../../../.gitbook/assets/2018-08-21_11-28-05.png)

### Rename Your Server

Choose a friendly name

![](../../../.gitbook/assets/2018-08-21_11-33-43%20%281%29.png)

### Add Roles and Features

Add Active Directory Domain Services

![](../../../.gitbook/assets/2018-08-21_11-37-26.png)

Group Policy Management Feature should automatically be selected

![](../../../.gitbook/assets/2018-08-21_11-37-35.png)

Promote the server to a domain controller

![](../../../.gitbook/assets/2018-08-21_11-39-12.png)

Add a new forest and specify a Root domain name \(make one up\)

![](../../../.gitbook/assets/2018-08-21_11-39-55.png)

Set the DSRM password

![](../../../.gitbook/assets/2018-08-21_11-40-15.png)

Press Next on the next few screens

![](../../../.gitbook/assets/2018-08-21_11-40-43.png)

![](../../../.gitbook/assets/2018-08-21_11-40-59.png)

![](../../../.gitbook/assets/2018-08-21_11-45-07%20%281%29.png)

![](../../../.gitbook/assets/2018-08-21_11-45-19.png)

Press Install

![](../../../.gitbook/assets/2018-08-21_11-45-49.png)

A Restart will be required to complete the installation

![](../../../.gitbook/assets/2018-08-21_11-48-23.png)



