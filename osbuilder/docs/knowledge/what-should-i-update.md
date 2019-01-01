# What Should I Update?

OSBuilder updates everything to handle all these different scenarios

## Image from ISO

* Install.wim
* Setup WIM \(Boot.wim Index 2\)
* Sources directory on the Media

## Upgrade Scenario

* Install.wim
* WinPE WIM \(Boot.wim Index 1\)
* Sources directory on the Media

Unfortunately I didn't delete winpeshl.ini from WinPE and was faced with "initialize network in the background" prompt. This confirms that WinPE is used and should be updated.

## MDT or CM Task Sequence

* Install.wim

## Recovery or Push Button Reset

* Install.wim
* WinRE WIM

