# OSMedia: What's New

* 18.06.26 OSMedia Builds Update
  * Library contents should not be edited, so OSMedia to be Updated or Edited is now in the Builds directory
  * Copy-OSMedia replaced with New-OSBuild
  * Update-OSMedia replaced with Update-OSBuild
  * Edit-OSMedia replaced by Edit-OSBuild
* 18.06.25 OSMedia Initial Release

---

### Understanding Builds

Builds are being introduced to replace the traditional method of having all Imported and Working Operating Systems in the same directory.  If you have already worked with OSMedia 18.06.25 then move any edited Operating Systems into an OSMedia\Builds directory.  Imported Operating Systems should stay in OSMedia\Library.


![](/assets/2018-06-26_11-18-46.png)


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






