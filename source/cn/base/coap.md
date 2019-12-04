---
title: CoAP
---

在物联网应用里面， 设备与设备之间都存在网络里面，它们需要互相进行网络通信。 但由于通常物联网设备都是资源限制型的，有限的CPU能力，有限RAM,有限的flash，有限的网络带宽， 针对此类特殊场景，COAP协议借鉴了HTTP协议机制并简化了协议包格式。简洁地实现了物联网设备之间通信。

消息模型，以消息为数据通信载体，通过交换网络消息来实现设备间数据通信

对云端设备资源操作都是通过请求与响应机制来完成，类似HTTP，通过4个请求方法（GET, PUT, POST, DELETE）对服务器端资源进行操作。协议包轻量级，最小长度仅为4B。
支持可靠传输，数据重传，块传输。 确保数据可靠到达。
支持IP多播, 即可以同时向多个设备发送请求

非长连接通信，适用于低功耗物联网场景

COAP使用DTLS来做安全传输层，该层运行于UDP之上..当前考虑使用DTLS时，需要考虑设备终端资源受限情况， 有些资源有限设备无法运行DTLS安全加密算法。

做安全加密，需要根据应用场景需要，对应只上报数据，且数据敏感度不高场景，可以不考虑加入安全层。

MQTT，其实就是IBM把服务器间异步通讯用的消息队列Message 
Queue（MQ）中间件前置到IOT接入而已。天生适合多对多（服务器对服务器，设备对服务器，设备对APP），异步，后台应用，以及即时通讯（多客户端对等）场景。不过就是约定了报文头而已。自己用Redis PubSub/MQ也可以构建。最简单的IOT架构：Device+MQTT+APP，如果不存储数据的话。需要数据持久可以是：Device+MQTT+Web/APP+DB（NoSQL/NewSQL/BigData/Lambda）+APP。CoAP，基于UDP接口，参考HTTP上的REST API，适合数据采集这种多（设备）对一（服务器）
场景，系统架构类似于传统Web。但是CoAP UDP不是面对连接的，所以方向控制需要高层构建协议。CoAP支持多播，也可以实现一对多场景，但是好像和MQTT不一样。应该是局域网内的多播？了解的兄弟请提点一下。但总的网站架构迎来类似于传统Web：CoAP+Web+DB+APP。弱势是，数据必须流经DB转给第三方。当然，如果Web内部有MQ，可以通过REST API暴露给第三方。变成：CoAP + Web + DB + APP          + Redis/MQ + REST + APP请观察最近的BAT动向，都把MQTT作为物联网前置接入套件单列出来作为标准云服务提供。阿里云物联网套件，百度开放云物联网服务IOT，腾讯QQ物联平台，中移动OneNet开放云，Amazon IOT服务......

MQTT还有一点：长连接。采用长连接MQTT还是无连接CoAP，和应用数据属性有关。是维持大量非活动长连接消耗大，还是大量UDP包对于服务器消耗大，我一直没有得到结论。反正我从Windows发起大量UDP压测，总是报给我操作系统端口不够的一个错误。我之前的架构是：Socket + Web + DB（Redis/SQL）+ APP，现在不得不将Redis作为沟通Socket/Web的通道，和第三方APP/Sever的通道。但用Redis PubSub构建实现起来很麻烦。而且也不是标准实现，客户实施的周期反而不如MQTT。所以准备改造成为上述MQTT协议方式。【更新】CoAP大体上是采用数据报方式，可以基于UDP，短消息，以及6LowPAN等传输层。而且大体上在WSN内部可以使用。不过由于CoAP也可以用于网关与云之间通讯，所以现在出现了CoAP over TCP的草案。不过，我觉得该草案受到CoAP RFC7252的约束太多，所以我和客户约定了一个版本，私底下命名为CoTCP（CoAP over TCP）。呵呵，私有的协议。但是保留了面向资源的REST风格。

MQTT基于TCP，在做反控设备的时候比UDP更可靠，比如CoAP走3G、4G的时候甚至需要实现CoAP over TCP，否则反控很不稳定甚至无法联通。MQTT异步Pub/Sub实现，好比发个微信，无需等待对方确认便可以继续，而不像CoAP那样必须等待对方应答才能返回的同步模式。MQTT为物联网提供了许多体贴的设计，比如QoS，比如“遗言”的设计。
当然，CoAP在功耗方面有优势，不过随着物联网设备特别是网管的计算能力加强，这点应该不是主要矛盾。

CoAP（Constrained Application Protocol） 
CoAP 是6LowPAN协议栈中的应用层协议 
CoAP 是超轻量型协议 
CoAP 的默认UDP端口号为5683

### 四种消息类型

typedef enum {
  COAP_TYPE_CON, /* confirmables */
  COAP_TYPE_NON, /* non-confirmables */
  COAP_TYPE_ACK, /* acknowledgements */
  COAP_TYPE_RST  /* reset */
} coap_message_type_t;

ACK回应CON 
RST：当接收者接受到的消息包含一个错误，接受者解析消息或者不再关心发送者发送的内容，那么复位消息将会被发送

### 消息结构 

version：版本号 
type：消息类型 
tkl：标记长度 
id：每个CoAP消息都有一个ID，在一次会话中ID总是保持不变 
token：标记是ID的另一种表现 
options：类似于HTTP请求头 
payload：交互数据
