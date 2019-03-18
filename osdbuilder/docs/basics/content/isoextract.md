# IsoExtract

{% hint style="warning" %}
**This guide was written for OSBuilder, but the same principals apply to OSDBuilder**
{% endhint %}

## Strict Directory and File Format

The format of the Drivers Content is Root Directory based.  This means that directories in the root of Content\Drivers can selected in a **`New-OSBuildTask`**

{% hint style="danger" %}
**OSBuilder is scripted to use the extracted ISO's "As-Is".  While you may delete content you will never need \(like Retail CABs\), do not move any content inside the directory structure or you will not see the content properly in New-OSBuildTask**
{% endhint %}

**IsoExtract** is a directory that can be found at **C:\&lt;OSBuilder&gt;\Content\IsoExtract**

The purpose of this directory is to extract the contents of the following Microsoft ISOs

* **Windows 10 Language Packs**
* **Windows 10 Features On Demand**
* **Windows Server 2016 Language Packs**
* **Windows Server 2019 Language Packs**
* **Windows Server 2019 Features On Demand**

## Download ISO

Download of Copy the Microsoft ISOs into the **C:\&lt;OSBuilder&gt;\Content\IsoExtract** directory

![](../../../../.gitbook/assets/2018-10-29_2-12-18.png)

## Extract ISO

Using a tool like 7zip, extract the ISOs

![](../../../../.gitbook/assets/2018-10-29_2-13-21.png)

![](../../../../.gitbook/assets/2018-10-29_2-14-36.png)

![](../../../../.gitbook/assets/2018-10-29_2-15-14.png)

## Rename Directories

Give the extracted ISO in the following format:

* Windows 10 &lt;ReleaseId&gt; Language
* Windows 10 &lt;ReleaseID&gt; &lt;Arch&gt; FOD
* Windows Server 2016 &lt;ReleaseId&gt; Language
* Windows Server 2019 &lt;ReleaseId&gt; Language
* Windows Server 2019 &lt;Release Id&gt; FOD



![](../../../../.gitbook/assets/2019-01-20_17-07-38.png)

## Remove ISOs

No need to keep the ISOs once they are extracted

![](../../../../.gitbook/assets/2018-10-29_2-16-50.png)

## Language Packs

When adding the **Language Pack ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../../../../osbuilder/docs/functions/osbuild/new-osbuildtask/) will enable the prompt to select **Language Packs**

![](../../../../.gitbook/assets/2018-10-29_2-39-45.png)

## Language Interface Packs

When adding the **Language Pack ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../../../../osbuilder/docs/functions/osbuild/new-osbuildtask/) will enable the prompt to select **Language Packs**

![](../../../../.gitbook/assets/2018-10-29_2-42-12.png)

## Features on Demand

When adding the **Features on Demand ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../../../../osbuilder/docs/functions/osbuild/new-osbuildtask/) will enable the prompt to select **Features on Demand**

![](../../../../.gitbook/assets/2018-10-29_2-37-37.png)

## Language Features on Demand

When adding the **Features on Demand ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../../../../osbuilder/docs/functions/osbuild/new-osbuildtask/) will enable the prompt to select **Language Features on Demand**

![](../../../../.gitbook/assets/2018-10-29_2-44-02.png)



