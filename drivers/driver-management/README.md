# Driver Deployment Methods

The Method you choose to apply Drivers to your Computer in a Task Sequence for both MDT and SCCM is your Deployment Method.  Before you can even Deploy Windows 10 to your systems, you must make a decision, but what Driver Deployment Method works best for your environment?

---

## Manual \(aka Total Chaos\)

The method of downloading drivers and importing them into MDT or OSD without a proper structure and relying on PNP Detection in the Manual Deployment Method.  This can actually work quite well if you have a few different computer models and a single Operating System.

---

## Total Control

According to Johan Arwidmark, you have to decide between "Total Chaos" and "Total Control".  Total Chaos is just importing Drivers into MDT or SCCM without a proper Make / Model structure.  Total Control accounts for this

While the link below was written some time ago, everything detailed still functions flawlessly.

**MDT 2013 Lite Touch Driver Management**

[https://deploymentresearch.com/Research/Post/325/MDT-2013-Lite-Touch-Driver-Management](https://deploymentresearch.com/Research/Post/325/MDT-2013-Lite-Touch-Driver-Management)

**ConfigMgr Driver Management in just four steps**

[https://deploymentresearch.com/Research/Post/611/ConfigMgr-Driver-Management-in-just-four-steps-By-Matthew-Teegarden](https://deploymentresearch.com/Research/Post/611/ConfigMgr-Driver-Management-in-just-four-steps-By-Matthew-Teegarden)

---

## The Holy Grail

Another method developed by Kim Oppalfens uses a Download Package Content method using OSDDownloadDownloadPackages.  Behind the scenes is a PowerShell script to handle the logic.  Packages can be based on

[http://www.oscc.be/sccm/osd/The-holy-grail-of-ConfigMgr-diver-management,-or-whatever-you-want-to-call-it/](http://www.oscc.be/sccm/osd/The-holy-grail-of-ConfigMgr-diver-management,-or-whatever-you-want-to-call-it/)

---

## Modern Driver Management

Maurice Daly and Nickolaj Andersen's Modern Driver Management is another method for Driver Management.  This method uses a Web Service to manage the individual Driver Packages depending on the Computer Model.

[http://www.scconfigmgr.com/2017/03/29/modern-driver-management-using-web-services-during-osd-with-configmgr/](http://www.scconfigmgr.com/2017/03/29/modern-driver-management-using-web-services-during-osd-with-configmgr/)

---

## Deciding on a Method

You should decide on a method that works best for your environment.

**Do you support 5 Computer Models? ** The Manual method may work just fine for you

**Do you support 100+ Computer Models?**  The Manual method will frustrate you to no end

**Are you planning on building systems Offline using Stand Alone Media?**  You won't be able to connect to a Web Service

**Are you using MDT only?**  The Holy Grail method won't work

**Does size matter?**  Repositories can grow to 50 - 100 GB.  Will this be a problem for your Network?

**You need to take all of these questions into consideration to decide what works best for your Enterprise.**

