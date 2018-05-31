# OSConfig

This section will be organized in a directory structure similar to how you should configure OSConfig.  This should be the root directory where OSConfig.ps1 resides.  This will replace the sample OSConfig.ps1 that you created in the Getting Started page.

---

### OSConfig.ps1

Place this script in the root.  This script will perform the following:

* Increase the Screen Buffer size of the Console Windows
* Create C:\ProgramData\OSConfigLogs
* Create a PowerShell Transcript at C:\ProgramData\OSConfigLogs
* Log all Environment Variables
* Execute all PowerShell scripts in C:\OSConfig

