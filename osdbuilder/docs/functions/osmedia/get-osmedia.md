# Get-OSMedia

## Parameters

* `[switch] FullDetails`
  * Displays Update Information \(Servicing, Cumulative, Adobe\)
* `[switch] GridView`
  * Displays results in GridView

## Usage

`Get-OSMedia` will return all [`OSMedia`](./) as a PowerShell Custom Object

![](../../../../.gitbook/assets/2018-12-30_2-54-48%20%281%29.png)

## Get-OSMedia -FullDetails

This will determine if the Updates are the Latest available. Cumulative Update information is obtained by parsing an exported Sessions.xml file \(exported in OSDBuilder 18.12.5 or newer\)

![](../../../../.gitbook/assets/2018-12-30_2-54-48b.png)

## Get-OSMedia -FullDetails -Verbose

Even more detail can be viewed when using the -Verbose parameter. This will display information about the Updates that are validated. This process can take up to a minute for multiple OSMedia

![](../../../../.gitbook/assets/2018-12-30_3-43-15.png)

## Get-OSMedia -GridView

You can display the results in GridView using this parameter. This will allow you to select multiple OSMedia using PassThru

![](../../../../.gitbook/assets/2018-12-31_0-05-28.png)

![](../../../../.gitbook/assets/2018-12-31_0-05-47.png)

## Piping: GridView

As an alternative, you can use the following commands to perform a GridView

```text
Get-OSMedia | Out-GridView
Get-OSMedia -FullDetails | Out-GridView -PassThru
```

![](../../../../.gitbook/assets/2018-12-30_3-02-12.png)

## Piping: Show-OSInfo

You can also pipe OSMedia to some other OSDBuilder functions like[`Show-MediaInfo`](../show-osbmediainfo.md) using any of the following commands

```text
Get-OSMedia -FullDetails | Out-GridView -PassThru | Show-MediaInfo
Get-OSMedia -FullDetails | Where-Object {$_.Cumulative -eq 'Latest'} | Show-MediaInfo
(Get-OSMedia -FullDetails).Where({$_.Cumulative -eq 'Latest'}) | Show-MediaInfo
```

![](../../../../.gitbook/assets/2018-12-30_3-13-54%20%281%29.png)

## Piping: Update-OSMedia

You can even use `Get-OSMedia` to download updates for all your existing [`OSMedia`](./)**\`\`**

```text
Get-OSMedia | Update-OSMedia -DownloadUpdates
```

![](../../../../.gitbook/assets/2018-12-31_0-13-45.png)

## Where Method: Display only Latest CU

You can use the Where Method to display the OSMedia with the Latest Cumulative Update

`(Get-OSMedia -FullDetails).Where({$_.Cumulative -eq 'Latest'})`

![](../../../../.gitbook/assets/2018-12-30_3-10-54.png)

## Internal Functions

`Get-OSMedia` will be used internally in other OSDBuilder functions. For example, [`Update-OSMedia`](update-osmedia.md) used to use a simple selection based on Directories contained in OSMedia

![](../../../../.gitbook/assets/2018-09-12_11-19-45.png)

`Get-OSMedia` will allow more detailed information in the selection of OSMedia to Update

![](../../../../.gitbook/assets/2018-12-30_3-31-44.png)

