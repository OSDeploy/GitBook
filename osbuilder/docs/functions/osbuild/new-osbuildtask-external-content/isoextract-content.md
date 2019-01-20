# IsoExtract Content

**IsoExtract** is a directory that can be found at **C:\&lt;OSBuilder&gt;\Content\IsoExtract**

The purpose of this directory is to extract the contents of the following Microsoft ISOs

* **Windows 10 Language Packs**
* **Windows 10 Features On Demand**
* **Windows Server 2016 Language Packs**
* **Windows Server 2019 Language Packs**
* **Windows Server 2019 Features On Demand**

## Download ISO

Download of Copy the Microsoft ISOs into the **C:\&lt;OSBuilder&gt;\Content\IsoExtract** directory

![](../../../../../.gitbook/assets/2018-10-29_2-12-18.png)

## Extract ISO

Using a tool like 7zip, extract the ISOs

![](../../../../../.gitbook/assets/2018-10-29_2-13-21.png)

![](../../../../../.gitbook/assets/2018-10-29_2-14-36.png)

![](../../../../../.gitbook/assets/2018-10-29_2-15-14.png)

## Rename Directories

Give the extracted ISO in the following format:

* Windows 10 &lt;ReleaseId&gt; Language
* Windows 10 &lt;ReleaseID&gt; &lt;Arch&gt; FOD
* Windows Server 2016 &lt;ReleaseId&gt; Language
* Windows Server 2019 &lt;ReleaseId&gt; Language
* Windows Server 2019 &lt;Release Id&gt; FOD



![](../../../../../.gitbook/assets/2019-01-20_17-07-38.png)

## Remove ISOs

No need to keep the ISOs once they are extracted

![](../../../../../.gitbook/assets/2018-10-29_2-16-50.png)

## Language Packs

When adding the **Language Pack ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../new-osbuildtask/) will enable the prompt to select **Language Packs**

![](../../../../../.gitbook/assets/2018-10-29_2-39-45.png)

## Language Interface Packs

When adding the **Language Pack ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../new-osbuildtask/) will enable the prompt to select **Language Packs**

![](../../../../../.gitbook/assets/2018-10-29_2-42-12.png)

## Features on Demand

When adding the **Features on Demand ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../new-osbuildtask/) will enable the prompt to select **Features on Demand**

![](../../../../../.gitbook/assets/2018-10-29_2-37-37.png)

## Language Features on Demand

When adding the **Features on Demand ISO** to the **IsoExtract** directory, creating a [**`New-OSBuildTask`**](../new-osbuildtask/) will enable the prompt to select **Language Features on Demand**

![](../../../../../.gitbook/assets/2018-10-29_2-44-02.png)



