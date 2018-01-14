# Hyper-V Settings

I have never been a fan of the default Hyper-V location for Virtual Machines and Virtual Hard Disks.  Here are the default locations:

* Virtual Machines: C:\ProgramData\Microsoft\Windows\Hyper-V
* Virtual Hard Disks: C:\Users\Public\Documents\Hyper-V\Virtual Hard Disks

For a computer with one drive, this may be acceptable, but I have a 256GB SSD OS Disk \(Drive Letter C\) and a 2TB SSD Data Disk \(Drive Letter D\).  So for me, I need to move these to my D Drive.  Since these paths do not exist on my D Drive, and they are not very intuitive, I decide I want the following:

* Virtual Machines: D:\VMs\VM
* Virtual Hard Disks: D:\VMs\VHD

Additionally, I create a directory for ISO's that I use frequently, like WinPE

* ISO Files: D:\VMs\ISO

---

## Hyper-V Manager

You can make the change in Hyper-V Manager, and it is a simple process

1. Determine your Hyper-V Drive Letter.  If you only have one Hard Drive, then your &lt;DriveLetter&gt; should be C.  If you have a secondary Hard Drive, then your &lt;DriveLetter&gt; is probably D
2. Open Hyper-V Manager
3. \(Right Menu\) Open Hyper-V Settings
4. Modify the Virtual Hard Disks path to &lt;DriveLetter&gt;:\VMs\VHD
5. Modify the Virtual Machines Path to &lt;DriveLetter&gt;:\VMs\VM
6. Press OK
7. In Windows Explorer, create the directory &lt;DriveLetter&gt;:\VMs\ISO to store your Boot Images or Windows Media

![](/assets/20170415-234915-HVS.png)![](/assets/20170415-235225.png)

---

## Windows PowerShell ISE \(Set-OSDVMPaths\)

If you have imported my PowerShell Module OSDeployVM, you can make these changes from Windows PowerShell ISE \(Run as Administrator\) using the following steps

1. \(Requires Admin Rights if Hyper-V is not installed\)
2. Open Windows PowerShell ISE \(Run as Administrator\)
3. Select the OSDeployVM Module
4. Select **Set-OSDVMPaths**
5. Press Show Details
6. Press Run

Hyper-V will be automatically installed if it is not present when running any of the OSDeployVM PowerShell Functions.

You will receive a prompt to set your VM's to C:\VMs.  If this is where you want to save your VM's, press Yes, otherwise press No.  If you have multiple Hard Drives, you will be prompted for each one.  In my case where I want D:\VMs, I would say No to the C:\VMs, and Yes to the D:\VMs prompt.

You will receive a similar prompt for every Hard Drive in your computer.  In my case, I want to select D:\VMs

![](/assets/20170416-000310.png)![](/assets/20170416-000337.png)![](/assets/20170416-000506.png)![](/assets/20170416-000525.png)![](/assets/20170416-000533.png)

The directories will be created automatically, including an ISO directory

![](/assets/20170416-000703.png)

The ISO Path will be stored in the Registry at HKCU:\Software\OSDeploy.  This is used when prompting for an ISO in the New-OSDVM Script.

![](/assets/20170416-000937.png)

My Hyper-V Settings are now in a more abbreviated path that is easier to work with . . .

![](/assets/20170416-001441.png)

