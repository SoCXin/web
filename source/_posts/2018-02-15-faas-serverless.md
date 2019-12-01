---
title: Serverless & FaaS
url: 662.html
id: 662
categories:
  - IT·Q
tags:
  - 云雾
---

FaaS(Functions as a Service)往往和Serverless(无服务架构)一同被提起，随着微服务架构以及容器技术发展，很多公司都开始逐步分拆原本庞大臃肿的单体应用，将其转换为多个服务模块，再将模块组合成大型的复杂应用，Serverless无服务架构可以从字面上理解为微服务架构更细粒度研磨的架构模式，通过Serverless进一步引出FaaS的概念。 Serverless最初的概念应该是同字面的“无服务器”类似，伴随云技术而来，由第三方云供应商负责后端基础结构的维护，以服务的方式为开发者提供所需功能，例如数据库、消息，以及身份验证等，例如依赖AWS和阿里云构建网站和服务，概念偏向BaaS，后端即服务。不需要单独的认证逻辑，直接使用第三方BaaS服务替代。 而现在的Serverless概念进一步引申出暂存容器中运行的自定义代码应用(函数即服务，FaaS)，代码中函数是Serverless中抽象运行的最小单位，Serverless并不看重运行一个函数需要多少CPU和RAM资源，而只是关注运行函数所需的时间，使用者也只为函数的运行时间买单，有利于对资源更合理高效地配置。有人说FaaS也是PaaS的更细粒度研磨，磨细到函数级别，是未来开发的一种趋势。 FaaS 将函数作为一个线上服务，可以通过 API 执行、通过邮件执行、通过 IoT 执行，通过队列执行，只需要统一的函数接口，可以通过多种触发方式如定时器、HTTP请求或相关服务中的某个事件。 FaaS常常利用容器技术docker来应用，将容器仓库和代码仓库衔接，让代码开发到服务发布的距离减至最短，基于docker的compose（fig）编排技术，可实现大规模集群编排和管理，降低发布和运维难度。