# Update:  I'm still making some changes, so nothing to release yet!

# OSConfig: How It Works

OSConfig is a method for manipulating Windows Deployments in the Specialize phase of an MDT OS Deployment.  Things are a little different for ConfigMgr OSD, and I will cover that in a bit.  When customizing OSConfig, you should do everything in MDT and port to ConfigMgr.  This allows for faster testing cycles.

I'll give you the details as we go along . . .

---

## What is the Specialize phase?

After your computer is imaged in WinPE, the system will restart.  When you see the "Getting ready" screen, you are in the Specialize phase.  As soon as this phase is complete, it will start the OOBE phase.

![](/assets/2018-05-24_23-14-40.png)

---

## Unattend.xml Specialize

You are already executing commands in the Specialize phase by using an Unattend.xml.  The RunSynchronous commands are executed during the "Getting ready" screen.

![](/assets/2018-05-24_23-13-22.png)

---

In the next few pages, I will detail what we can do with OSConfig . . .

