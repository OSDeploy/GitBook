# Execute a Task in Test Mode

You can execute a Task using Invoke-OSBuilder.  Simply select a PatchUpdate which is the date your OSBuild is patched up to.  I strongly recommend running this in TestMode first with -Verbose

```
Invoke-OSBuilder -PatchUpdate 2018-07 -TestMode -Verbose
```

![](/assets/2018-07-10_15-22-52.png)

---

### Select Task\(s\)

You have the option to select multiple Tasks, which will run sequentially.  If you are applying the CU and performing an Image Cleanup, the process may take from 30 minutes to an hour, so if you are running multiple, do it overnight :\)

![](/assets/2018-07-10_15-24-40.png)

---

### Test Mode Execution

Using the Test Mode will perform some actions like copying the OSMedia and creating a "Test OSBuild", but anything that requires mounting will not run.  This should take a minute or so to run, but it is a great way to check the build.

![](/assets/2018-07-10_15-31-28.png)

---

### Test Mode Files

An OSBuild will be created with the PatchUpdate and "Test" appended to the OSMedia Name.  This directory can be deleted without issue after validation.

![](/assets/2018-07-10_15-33-54.png)

---

### Next Steps

You are free to complete the OSBuild without running in TestMode, but I would recommend reading the remainder of this guide.

If you are going to stop here, you are going to miss adding DaRT and Drivers to WinPE, as well as adding Language Packs, and configuring a Start Layout in Windows.



---





