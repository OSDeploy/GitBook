# Virtual Switch Manager

Here are a few links for reference for understanding what the Hyper-V Virtual Switches are.  In basic terms, you will need to create an Internal, Private, and External Switch.  An External Switch is paired with a Network Card.  If you have multiple Network Cards \(Ethernet and Wireless\), you may have to make multiple Virtual Switches.

---

## Hyper-V Manager

You can create your Virtual Switches in Hyper-V using the Virtual Switch Manager.  Its easy although there are several steps

1. Open Hyper-V Manager
2. \(Right Menu\) Open Virtual Switch Manager
3. \(Left Menu\) Select New virtual network
   1. Select Internal
   2. Press the Create Virtual Switch button
   3. Name: Internal
   4. Connection type: Internal network
4. \(Left Menu\) Select New virtual network
   1. Select Private
   2. Press the Create Virtual Switch button
   3. Name: Private
   4. Connection type: Private network
5. \(Left Menu\) Select New virtual network
   1. Select External
   2. Press the Create Virtual Switch button
   3. Name: Ethernet
   4. Connection type: External network
   5. Select your Ethernet Network Adapter from the drop down menu
   6. Check "Allow management operating system to share this network adapter
6. If you have a Wireless Card  
   1. \(Left Menu\) Select New virtual network  
   2. Select External

   1. Press the Create Virtual Switch button

   2. Name: Wireless

   3. Connection type: External network

   4. Select your Wireless Network Adapter from the drop down menu

   5. Check "Allow management operating system to share this network adapter

7. Press Apply

8. Press OK

Repeat the External step as needed if you have multiple Ethernet cards.

![](/assets/20170415-234915-VSM.png)

![](/assets/OSDeployVM20170413-143647.png)

---

## Windows PowerShell ISE \(Set-OSDVMSwitch\)

If you have imported my PowerShell Module OSDeployVM, you can make these changes from Windows PowerShell ISE \(Run as Administrator\) using the following steps

1. \(Requires Admin Rights if Hyper-V is not installed\)
2. Open Windows PowerShell ISE \(Run as Administrator\)
3. Select the OSDeployVM Module
4. Select **Set-OSDVMSwitch**
5. Press Show Details
6. Check Ethernet, Internal, and Private
7. Check Wireless if you have a Wireless Network Card
8. Press Run

When finished, you will have Hyper-V Virtual Switches automatically configured.  While I have not tested this on all hardware, or with multiple Ethernet connections, creating a Virtual Switch should be easy enough from this point to make some minor adjustments.

Hyper-V will be automatically installed if it is not present when running any of the OSDeployVM PowerShell Functions.

![](/assets/20170416-003519.png)![](/assets/20170416-003622.png)![](/assets/20170416-003702.png)![](/assets/20170416-003707.png)![](/assets/20170416-004156.png)

---

## Reference

#### Create a Virtual Network

[https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/connect-to-network](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/connect-to-network)

#### Create a virtual switch for Hyper-V virtual machines

[https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/get-started/create-a-virtual-switch-for-hyper-v-virtual-machines](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/get-started/create-a-virtual-switch-for-hyper-v-virtual-machines)

