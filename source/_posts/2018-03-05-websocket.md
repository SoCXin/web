---
title: WebSocket
url: 1001.html
id: 1001
categories:
  - I·TQ
tags:
  - 通信
---

Socket其实并不是一个协议,而 WebSocket则是一个完整的应用层协议，包含一套标准的API，所以WebSocket更易用，而 Socket 更灵活。 WebSocket API是 HTML5 标准的一部分， 但这并不代表 WebSocket 一定要用在 HTML 中，或者只能在基于浏览器的应用程序中使用。 以前，很多网站使用轮询实现推送技术。轮询是在特定的的时间间隔（比如1秒），由浏览器对服务器发出HTTP request，然后由服务器返回最新的数据给浏览器。轮询的缺点很明显，HTTP请求的header是非常长的，而实际传输的数据可能很小，这就造成了带宽和服务器资源的浪费。 WebSocket协议应运而生，WebSocket协议是基于TCP的一种新的网络协议，它实现了浏览器与服务器全双工(full-duplex)通信，允许服务器主动发送信息给客户端。 WebSocket在数据传输的稳定性和数据传输量的大小方面，具有很大的性能优势：HTTP 轮训每次需要返回871个字节，websocket每次只需要2个字节。 实现websocket连线过程需要浏览器发出websocket连线请求，然后服务器发出回应，这个过程通常称为“握手” 。在WebSocket API，浏览器和服务器只需要做一个握手的动作就可以形成了一条快速通道。WebSocket协议实现即时服务带来了两大好处：互相沟通的Header是很小只有2Bytes；服务器有新数据时可以主动推送给浏览器。 许多语言、框架和服务器都提供了WebSocket 支持: 基于 C 的 libwebsocket.org 基于 Node.js 的 Socket.io 基于 Python 的 ws4py 基于 C++ 的 WebSocket++