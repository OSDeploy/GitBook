# Templates

So you have locked down your **Basic Task**, and you want to make sure that it gets applied every time you create an **OSBuild** with that specific **OSMedia**, simply move the **Task JSON** file from the **Tasks** directory into the **Templates** directory

![](../../../../.gitbook/assets/image%20%28167%29.png)

## New-OSBuildTask -SaveAs Template

To save a Task as a Template, use the **`-SaveAs Template`** parameter

```text
New-OSBuildTask -TaskName "Enable NetFX" -EnableNetFX3 -SaveAs Template
```

The Task will be saved into the Templates directory.  This specific Template will enable NetFX every time the **OSMFamily** "**Client Enterprise x64 17763 en-US**" is used

![](../../../../.gitbook/assets/image%20%28115%29.png)

![](../../../../.gitbook/assets/image%20%28189%29.png)

## Global Templates

When using the **`-SaveAs Template`** parameter and adding the word **Global** to the Task Name, you will have a **Global Template**.  This means that every OSBuild that is created, regardless of the Operating System, will have the settings applied

```text
New-OSBuildTask -TaskName "Global Enable NetFX" -EnableNetFX3 -SaveAs Template
```

![](../../../../.gitbook/assets/image%20%28163%29.png)

## New-OSBuild Execution

Templates that are applied will be displayed when executing **`New-OSBuild`**

![](../../../../.gitbook/assets/image%20%28250%29.png)

