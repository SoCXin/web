---
title: Cadence allegro
url: 750.html
id: 750
categories:
  - IT·Q
tags:
  - EDA
  - 硬件
---

Cadence（版本17.2）编辑旧版本原理图，在生成网表的时候报错Unable to open C:\\Cadence\\SPB_16.5\\software\\capture\\allegro.cfg for reading. 出错原因是找不到配置文件.cfg，通过Tools->Create Netlist->PCB Editor->Setup修改文件路径，此问题常发生在打开不同版本工程文件中，配置文件随项目文件夹走导致路径名称不一样。