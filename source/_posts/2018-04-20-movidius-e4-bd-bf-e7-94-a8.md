---
title: movidius使用
url: 1415.html
id: 1415
categories:
  - I·TQ
tags:
  - mAIn
---

官方支持的平台：Ubuntu 16.04（Ubuntu VirtualBox）和 RPI3 Model B 需要注意树莓派版本： Hmm, you are running Raspbian Jessie, which is not supported by NCSDK 1.09. Please upgrade to Raspbian Stretch and then proceed to install NCSDK. 安装相关驱动 git clone https://github.com/movidius/ncsdk.git cd ~/ncsdk make install 通过例程测试 cd ~/ncsdk make examples Intel的 Movidius™ Neural Compute SDK (NCSDK)和Movidius™ Neural Compute Stick (NCS)，可以应用于DNN模型的调试和应用加速 SDK包含的工具： mvNCCompile: Converts Caffe/TF network and weights to Intel Movidius technology internal compiled format mvNCProfile: Provides layer-by-layer statistics to evaluate the performance of Caffe/TF networks on the NCS mvNCCheck: Compares the results from an inference by running the network on the NCS and Caffe/TF SDK目前支持两种深度学习框架：Caffe & TensorFlow™，在软件包中包括的例程有： Caffe：GoogLeNet，AlexNet，SqueezeNet TensorFlow™：Inception V1，Inception V3 Apps：hello\_ncs\_py，hello\_ncs\_cpp，multistick_cpp 使用例程的方式： (cd ncsdk/examples && make) # run all examples (cd ncsdk/examples/caffe/GoogLeNet && make) # Run just one example