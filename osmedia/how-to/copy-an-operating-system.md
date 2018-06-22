# Copy an Operating System

Let's say the goal is to update my Windows 10 Enterprise 1803 x64 2018-03 to include patches from 2018-06.  A good name would be "Windows 10 Enterprise 1803 x86 2018-06".  This is what I should set my -NewOSMediaName to.

![](/assets/2018-06-22_14-46-00.png)

---

### Select OSMedia to Copy

After running Copy-OSMedia with my -NewOSMediaName, I am prompted to select an existing Operating System to copy.  Once the original Operating System has been selected, press OK.

![](/assets/2018-06-22_14-54-26.png)

---

### PowerShell Output

Pay attention to the Console output for any issues, but this is a relatively simple process.  Make sure to check the Logs for any issues.

![](/assets/2018-06-22_14-55-11.png)

---

### Complete

Once PowerShell is complete, there will be a copied Operating System in the OSMedia Library

![](/assets/2018-06-22_14-55-41.png)





