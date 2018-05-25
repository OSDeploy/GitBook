# OSConfig.ps1

This is the current OSConfig.ps1 script that I use.  I'll explain some things.

* **Screen Buffer Size** - Adding this entry to the registry gives us the ability to scroll in any scripts that are executed AFTER making this change
* **Move the Logs** - This is important as OSConfig should be a static copy of our full Content.  In this respect, we may need to replace the scripts, keeping the LOGS in a separate location may help us in troubleshooting.
* **Child Scripts** - It does not make sense to keep adding to a single PowerShell script to make OS changes, so any Child Item that is within one level deep of our OSConfig.ps1 will be executed.  This allows us to completely separate scripts for different functions.