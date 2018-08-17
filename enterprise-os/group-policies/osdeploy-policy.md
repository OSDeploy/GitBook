# OSDeploy Policy

## Computer Configuration

```text
Enabled:	\Control Panel\Personalization\Prevent changing lock screen and logon image
Enabled:	\Control Panel\Personalization\Prevent changing start menu background
Enabled:	\Control Panel\Personalization\Prevent enabling lock screen slide show
Enabled:	\Control Panel\User Accounts\Apply the default account picture to all users
Enabled:	\Network\Network Connections\Do not show the "local access only" network icon
Disabled:	\Network\WLAN Service\WLAN Settings\Allow Windows to automatically connect to suggested open hotspots,  to networks shared by contacts, and to hotspots offering paid services
Enabled:	\System\Display highly detailed status messages
Enabled:	\System\Device Installation\Prevent device metadata retrieval from the Internet
Enabled:	\System\Device Installation\Specify search order for device driver source locations
Disabled:	\System\Device Installation\Specify the search server for device driver updates
Enabled:	\System\Device Installation\Device Installation Restrictions\Allow administrators to override Device Installation Restriction policies
Enabled:	\System\Internet Communication Management\Internet Communication settings\Turn off access to all Windows Update features
Enabled:	\System\Logon\Always use custom logon background
Disabled:	\System\Logon\Show first sign-in animation 
Enabled:	\System\Logon\Turn off picture password sign-in
Enabled:	\Windows Components\App runtime\Allow Microsoft accounts to be optional
Enabled:	\Windows Components\AutoPlay Policies\Set the default behavior for AutoRun
Enabled:	\Windows Components\AutoPlay Policies\Turn off Autoplay
Enabled:	\Windows Components\Cloud Content\Turn off Microsoft consumer experiences
Disabled:	\Windows Components\Data Collection and Preview Builds\Disable pre-release features or settings
Enabled:	\Windows Components\Data Collection and Preview Builds\Do not show feedback notifications
Disabled:	\Windows Components\Data Collection and Preview Builds\Toggle user control over Insider builds
Enabled:	\Windows Components\Desktop Gadgets\Turn off desktop gadgets
Enabled:	\Windows Components\File Explorer\Configure Windows Defender SmartScreen
Disabled:	\Windows Components\File Explorer\Show hibernate in the power options menu
Enabled:	\Windows Components\File Explorer\Show lock in the user tile menu
Enabled:	\Windows Components\Game Explorer\Turn off downloading of game information
Enabled:	\Windows Components\Game Explorer\Turn off game updates
Enabled:	\Windows Components\Game Explorer\Turn off tracking of last play time of games in the Games folder
Enabled:	\Windows Components\HomeGroup\Prevent the computer from joining a homegroup
Disabled:	\Windows Components\Microsoft Edge\Allow web content on New Tab page
Disabled:	\Windows Components\Microsoft Edge\Send all intranet sites to Internet Explorer 11
Enabled:	\Windows Components\OneDrive\Prevent the usage of OneDrive for file storage
Disabled:	\Windows Components\Search\Allow Cortana
Disabled:	\Windows Components\Search\Allow Cortana above lock screen
Enabled:	\Windows Components\Search\Do not allow locations on removable drives to be added to libraries
Enabled:	\Windows Components\Search\Don't search the web or display web results in Search
Disabled:	\Windows Components\Search\Prevent indexing e-mail attachments
Disabled:	\Windows Components\Search\Prevent indexing files in offline files cache
Enabled:	\Windows Components\Store\Turn off the offer to update to the latest version of Windows
Enabled:	\Windows Components\Sync your settings\Do not sync
Enabled:	\Windows Components\Sync your settings\Do not sync Apps
Enabled:	\Windows Components\Windows Defender SmartScreen\Explorer\Configure Windows Defender SmartScreen
Disabled:	\Windows Components\Windows Game Recording and Broadcasting\Enables or disables Windows Game Recording and Broadcasting
Enabled:	\Windows Components\Windows Mail\Turn off the communities features
Enabled:	\Windows Components\Windows Mail\Turn off Windows Mail application
Enabled:	\Windows Components\Windows Media Center\Do not allow Windows Media Center to run
Enabled:	\Windows Components\Windows Update\Do not allow update deferral policies to cause scans against Windows Update
Enabled:	\Windows Components\Windows Update\Do not include drivers with Windows Updates
Enabled:	\Windows Components\Windows Update\Windows Update for Business\Manage preview builds
```



| Setting | State | Path |
| :--- | :--- | :--- |
| Allow administrators to override Device Installation Restriction policies | Enabled | \System\Device Installation\Device Installation Restrictions |
| Allow Cortana | Disabled | \Windows Components\Search |
| Allow Cortana above lock screen | Disabled | \Windows Components\Search |
| Allow Microsoft accounts to be optional | Enabled | \Windows Components\App runtime |
| Allow web content on New Tab page | Disabled | \Windows Components\Microsoft Edge |
| Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services | Disabled | \Network\WLAN Service\WLAN Settings |
| Always use custom logon background | Enabled | \System\Logon |
| Apply the default account picture to all users | Enabled | \Control Panel\User Accounts |
| Configure Windows Defender SmartScreen | Enabled | \Windows Components\File Explorer |
| Configure Windows Defender SmartScreen | Enabled | \Windows Components\Windows Defender SmartScreen\Explorer |
| Disable pre-release features or settings | Disabled | \Windows Components\Data Collection and Preview Builds |
| Display highly detailed status messages | Enabled | \System |
| Do not allow locations on removable drives to be added to libraries | Enabled | \Windows Components\Search |
| Do not allow update deferral policies to cause scans against Windows Update | Enabled | \Windows Components\Windows Update |
| Do not allow Windows Media Center to run | Enabled | \Windows Components\Windows Media Center |
| Do not include drivers with Windows Updates | Enabled | \Windows Components\Windows Update |
| Do not show feedback notifications | Enabled | \Windows Components\Data Collection and Preview Builds |
| Do not show the "local access only" network icon | Enabled | \Network\Network Connections |
| Do not sync | Enabled | \Windows Components\Sync your settings |
| Do not sync Apps | Enabled | \Windows Components\Sync your settings |
| Don't search the web or display web results in Search | Enabled | \Windows Components\Search |
| Enables or disables Windows Game Recording and Broadcasting | Disabled | \Windows Components\Windows Game Recording and Broadcasting |
| Manage preview builds | Enabled | \Windows Components\Windows Update\Windows Update for Business |
| Prevent changing lock screen and logon image | Enabled | \Control Panel\Personalization |
| Prevent changing start menu background | Enabled | \Control Panel\Personalization |
| Prevent device metadata retrieval from the Internet | Enabled | \System\Device Installation |
| Prevent enabling lock screen slide show | Enabled | \Control Panel\Personalization |
| Prevent indexing e-mail attachments | Disabled | \Windows Components\Search |
| Prevent indexing files in offline files cache | Disabled | \Windows Components\Search |
| Prevent the computer from joining a homegroup | Enabled | \Windows Components\HomeGroup |
| Prevent the usage of OneDrive for file storage | Enabled | \Windows Components\OneDrive |
| Send all intranet sites to Internet Explorer 11 | Disabled | \Windows Components\Microsoft Edge |
| Set the default behavior for AutoRun | Enabled | \Windows Components\AutoPlay Policies |
| Show first sign-in animation | Disabled | \System\Logon |
| Show hibernate in the power options menu | Disabled | \Windows Components\File Explorer |
| Show lock in the user tile menu | Enabled | \Windows Components\File Explorer |
| Specify search order for device driver source locations | Enabled | \System\Device Installation |
| Specify the search server for device driver updates | Disabled | \System\Device Installation |
| Toggle user control over Insider builds | Disabled | \Windows Components\Data Collection and Preview Builds |
| Turn off access to all Windows Update features | Enabled | \System\Internet Communication Management\Internet Communication settings |
| Turn off Autoplay | Enabled | \Windows Components\AutoPlay Policies |
| Turn off desktop gadgets | Enabled | \Windows Components\Desktop Gadgets |
| Turn off downloading of game information | Enabled | \Windows Components\Game Explorer |
| Turn off game updates | Enabled | \Windows Components\Game Explorer |
| Turn off Microsoft consumer experiences | Enabled | \Windows Components\Cloud Content |
| Turn off picture password sign-in | Enabled | \System\Logon |
| Turn off the communities features | Enabled | \Windows Components\Windows Mail |
| Turn off the offer to update to the latest version of Windows | Enabled | \Windows Components\Store |
| Turn off tracking of last play time of games in the Games folder | Enabled | \Windows Components\Game Explorer |
| Turn off Windows Mail application | Enabled | \Windows Components\Windows Mail |

## User Configuration

Working on adding this

