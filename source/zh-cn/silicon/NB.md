---
title: NB IoT
---

## 定义

窄带物联网（Narrow Band Internet of Things, NB-IoT）成为万物互联网络的一个重要分支。NB-IoT构建于蜂窝网络，只消耗大约180kHz的带宽，可直接部署于GSM网络、UMTS网络或LTE网络，以降低部署成本、实现平滑升级。也被叫作低功耗广域网(LPWAN)。3GPP NB-IoT的标准化始于2015年9月，于2016年7月R13 NB-IoT标准完成。

NB-IoT是基于FDD LTE技术改造而来，包括帧结构、下行OFDMA、上行SC-FDMA、信道编码、交织等大部分沿用LTE技术，可以理解为一种简化版的FDD LTE技术。

### 下行传输

NB-IoT下行与LTE一致，采用正交频分多址(OFDMA)技术，子载波间隔15kHz，时隙、子帧和无线帧长分别为0.5ms、1ms和10ms，包括每时隙的OFDM符号数和循环前缀（cyclic prefix）都是与LTE一样的。

NB-IoT载波带宽为180KHz，相当于LTE一个PRB(Physical Resource Block)的频宽，即12个子载波*15KHz/子载波=180KHz，这确保了下行与LTE的相容性。比如，在采用LTE载波带内部署时，可保持下行NB-IoT PRB与其它LTE PRB的正交性。

### 上行传输

NB-IoT上行支持多频传输（multi-tone）和单频（single- tone）传输。

多频传输基于SC-FDMA，子载波间隔为15kHz，0.5ms时隙，1ms子帧（与LTE一样）。单频传输子载波间隔可为15KHz以及3.75KHz，其中15KHz与LTE一样，以保持两者在上行的相容性；其中当子载波为3.75KHz时，其帧结构中一个时隙为2ms长（包含7个符号），15KHz为3.75KHz的整数倍，所以对LTE系统有较小的干扰。

与下行一样，NB-IoT上行总系统带宽为180KHz。

## 特性

### 广覆盖

164 dB 最大耦合损耗(Maximum Coupling Loss，MCL），比GPRS强20dB

上下行控制信息与业务信息在更窄的LTE带宽中发送，相同发射功率下的PSD（Power Spectrum Density）增益更大，降低接收方的解调要求。NB-IoT上行功率谱密度增强17dB，考虑GSM终端发射功率最大可以到33dBm，NB-IoT发射功率最大23dBm，所以实 际NB-IoT终端比GSM终端功率谱密度高7dB。

### 低成本

NB-IoT舍弃了LTE物理层的上行共享信道(Physical Uplink Control Channel, PUCCH)、物理混合自动重传请求或指示信道(Physical Hybrid ARQ Indicator Channel, PHICH)等。

Release 13 NB-IoT仅支持FDD 半双工模式，意味着不必同时处理发送和接收，比起全双工成本更低廉，更省电。低速率和低带宽意味着芯片处理复杂度降低

### 低功耗

DRX(Discontinuous Reception)，即不连续接收。eDRX就是扩展的不连续接收。NB-IoT扩展了这个断续间隔，可扩展至2.91小时，更加省电。