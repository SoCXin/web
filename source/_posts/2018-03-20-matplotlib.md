---
title: matplotlib
url: 1309.html
id: 1309
categories:
  - I·TQ
tags:
  - python
---

Matplotlib是Python中最常用的可视化工具之一，可以非常方便地创建海量类型地2D图表和一些基本的3D图表，因为在函数的设计上参考了MATLAB，所以叫做Matplotlib。matplotlib和pyplot的惯用别名分别是mpl和plt。 指定图表名称 plt.figure('data') plt.figure('model') plt.figure('data & model') 不指定figure()的轴（参数），默认figure(1)被建立，可以多次使用figure命令来产生多个图，其中图片号按顺序增加。要注意一个概念当前图和当前坐标，所有绘图操作仅对当前图和当前坐标有效。 整个图像为一个Figure对象，在Figure对象中可以包含一个，或者多个Axes对象，每个Axes对象都是一个拥有自己坐标系统的绘图区域。 添加标题 plt.title('Histogram of ARM') 添加文字 plt.text() text()可以在图中的任意位置添加文字，并支持LaTex语法，xlable(), ylable()用于添加x轴和y轴标签 文本注释 plt.annotate() 在数据可视化的过程中，图片中的文字经常被用来注释图中的一些特征，两个点的坐标：被注释的地方(x, y)和插入文本的地方text(x, y)。 绘制多个子图 plt.subplot(numRows, numCols, plotNum) subplot(221) #分成2x2，占用第一个，即第一行第一列的子图 subplot(222) #分成2x2，占用第二个，即第一行第二列的子图 subplot(212) #分成2x1，占用第二个，即第二行 如果不指定subplot(numrows, numcols, fignum)的轴，subplot(111)会自动建立 plt.axis(\[xmin, xmax, ymin, ymax\]) 上面例子里的axis()命令给定了坐标范围。 #设置x轴范围 xlim(-2.5, 2.5) #设置y轴范围 ylim(-1, 1) 在图中绘制线条 plt.plot(x, y) plt.plot(\[4,5,6\]) plt.plot(x, y, 'k', lw=3) 通过'k'指定线的颜色，除了颜色也可以指定线形，比如'r--'表示红色虚线；lw指定线的宽度 同时绘制多种格式线条：plt.plot(t, t, 'r--', t, t\*\*2, 'bs', t, t\*\*3, 'g^') 绘制直方图 plt.hist() 生成散点图 plt.scatter(x, y\_data) 设置栅格 plt.grid(True) plt.rcParams\['font.sans-serif'\]=\['Qitas'\] #用来正常显示中文标签 plt.rcParams\['axes.unicode\_minus'\]=False #用来正常显示负号 将当前figure为图片 plt.savefig('result.png') 显示图像 plt.show()