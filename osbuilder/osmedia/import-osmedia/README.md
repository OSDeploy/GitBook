# Import-OSMedia

## Parameters

{% tabs %}
{% tab title="Basic" %}
* **\[switch\] NewMediaISO**
* **\[switch\] ShowOSInfo**
* **\[switch\] UpdateOSMedia**
{% endtab %}

{% tab title="Advanced" %}
* **\[string\] EditionId**
* **\[int\] ImageIndex**
* **\[string\] ImageName**
* **\[switch\] NewMediaISO**
* **\[switch\] ShowOSInfo**
* **\[switch\] SkipGridView**
* **\[switch\] UpdateOSMedia**
{% endtab %}
{% endtabs %}

## Usage

{% tabs %}
{% tab title="Basic" %}
* -**NewMediaISO**
  * Executes New-MediaISO -OSMediaPath $OSMediaPath to creates an ISO after Import
* -**ShowOSInfo**
  * Executes Show-OSInfo -OSMediaPath $OSMediaPath to display the OS Information after Import
* -**UpdateOSMedia**
  * Executes Update-OSMedia -OSMediaName $OSMediaName -DownloadUpdates -Execute after Import
{% endtab %}

{% tab title="Advanced" %}
* -**NewMediaISO**
  * Executes New-MediaISO -OSMediaPath $OSMediaPath to creates an ISO after Import
* -**ShowOSInfo**
  * Executes Show-OSInfo -OSMediaPath $OSMediaPath to display the OS Information after Import
* -**UpdateOSMedia**
  * Executes Update-OSMedia -OSMediaName $OSMediaName -DownloadUpdates -Execute after Import
* -**EditionId**
  * Operating System Edition to import
* -**ImageIndex**
  * Operating System Index to Import
* -**ImageName**
  * Operating System Image Name to Import
* -**SkipGridView**
  * Used to bypass the ISE GridView Operating System Selection
{% endtab %}
{% endtabs %}

## Preparation

Importing an Operating System into OSBuilder is one of the first steps that should be taken.  In this example.  Multiple Operating System Versions and Editions can be imported at the same time.  In this example I have mounted MVLS ISO's for the following:

* **Windows 7 SP1 x64**
* **Windows 10 x64**
* **Windows Server 2016**
* **Windows Server 2019**

![](../../../.gitbook/assets/2018-12-14_13-16-00.png)

## Import-OSMedia

**`Import-OSMedia`** can be run without any parameters in PowerShell ISE \(for GridView functionality\).  Once executed, it will will search all attached Drives for install.wim or Install.esd files.  This process should take about a minute, so be patient and let the scan finish.

Once the scanning is complete, a GridView will display with all the available Windows Images. Multi-select the ones you want to import and press OK.

![](../../../.gitbook/assets/2018-12-15_1-47-42.png)

#### Mount Phase

After the Windows Image selection, the Install.wim or Install.esd will be mounted so **OSBuilder** can gather additional information.  Two important pieces of information will be displayed

* **OSMediaName** - This is the **Name** of the Operating System as defined by **OSBuilder**.  This is used in the Directory Name of the **OSMedia**.  It contains the following information in an abbreviated format
  * **&lt;Operating System&gt; &lt;Edition&gt; &lt;Architecture&gt; &lt;Version&gt; &lt;UBR&gt;**
* **OSMediaPath** - This is the **FullName** or **Path** of the **OSMedia**

![](../../../.gitbook/assets/2018-12-30_2-39-10.png)

#### Import Phase

When the Mount Phase is complete, the Operating System can be copied into **OSBuilder\OSMedia** in a directory name matching the **OSMediaName**

The process of importing an Operating System will take about 1 minute of actual work, with about 6 - 8 minutes of processing

## -NewMediaISO

{% hint style="warning" %}
**Microsoft ADK** needs to be installed before using this parameter as **OSCDIMG** is required
{% endhint %}

**Usage:  `Import-OSMedia -NewMediaISO`**

![](../../../.gitbook/assets/2018-12-15_2-59-24.png)

Creates an ISO of the imported **OSMedia** in the **&lt;OSMediaPath&gt;\ISO** directory using the **OSBuilder** [**`New-MediaISO`**](../../docs/functions/osbuilder/new-mediaiso.md) function.  The following command line is passed

```text
New-MediaISO -OSMediaPath "$OSMediaPath
```

{% page-ref page="../../docs/functions/osbuilder/new-mediaiso.md" %}

## -ShowOSInfo

**Usage:  `Import-OSMedia -ShowOSInfo`**

Displays the full **OSMedia** Information by executing the **OSBuilder** [**`Show-OSInfo`**](../../docs/functions/osbuilder/show-osinfo.md) function.  The following command line is passed

```text
Show-OSInfo -OSMediaPath $OSMediaPath
```

{% page-ref page="../../docs/functions/osbuilder/show-osinfo.md" %}

## -UpdateOSMedia

**Usage:  `Import-OSMedia -UpdateOSMedia`**

Automatically applies patches to the imported Operating System using the **OSBuilder** [**`Update-OSMedia`**](../update-osmedia/) function.  The following command line is processed

```text
Update-OSMedia -OSMediaName $OSMediaName -DownloadUpdates -Execute
```

This option will automatically download any required Updates.  You will need an Internet connection and keep in mind the Cumulative Updates are quite large, so don't do this with a Metered Connection.

{% page-ref page="../update-osmedia/" %}

## -EditionId

**Usage:  `Import-OSMedia -EditionId Enterprise`**

You can filter the Operating System by Edition ID using this parameter.  The following values can be used with this parameter

* **Education**
* **EducationN**
* **Enterprise**
* **EnterpriseN**
* **EnterpriseS**
* **EnterpriseSN**
* **Professional**
* **ProfessionalEducation**
* **ProfessionalEducationN**
* **ProfessionalN ProfessionalWorkstation**
* **ProfessionalWorkstationN**
* **ServerDatacenter**
* **ServerDatacenterACor**
* **ServerRdsh**
* **ServerStandard**
* **ServerStandardACor**

## -ImageIndex

**Usage:  `Import-OSMedia -ImageIndex 3`**

If you know the Image Index, then you can specify this to filter the Operating Systems

## -ImageName

**Usage:  `Import-OSMedia -ImageName 'Windows 10 Enterprise'`**

You can filter the Operating System by Image Name using this parameter.  The following values can be used with this parameter

* **Windows 10 Education**
* **Windows 10 Education N**
* **Windows 10 Enterprise**
* **Windows 10 Enterprise 2016 LTSB**
* **Windows 10 Enterprise for Virtual Desktops**
* **Windows 10 Enterprise LTSC**
* **Windows 10 Enterprise N**
* **Windows 10 Enterprise N LTSC**
* **Windows 10 Pro**
* **Windows 10 Pro Education**
* **Windows 10 Pro Education N**
* **Windows 10 Pro for Workstations**
* **Windows 10 Pro N**
* **Windows 10 Pro N for Workstations**
* **Windows Server 2016 Datacenter**
* **Windows Server 2016 Datacenter \(Desktop Experience\)**
* **Windows Server 2016 Standard**
* **Windows Server 2016 Standard \(Desktop Experience\)**
* **Windows Server 2019 Datacenter**
* **Windows Server 2019 Datacenter \(Desktop Experience\)**
* **Windows Server 2019 Standard**
* **Windows Server 2019 Standard \(Desktop Experience\)**
* **Windows Server Datacenter**
* **Windows Server Standard**

## -SkipGridView

**Usage:  `Import-OSMedia -EditionId Enterprise -SkipGridView`**

To fully automate the import of an Operating System, use this parameter to skip the PowerShell GridView selection.  It is recommended on Multi-Index Media that you specify an **`-EditionId`**, **`-ImageIndex`**,  or **`-ImageName`**

