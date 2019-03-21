# ExtraFiles

## Root Directory Structure

ExtraFiles Content is in a Root Directory Structure format.  This means that directories in the root of **Content\ExtraFiles** can selected in a **`New-OSBuildTask`**

## Root Directory Items

ExtraFiles Content must be organized in directories.  The name should contain information about the content

Directories are selected in a **`New-OSBuildTask`** and added to the Operating System

![](../../../../.gitbook/assets/image%20%2888%29.png)

## Child Directories

Each individual directory that will be added to an Operating System must contain an Operating System directory structure

In the example below I have a file at **C:\OSDBuilder\Content\ExtraFiles\Windows 10 Wallpaper\Windows\Web\Wallpaper\Windows\img0.jpg**  
This file will be copied to **C:\Windows\Web\Wallpaper\Windows\img0.jpg** in the mounted Windows Image

![](../../../../.gitbook/assets/image%20%282%29.png)

