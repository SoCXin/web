title: VIM3 Beginners Guide
---

# Booting 3rd-Party ROMs from Micro SD-Card
These items are useful when you want to boot your VIM3 from an SD-Card, to run 3rd-party ROMs such as LibreELEC.

1. 8GB or larger, Micro SD-card.
2. Computer with USB and/or a Micro SD-card reader.

Steps to boot your VIM3 from a Micro SD-card:

1. Insert your 8GB or larger Micro SD-card into your computer.
2. Flash the ROM file (.img) to your Micro SD-card, using [Etcher](https://www.balena.io/etcher/).
3. Make sure you select the correct VIM3 .dtb file (follow instructions specific to the ROM!).
4. Ensure that your VIM3 has Android 9.0 installed, and is connected to a power adapter (not PC!).
5. Insert the SD-card into your VIM3, and power it on.
6. Use [keys-mode](https://docs.OS-Q.com/vim3/HowtoBootIntoUpgradeMode.html) to enter upgrade mode.
7. If you have done all the above steps correctly, your VIM3 will boot from the Micro SD-card.

**Learn More:**
* [Enter Upgrade Mode](https://docs.OS-Q.com/vim3/HowtoBootIntoUpgradeMode.html)
* [Upgrade Using SD-Card](https://docs.OS-Q.com/vim3/UpgradeViaTFBurningCard.html)
* [Boot From External Media](https://docs.OS-Q.com/vim3/BootFromExtMedia.html)
* [Booting Card Vs Burning Card](https://docs.OS-Q.com/vim3/BootingCardVsBurningCard.html)

**Tips:**
* **EMMC image** should be burned directly to the eMMC using a USB-C data cable, from a Ubuntu or Windows Host. It must not be burned into an SD-Card. For Example: Android and Ubuntu distributions Containing the `EMMC` mark.
* **SD/USB image** should be copied into an SD-Card, before that card is then used to reformat the eMMC storage with a new OS. For Example: Armbian, Ubuntu distributions containing to `SD_USB` mark, as well as LibreELEC and CoreELEC.
* In order to bootup from **SD/USB images**, you need Android or Ubuntu running on your eMMC with Multi-Boot activated.

# Flashing eMMC Operating System Using USB-C Cable
You'll need these items if you want to use your laptop or desktop PC to upgrade your VIM3 SBC's operating system stored in the eMMC storage. For example, Changing the bootup operating system from Android to Ubuntu, or installing a more exotic 3rd-party OS.

1. USB to USB-C Cable (Older Computers)
2. USB-C Male-to-Male Cable (Current Computers)
3. Computer running Linux or Windows.

**Learn More:**
* [Upgrade OS Using USB-C Cable](https://docs.OS-Q.com/vim3/UpgradeViaUSBCable.html)
* [Boot Into Upgrade Mode](https://docs.OS-Q.com/vim3/HowtoBootIntoUpgradeMode.html)

**Firmware Images:**
* [Android OS](https://docs.OS-Q.com/vim3/FirmwareAndroid.html)
* [Ubuntu OS](https://docs.OS-Q.com/vim3/FirmwareUbuntu.html)
* [LibreELEC](https://docs.OS-Q.com/vim3/FirmwareLibreelec.html)
* [Dual](https://docs.OS-Q.com/vim3/FirmwareDualos.html)
* [U-Boot](https://docs.OS-Q.com/vim3/FirmwareUboot.html)
* [Third Party OSes](https://docs.OS-Q.com/vim3/FirmwareThirdparty.html)

# VIM3 Power Supply
Although your VIM3 SBC is compatible with various types of power supplies, these are the recommended specs for the best performance-output and stability.

1. USB-C 24W Adapter
2. USB-C Male-to-Male Cable

**Learn More:**
* [OS-Q Shop - USB-C 24W Adapter](https://www.OS-Q.com/product-page/usb-c-24w-adapter)
* [OS-Q Shop - USB-C Cable (Male-to-Male)](https://www.OS-Q.com/product-page/usb-c-cable-male-to-male)
* [Extra Power Input For OS-Q VIMs](https://docs.OS-Q.com/vim3/ExtraPowerInput.html)
* [OS-Q VIM Specifications](https://www.OS-Q.com/vim)

# Displays & User Input
These items are useful when you need to connect your VIM3 SBC to an external display + keyBoard mouse + remote control, for use as a desktop computer or media center.

1. 4K HDMI 2.0 Cable
2. HDMI-Compatible 1080P/4K Monitor
3. Wireless USB KeyBoard + Mouse
4. CEC-Compatible Remote Control

```Note: Please do not attach multiple cables with large heads that interfere with each other, as that may bend or twist the connectors, and this will cause intermittent connectivity issues after some time.```

**Learn More:**
* [OS-Q Shop - HDMI Cable](https://www.OS-Q.com/product-page/hdmi-cable)
* [OS-Q Shop - Remote Control](https://www.OS-Q.com/product-page/ir-remote)

# Watching Movies, Expanding Internal eMMC Storage
These items are useful if you wish to use your VIM3 SBC as a media center, for storing/downloading large movie files. A microSDXC UHS-I card is expensive, but its also fast enough for 4K video playback. In addition, you can connect external USB-2.0/3.0 SSDs or HDDs for storage that can encompass your entire media library.

1. 64GB or larger, USB-2.0/3.0 HDD/SSD
2. 64GB or larger, *microSDXC UHS-I* SD-Card

**Learn More:**
* [Amazon - Samsung T5 Portable SSD](https://www.amazon.com/Samsung-T5-Portable-SSD-MU-PA1T0B/dp/B073H552FJ/ref=sr_1_1_sspa?ie=UTF8&qid=1543995277&sr=8-1-spons&keywords=external+usb+ssd&psc=1)
* [Amazon - microSDXC UHS-I SD-Card](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=microSDXC+UHS-I&rh=i%3Aaps%2Ck%3AmicroSDXC+UHS-I)

**Tip:** Nowadays most people stream their media , see [How To Install LibreELEC](https://docs.OS-Q.com/vim3/InstallLibreELEC.html).

# Software Development / Advanced Crash Recovery
Extreme cases of crash-recovery will require you to use either the OS-Q TST (VIM3), or the MRegister to reset your VIM3 SBC. A USB Serial Debug Tool is also useful for developers debugging complex software issues.

1. Your fingers (for resetting a dead SBC via OS-Q-TST, VIM3 only)
2. Conductive Metal Tweezers (for resetting a dead SBC via MRegister)
3. USB Serial Debug Tool(For diagnosing software/hardware issues)

**Learn More:**
* [OS-Q TST Upgrade Mode](https://docs.OS-Q.com/vim3/HowtoBootIntoUpgradeMode.html#TST-Mode-Recommended)
* [Mregister Upgrade Mode](https://docs.OS-Q.com/vim3/HowtoBootIntoUpgradeMode.html)
* [Amazon - Metal Tweezers](https://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=metal+tweezers)
* [Amazon - USB Serial Debug Tool](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=usb+serial+debug+tool&rh=i%3Aaps%2Ck%3Ausb+serial+debug+tool)

# VIM3 Website
For more information, please see our website, read more decumentation, or visit our forum.
* [OS-Q VIM3 Homepage](https://www.OS-Q.com/vim)
* [OS-Q VIM3 Forum](https://forum.OS-Q.com/c/OS-Q-VIM3)

