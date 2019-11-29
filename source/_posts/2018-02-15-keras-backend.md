---
title: Keras Backend
---

Keras是一个模型级的库，可以通过pip直接安装，提供了快速构建深度学习网络的相关模块，但Keras本身并不处理如张量乘法、卷积等底层操作，这些操作依赖于张量操作库。Keras所依赖的处理张量操作库就被称为Backend-后端引擎。 Keras提供了三种后端引擎Tensorflow/Theano/CNTK，并将其函数统一封装，使得用户可以以同一个接口调用不同后端引擎的函数。Tensorflow和Theano都是“符号式”的库，先定义变量，再建立计算图，符号计算能够提供关键的计算优化、自动求导等功能，但难以调试。 Keras 0.x版本中模型有两种：Sequential-序贯模型，单输入单输出，层与层相邻，没有跨层连接的情况，特点是编译速度快，操作简单；Graph-图模型，多输入多输出，层与层任意连接，编译速度慢。之后的Keras版本中，图模型被functional model API取代，将一般的模型称为Model，将简单的模型称为Sequential。 Keras默认的Backend为Tensorflow，修改.keras/keras.json中{  "floatx": "float32", "epsilon": 1e-07,"backend": "tensorflow", "image\_data\_format": "channels_last"}对应内容即可，.keras/在linux的根目录下，在windows的USERPROFILE目录下。 Backend使用Tensorflow或Theano进行训练和应用尽量一致，用一个训练然后切换到另一个应用可能会不匹配，并且这种不匹配是不会直接报错。