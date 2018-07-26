# Download Computer Drivers

A complete Driver Set for a specific Computer Model is referred to as a Driver Pack. All major Computer Manufacturers \(Dell, HP, Lenovo, Microsoft\) create Driver Packs for OS Deployment. The Driver Packs can be downloaded as a compressed CAB, ZIP, EXE, or MSI. From there, they can easily be extracted, and then imported into SCCM or MDT.

Model Driver Packs support a single Computer Model. These are usually smaller than a Family Driver Pack.

Family Driver Packs support multiple Computer Models that are typically in a similar Computer Class and Generation. This allows for fewer Driver Packages and usually result in a smaller Driver Repository.

## Dell Driver Packs

Enterprise Drivers for Dell Computer Models can be downloaded individually from Dell TechCenter.

[http://en.community.dell.com/techcenter/enterprise-client/w/wiki/2065.dell-command-deploy-driver-packs-for-enterprise-client-os-deployment](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/2065.dell-command-deploy-driver-packs-for-enterprise-client-os-deployment)

Dell also releases Family Driver Packs for combining similar Computer Models.

[http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-imageassist-driver-cab-files](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/11438.dell-imageassist-driver-cab-files)

## HP Driver Packs \(SoftPaq\)

HP bundles similar models together in Driver Packs. Since the Driver Packs contain Driver Support for multiple HP Computer Models, they are considered Family Packs.

[http://www8.hp.com/us/en/ads/clientmanagement/drivers-pack.html](http://www8.hp.com/us/en/ads/clientmanagement/drivers-pack.html)

HP recommends that you use the HP SoftPaq Download Manager \(HP SDM\), rather than download the SoftPaq's individually.

[http://www8.hp.com/us/en/ads/clientmanagement/overview.html\#manageability-tools](http://www8.hp.com/us/en/ads/clientmanagement/overview.html#manageability-tools)

## Lenovo Driver Packs

Lenovo has all their Deployment information in the Think Deployment Resource Center

[https://support.lenovo.com/us/en/solutions/ht104232](https://support.lenovo.com/us/en/solutions/ht104232)

WinPE and Computer Model Driver Packs can be downloaded individually

[https://support.lenovo.com/us/en/solutions/ht074984](https://support.lenovo.com/us/en/solutions/ht074984)

DriverGrabber can be used to download the necessary Driver Packs and RepositoryChecker will check your Update Retriever repository.

[https://support.lenovo.com/us/en/solutions/ht100638](https://support.lenovo.com/us/en/solutions/ht100638)

Deployment Recipe Cards contain all the information necessary about a Computer Model, including WMI Queries. These are in separate PDF files per Model and OS.

[https://support.lenovo.com/us/en/solutions/ht104042](https://support.lenovo.com/us/en/solutions/ht104042)

## Microsoft Surface

Microsoft makes it very easy to deploy Surface devices. All Drivers for a particular Surface Model are in a single MSI. These should be installed as Applications and should not be extracted in SCCM or MDT.

[https://support.microsoft.com/en-us/help/4023482/surface-download-drivers-and-firmware-for-surface](https://support.microsoft.com/en-us/help/4023482/surface-download-drivers-and-firmware-for-surface)

