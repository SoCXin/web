---
title: tensorflow运算
url: 1327.html
id: 1327
categories:
  - I·TQ
tags:
  - mAIn
---

在Tensorflow中进行数据的运算，需要先将常规的数据转换成对应的tensor数据类型，对应的函数： tf.zeros(shape, dtype=tf.float32, name=None)，创建一个维度为sharp，所包含的参数为０的tensor对象，数据类型为tf.float32（或tf.int32），别名name不赋值。 tf.zeros\_like(tensor, dtype=None, name=None)，拷贝参数tensor的类型、维度等数据，并将其中的值设置为０。 tf.ones(shape, dtype=tf.float32, name=None) tf.ones\_like(tensor, dtype=None, name=None) tf.fill(dims, value, name=None)，创建一个维度为dims，值为value的tensor对象。 tf.constant(value, dtype=None, shape=None, name='Const')，创建一个按照value赋值，用shape指定形状的常量tensor。其中value可以是一个数或者list，如果是一个数，那么这个tensor中所有值按该数来赋值；如果是list，那么len(value)一定要小于等于shape展开后的长度。先将value中的值逐个存入赋值，不够部分则全部存入value的最后一个值。 相应的数学运算： tf.add(x, y) tf.subtract(x, y) tf.multiply(x, y) tf.div(x, y) tf.divide(x, y) tf.mod(x, y) tf.scalar\_mul(9.0, x) #所有元素等比例放大 tf.ceil(x) #求天花板整数 tf.erf(x)# 求高斯误差 tf.abs(x)# 求绝对值 tf.negative(x) # 求 相反数 tf.reciprocal(x) # 求 倒数 矩阵运算 tf.diag(y) #返回对角矩阵 tf.diag\_part(x) #返回对角阵的对角元素 tf.trace(x) #返回矩阵的迹 tf.transpose(x) #返回矩阵的转置 tf.matmul(x, x)) #矩阵乘法 tf.norm(x\_f) #求范数 tf.matrix\_inverse(x\_f) #求逆矩阵 tf.svd(x\_f) #奇异值分解 tf.self\_adjoint\_eig(x_f) # 求特征值和特征向量 通过sess.run()启动相应运算图 with tf.Session() as sess: sess.run(tf.diag(y))