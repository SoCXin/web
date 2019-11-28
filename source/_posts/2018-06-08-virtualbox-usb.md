---
title: VirtualBox USB
url: 1460.html
id: 1460
categories:
  - IT·Q
tags:
  - USB
---

**问题背景：** 将自定义的USB设备添加到VirtualBox的虚拟机中，然后就出错了。自定义的USB设备增加了厂家信息和产品信息描述，并在USB的设备描述符中定义了索引值，第一次导入设备到虚拟机中成功了，但是接下来就保存了相关信息，并且无论如何就加载不了了，很难受的。 **问题描述：** 返回代码 : E_INVALIDARG (0x80070057) 组件 : HostUSBDevice 界面 : IHostUSBDevice {173b4b44-d268-4334-a00d-b6521c9a740a} 被召者 : IConsole {d5a1cbda-f5d7-4824-9afe-d640c94c7dcf} **解决方案：** oracle论坛上一个相关回复把 AMD usb filterdriver 去除，就能够正常加载。 如果在设置增加了过滤器，没有提示发现virtualbox usb 设备的话，很可能是安装了其他的驱动屏蔽了usb 驱动，让 virtualbox 无法捕捉到USB所以就无法正确导入。