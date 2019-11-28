---
title: Inception网络
url: 1421.html
id: 1421
categories:
  - I·TQ
tags:
  - mAIn
---

Inception网络也可以称之为GoogLeNet网络，主要思想是找出如何用密集成分来近似最优的局部稀疏结，提出Inception结构并做到了22层深度，其之前的AlexNet、VGG等结构都是通过增大网络的深度（层数）来提升训练效果，但层数的增加会导致overfit、梯度消失、梯度爆炸等问题。 inception结构从另一种角度来提升训练结果：更高效的利用计算资源，在相同的计算量下能提取到更多的特征，从而提升训练结果。 Inception作用：代替人工确定卷积层中的过滤器类型或者确定是否需要创建卷积层和池化层，即：不需要人为的决定使用哪个过滤器，是否需要池化层等，由网络自行决定这些参数，可以给网络添加所有可能值，将输出连接起来，网络自己学习它需要什么样的参数。 Inception v2网络加入了BN（Batch Normalization）层 Inception v3网络在v2的基础上提出了卷积分解（Factorization） Inception v4主要利用残差连接（Residual Connection）来改进v3结构 v3一个最重要的改进是分解（Factorization），将7x7分解成两个一维的卷积（1x7,7x1），3x3也是一样（1x3,3x1），这样的好处，既可以加速计算（多余的计算能力可以用来加深网络），又可以将1个conv拆成2个conv，使得网络深度进一步增加，增加了网络的非线性，还有值得注意的地方是网络输入从224x224变为了299x299，更加精细设计了35x35/17x17/8x8的模块。