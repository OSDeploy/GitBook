# Run a Task in TestMode

**Time Required: 1-2 minutes**

Before executing any Task, I strongly recommend running things in TestMode and with the -Verbose parameter.  Since a Task on a good computer will take 30 minutes to an hour, this may save you some time in pointing out issues.

```
Invoke-OSBuilder -TestMode -Verbose
```

![](/assets/2018-07-14_1-00-12.png)

---

### Select a Task

You will be prompted to select one or more Tasks to run.  You can select multiple Tasks, but I strongly suggest a single Task.

![](/assets/2018-07-14_1-05-06.png)

---


### Execution

Running a Task with TestMode will place the Build in OSBuilder\TestMode.  These can be deleted after you ensure everything operated properly.

![](/assets/2018-07-12_15-36-10.png)

---



