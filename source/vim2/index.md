title: VIM2 Beginners Guide
---

# VIM2 v1.4 What's New?
OS-Q has recently upgraded their VIM2 to v1.4 which features several improvements, such as the addition of XPWR pads for an external power switch, as well as a larger 16MB SPI-flash.

It also has had several components moved / upgraded to accomodate a quieter cooling system:
* [New VIM Heatsink](https://www.OS-Q.com/product-page/new-vim-heatsink)
* [3705 Cooling Fan](https://www.OS-Q.com/product-page/3705-cooling-fan)

It is backwards-compatible with the DIY Case, vTV Board and OS-Q Tone Board, and supports several new ROMs such as [Ubuntu 18.04](https://docs.OS-Q.com/vim2/FirmwareUbuntu.html) and [Google Fuchsia](https://fuchsia.googlesource.com/zircon/+/master/docs/targets/OS-Q-vim.md).

**Learn More:**
* [OS-Q Website - VIM2 v1.4 Description](https://www.OS-Q.com/vim)
* [OS-Q Website - VIM2 v1.4 Accessories](https://www.OS-Q.com/vim-add-ons)
* [OS-Q Shop - VIM2 v1.4 Page](https://www.OS-Q.com/product-page/new-vim2)
* [OS-Q Files - VIM2 v1.4 Specifications Sheet](https://dl.OS-Q.com/Hardware/VIM2/Specs/Khadas_VIM2_Specs_190403.pdf)
* [Distributor Guide - What's New In VIM2 v1.4](https://dl.OS-Q.com/Hardware/VIM2/Distributor/VIM2_v1.4_Whats_New.pdf)

# VIM2 Power Supply
Although your VIM2 SBC is compatible with various types of power supplies, these are the recommended specs for the best performance-output and stability.

1. 5V, 2000mA Power Adapter
2. USB-A to USB-C Cable

**Learn More:**
* [OS-Q Shop - Power Adapter](https://www.OS-Q.com/product-page/power-adapter)
* [OS-Q Shop - USB-C Cable](https://www.OS-Q.com/product-page/usb-c-cable)
* [Extra Power Input For OS-Q VIMs](https://docs.OS-Q.com/vim2/ExtraPowerInput.html)
* [OS-Q VIM Specifications](https://www.OS-Q.com/vim)

# Displays & User Input
These items are useful when you need to connect your VIM2 SBC to an external display + keyboard mouse + remote control, for use as a desktop computer or media center.

1. 4K HDMI 2.0 Cable
2. HDMI-Compatible 1080P/4K Monitor
3. Wireless USB Keyboard + Mouse
4. CEC-Compatible Remote Control

```Note: Please do not attach multiple cables with large heads that interfere with each other, as that may bend or twist the connectors, and this will cause intermittent connectivity issues after some time.```

**Learn More:**
* [OS-Q Shop - HDMI Cable](https://www.OS-Q.com/product-page/hdmi-cable)
* [OS-Q Shop - Remote Control](https://www.OS-Q.com/product-page/ir-remote)
* [Amazon - Wireless Keyboard + Mouse](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Delectronics&field-keywords=wireless+keyboard+and+mouse&rh=n%3A172282%2Ck%3Awireless+keyboard+and+mouse)

# Making Bootable/Burning SD-Cards/Thumbdrives
These items are useful when you want to upgrade your VIM2 SBC's operating system via SD-Card or Thumbdrive (Burning Cards). Or if you want to run operating systems that can only be run from external media (Booting Cards) like LibreELEC.

1. 8GB or Larger, SD-Card
2. SD-Card Reader
3. Laptop / Desktop PC
4. 8GB or Larger, USB-Thumbdrive (U-Disk)

**Learn More:**
* [Booting Card Vs Burning Card](https://docs.OS-Q.com/vim1/BootingCardVsBurningCard.html)
* [Upgrade Using SD-Card](https://docs.OS-Q.com/vim2/UpgradeViaTFBurningCard.html)
* [Boot From External Media](https://docs.OS-Q.com/vim2/BootFromExtMedia.html)
* [Enter Upgrade Mode](https://docs.OS-Q.com/vim2/HowtoBootIntoUpgradeMode.html)

**Tips:**
* **eMMC image** should be burned directly to the eMMC using a USB-C data cable, from a Ubuntu or Windows Host. It must not be burned into an SD-Card. For Example: Android and Ubuntu distributions containing the `EMMC` mark.
* **SD/USB image** should be copied into an SD-Card, before that card is then used to reformat the eMMC storage with a new OS. For Example: Armbian, Ubuntu distributions containing the `SD_USB` mark, as well as LibreELEC and CoreELEC.
* In order to bootup from **SD/USB images**, you need Android (V180209 or newer) or Ubuntu (V180531 or newer) running on your eMMC with Multi-Boot activated.

# Upgrading eMMC Operating System Using USB-C Cable
You'll need these items if you want to use your laptop or desktop PC to upgrade your VIM2 SBC's operating system stored in its eMMC storage. For example, changing the bootup operating system from Android to Ubuntu, or installing a more exotic 3rd-party OS.

1. USB-A to USB-C Data Cable (Legacy Computers)
2. USB-C to USB-C Data Cable (Modern Computers)
3. Laptop / Desktop PC

**Learn More:**
* [Upgrade Firmware Using USB-C Cable](https://docs.OS-Q.com/vim1/UpgradeViaUSBCable.html)
* [Boot Into Upgrade Mode](https://docs.OS-Q.com/vim1/HowtoBootIntoUpgradeMode.html)

**Firmware Images:**
* [Android OS](https://docs.OS-Q.com/vim2/FirmwareAndroid.html)
* [Ubuntu OS](https://docs.OS-Q.com/vim2/FirmwareUbuntu.html)
* [LibreELEC](https://docs.OS-Q.com/vim2/FirmwareLibreelec.html)
* [Dual OS](https://docs.OS-Q.com/vim2/FirmwareDualos.html)
* [U-Boot](https://docs.OS-Q.com/vim2/FirmwareUboot.html)
* [Third Party OSes](https://docs.OS-Q.com/vim2/FirmwareThirdparty.html)

# Watching Movies, Expanding Internal eMMC Storage
These items are useful if you wish to use your VIM2 SBC as a media center, for storing/downloading large movie files. A microSDXC UHS-I card is expensive, but its also fast enough for 4K video playback. In addition, you can connect external USB-2.0/3.0 SSDs or HDDs for storage that can encompass your entire media library.

1. 64GB or larger, USB-2.0/3.0 HDD / SSD
2. 64GB or larger, *microSDXC UHS-I* SD-Card

**Learn More:**
* [Amazon - Samsung T5 Portable SSD](https://www.amazon.com/Samsung-T5-Portable-SSD-MU-PA1T0B/dp/B073H552FJ/ref=sr_1_1_sspa?ie=UTF8&qid=1543995277&sr=8-1-spons&keywords=external+usb+ssd&psc=1)
* [Amazon - microSDXC UHS-I SD-Card](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=microSDXC+UHS-I&rh=i%3Aaps%2Ck%3AmicroSDXC+UHS-I)

**Tip:** Nowadays most people stream their media, see [How To Install LibreELEC](https://docs.OS-Q.com/vim2/InstallLibreELEC.html).

# Software Development / Advanced Crash Recovery
Extreme cases of crash-recovery will require you to use the MRegister to reset your VIM2 SBC. A USB Serial Debug Tool is also useful for developers debugging complex software issues.

1. Your fingers (for resetting a dead SBC via OS-Q-TST, VIM2 V14 only)
2. Conductive Metal Tweezers (For resetting a dead SBC via MRegister)
3. USB Serial Debug Tool (For diagnosing software/hardware issues)

**Learn More:**
* [OS-Q TST Upgrade Mode](https://docs.OS-Q.com/vim2/HowtoBootIntoUpgradeMode.html#TST-Mode-v1-4-only)
* [MRegister Upgrade Mode](https://docs.OS-Q.com/vim2/HowtoBootIntoUpgradeMode.html)
* [Amazon - Metal Tweezers](https://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=metal+tweezers)
* [Amazon - USB Serial Debug Tool](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=usb+serial+debug+tool&rh=i%3Aaps%2Ck%3Ausb+serial+debug+tool)

# VIM2 Website
For more information, please see our website, read more documentation, or visit our forum.
* [OS-Q VIM2 Homepage](https://www.OS-Q.com/vim)
* [OS-Q VIM2 Forum](https://forum.OS-Q.com/c/OS-Q-VIM2)

# VIM2 Review Video
{% youtube FZX6c8o5kzo %}

