# New-OSBuild

Once you have created a Task using [**`New-OSBuildTask`**](new-osbuildtask/), you can create an OSBuild.

## -DownloadUpdates

This parameter will automatically download Microsoft Updates that are needed if you have not previously downloaded them

```text
New-OSBuild -DownloadUpdates
```

**Example:**  `New-OSBuild -DownloadUpdates`

## -Execute

This parameter is required to create the OSBuild

**Example:**  `New-OSBuild -Execute`

## Run PowerShell CommandLine



**Example:**  `New-OSBuild -DownloadUpdates -Execute`

