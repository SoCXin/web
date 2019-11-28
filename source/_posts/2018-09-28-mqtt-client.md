---
title: mqtt client
url: 1825.html
id: 1825
comments: false
categories:
  - I·TQ
tags:
  - MQTT
  - 通信
---

Client模块用于与MQTT代理（broker）进行通信，使用流程为： 1、通过connect()/connect\_async()连接broker； 2、频繁的调用loop()来维持与MQTT代理之间的流量，或者使用loop\_start()来设置一个线程为你调用loop()，或者在一个阻塞的函数中调用loop\_forever()来为你调用loop()； 3、使用subscribe()订阅一个主题（topic）并接受消息（messages）； 4、使用publish()来发送消息； 5、使用disconnect()来断开与MQTT代理的连接。 on\_connect(client, userdata, flags, rc): client是调用回调的客户端实例； userdata可以使任何类型的用户数据，可以在创建新客户端实例时设置或者使用user\_data\_set(userdata)设置； flags是一个包含代理回复的标志的字典； rc返回值：成功（0）、协议版本错误（1）、无效的客户端标识（2）、服务器无法使用（3）、错误的用户名密码（4）和未经授权（5）。 connect(host, port=1883, keepalive=60, bind\_address="") import paho.mqtt.client as mqtt client = mqtt.Client() 构造函数 Client(client\_id="", clean\_session=True, userdata=None, protocol=MQTTv311, transport="tcp") loop(timeout=1.0, max\_packets=1) loop\_forever(timeout=1.0, max\_packets=1, retry\_first\_connection=False) import paho.mqtt.publish as publish 构造函数 publish(topic, payload=None, qos=0, retain=False) single(topic, payload=None, qos=0, retain=False, hostname="localhost", port=1883, client_id="", keepalive=60, will=None, auth=None, tls=None, protocol=mqtt.MQTTv311, transport="tcp") subscribe(topic, qos=0) [参考文献](https://blog.csdn.net/weixin_41656968/article/details/80848542#1loopread)