title: How To Enable ADB
---

This guide will show you how to enable ADB on Ubuntu for VIMs/Edge.

### VIMs
Only Linux 3.14 supports ADB, you can enable it via the following commands:
```
$ sudo systemctl enable adb-Khadas.service
$ sudo systemctl start adb-Khadas.service
```

### Edge
Only Linux 4.4 support ADB, you can enable it via the following commands:
```
$ sudo systemctl enable adb-Khadas.service
$ sudo systemctl start adb-Khadas.service
```
