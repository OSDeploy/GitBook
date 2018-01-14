# Import Windows Media

```
$OSMedia = "D:\"
$OSDeploy = "C:\OSDeploy\Win10x64"

Write-Host "Creating OSDeploy Directory Structure"
New-Item "$OSDeploy\Logs" -ItemType Directory -Force
New-Item "$OSDeploy\Media" -ItemType Directory -Force
New-Item "$OSDeploy\Mount" -ItemType Directory -Force

Write-Host "Copying Media from $OSMedia to $OSDeploy\Media"
Copy-Item "$OSMedia*" -Destination "$OSDeploy\Media" -Recurse

Write-Host "Removing the Read Only flag for $OSDeploy\Media"
Get-ChildItem -Recurse -Path "$OSDeploy\Media\*" | Set-ItemProperty -Name IsReadOnly -Value $false -ErrorAction SilentlyContinue
```



