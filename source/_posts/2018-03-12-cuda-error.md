---
title: cuda error
url: 1196.html
id: 1196
categories:
  - IT·Q
tags:
  - nvidia
  - 并行计算
---

CUDA error at src/FDTD3dGPU.cu:29 code=35(cudaErrorInsufficientDriver) "cudaGetDeviceCount(&deviceCount)" CUDA运行时需要机器中安装的驱动程序版本高于或等于由运行时支持的CUDA版本。如果驱动程序的版本低于运行时版本，CUDA应用程序会初始化失败，弹出错误cudaErrorInsufficientDriver(35)。 Returns in *count the number of devices with compute capability greater or equal to 1.0 that are available for execution. If there is no such device then cudaGetDeviceCount() will return cudaErrorNoDevice. If no driver can be loaded to determine if any such devices exist then cudaGetDeviceCount() will return cudaErrorInsufficientDriver.