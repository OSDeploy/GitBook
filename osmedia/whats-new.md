# OSMedia 18.6.28 What's New? Servicing Stacks

[https://www.powershellgallery.com/packages/OSMedia/18.6.28](https://www.powershellgallery.com/packages/OSMedia/18.6.28)

* 18.06.28 OSMedia Stacks Update
  * [New Function: Get-Stacks](/osmedia/reference/get-stacks.md)
  * [How To: Integrate Servicing Stack Updates](/osmedia/how-to/integrate-servicing-stack-updates.md)
  * [Updated Function: Update-OSBuild](/osmedia/reference/update-osbuild.md)

![](/assets/2018-06-27_22-37-58.png)

---

### Updating OSMedia

Make sure you remove any previous version as some of the functions have been renamed

**PowerShell Uninstall Previous Versions:**

```
Uninstall-Module -Name OSMedia -AllVersions -Force
```

**PowerShell Install Latest Version:**

```
Install-Module -Name OSMedia -Scope CurrentUser
```

---

### OSMedia 18.6.26 What's New? Builds

[https://www.powershellgallery.com/packages/OSMedia/18.6.26](https://www.powershellgallery.com/packages/OSMedia/18.6.26)

* 18.06.26 OSMedia Builds Update
 * Library contents should not be edited, so OSMedia to be Updated or Edited is now in the Builds directory
 * Copy-OSMedia replaced with New-OSBuild
 * Update-OSMedia replaced with Update-OSBuild
 * Edit-OSMedia replaced by Edit-OSBuild

Builds are being introduced to replace the traditional method of having all Imported and Working Operating Systems in the same directory.  If you have already worked with OSMedia 18.06.25 then move any edited Operating Systems into an OSMedia\Builds directory.  Imported Operating Systems should stay in OSMedia\Library.

![](/assets/2018-06-26_11-18-46.png)

---

### OSMedia 18.6.25 What's New? Everything \(Initial Release\)

[https://www.powershellgallery.com/packages/OSMedia/18.6.25](https://www.powershellgallery.com/packages/OSMedia/18.6.25)

* 18.06.25 OSMedia Initial Release

---



