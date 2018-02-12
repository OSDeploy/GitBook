# Create a Dell Latitude 7490 CAB

Let's see how easy it is to make a CAB file for the Dell Latitude 7490 for use in OSDeploy

---

## Repository

You should have a Repository by now you can place it in, but if not, start with an empty Driver Repository.

---

## OSDrivers.vbs

Make sure that OSDrivers.vbs is in the root of the Driver Repository

---

## Dell Download

At the time of writing this post, the Dell Windows 10 x64 Driver Pack is posted here.

[http://en.community.dell.com/techcenter/enterprise-client/w/wiki/12457.latitude-7490-windows-10-driver-pack](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/12457.latitude-7490-windows-10-driver-pack)

Download the CAB file and save it to the Driver Repository

---

## Answer File

Create an Answer File and name it the same name as the CAB that was downloaded with a TXT extension.  Add the following to the TXT file.

```
[OSDrivers]
Make = Dell
Model = Latitude 7490
Windows 10 x64 = Yes
```

---

## Mission Accomplished

And that's it.  Simple?

![](/assets/2018-02-12_2-32-50.png)

