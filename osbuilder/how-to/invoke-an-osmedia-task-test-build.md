# Invoke an OSMedia Task - Test Build

This is basically a What-If.  When Running a Task with the ExecutionMode set to 'Test Build', it will perform things like Copy and Export of the OSMedia, but not Mount and perform actions.  This is a great way to see the files that will be used in an actual Execution.

Tasks run in 'Test Build' will copy the files to the OSBuilder\TestBuilds directory.  These can be deleted at any time.  When you run  Get-OSBuilder, you will see the Test Builds.  These can be deleted at any time.

I strongly recommend running this Verbose if you are just trying to see what the Task will do.

![](/assets/2018-07-23_23-49-52.png)

---

### Test Build Example

The following image is a sample output from a Test Build

**Right click and open the following image in a new tab for a better look at the output**

![](/assets/2018-07-23_23-46-32.png)![](/assets/2018-07-23_23-46-32b.png)

---

