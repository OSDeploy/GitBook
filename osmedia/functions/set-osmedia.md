# Set-OSMedia

The default OSMedia paths won't work for everyone, so you are able to make changes on your own.  Changing a setting using Set-OSMedia will also write the changes to the Registry

![](/assets/2018-06-22_15-29-24.png)

---

### Default Paths

```
-PathOSMedia: C:\OSMedia
-PathOSLibrary: C:\OSMedia\Library
-PathOSUpdates: C:\OSMedia\Updates
-PathOSMount: C:\OSMedia\Mount
```

---

### -PathOSMedia

Making a change to the main directory will result in a change of all child directories.

![](/assets/2018-06-22_13-10-32.png)

![](/assets/2018-06-22_13-10-59.png)

This change will also result in setting this Value in the Registry

![](/assets/2018-06-22_13-12-11.png)

---

### -PathOSLibrary

I recommend keeping this as the default under the OSMedia parent directory

---

### -PathOSMount

You can certainly make a change to this location as needed without any issue.

![](/assets/2018-06-22_13-14-55.png)

---

### -PathOSUpdates

I recommend keeping this as the default under the OSMedia parent directory

---



