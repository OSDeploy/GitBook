# My Driver Management Challenges

My role has made me responsible for delivering methods for OS Deployment for a Global Enterprise, I encountered several challenges related to Drivers.

* **Offline Deployment** - Because I work in Oil Services, we have several computers in Remote locations.  The ability to reimage a computer from a USB Drive without any Network was crucial.  This means no SCCM, no Active Directory, no Desktop Support
* **Global Distribution **- Operating in all parts of the World requires being able to Replicate the OS and all its dependencies, including Drivers.  Some locations are connected through Satellite connection, so keeping the size down to as small as possible was absolutely necessary
* **MANY Computer Models** - MANY in CAPS actually means supporting over 100 different Dell Computer Models.  You figure with every Intel Generation, more models are released, requiring new Drivers.  In some cases, we may have 1 or 2 instances of a specific Computer Model.  These all must be supported, and require an excessive amount of Drivers.
* **Multiple Operating Systems** - We still have a need to keep Windows 7 \(in multiple architectures\) around for specific purposes, as well as adding Windows 10.
* **MDT and OSD Support** - MDT will remain in my Enterprise in the near future for deploying Custom Images.  Whatever Driver Repository I use should be friendly enough to keep me from maintaining two separate methods.

If I multiply the number of supported Computer Models, with the different Operating Systems I need to support, I need to be able to support over 200 different scenarios.  I'll need several Driver Packages for Windows 7 x86 and x64 and Windows 10 x64, as well as a handful for Windows 10 x86 \(older Atom tablets mostly\).

---

## Solution Requirements

Whatever Driver Management solution I implement, it has to be Simple, Small, and Stand Alone.

* **Simple** - I don't want to make Driver Management a Full Time job
* **Small **- Must be as small as possible due to my Global Distribution
* **Stand Alone** - Talking to SCCM or a Web Service isn't an option

---



