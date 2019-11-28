---
title: Kubernetes
url: 1378.html
id: 1378
categories:
  - I·TQ
tags:
  - docker
---

IaaS基础设施即服务，透过虚拟和分散式存储等技术，实现对包含处理器、存储器、路由器等物理资源的抽象，与实体设备没有大的区别。 SaaS软件即服务，通过网络执行为使用者提供应用服务，通过浏览器使用软件功能，终端使用者只关系软件业务的使用。 PaaS平台即服务，将IT者从环境管理中解放出来，集中更多精力到业务的开发，而Kubernetes是PaaS的集大成者。 第三代PaaS在Docker之后到来，利用Docker的特性构建，典型的Kubernetes，是谷歌开源的容器管理系统，构建在Docker之上且深度整合了Docker，提供资源排程、部署执行、服务发现、扩充缩容等一整套工具。 Kubernetes遵循微服务架构理论的分布式，节点分为Master和Node，通过Etcd作为存储中介软体，Kubernetes中重要的资料都是持久化在Etcd中。由于Kubernetes依赖于Etcd，所以需要优先部署。 Kubernetes Master作为控制节点，包括作为入口的API Server，封装了核心物件的增删改查操作，以REST API提供外部客户和内部元件呼叫，维护的REST物件将持久化到Etcd中。Master所包括的Scheduler负责资源排程，为新的Pod分配机器。Master所包括的Control Manager负责执行各种控制器，目前已经实现了很多控制器来保证Kubernetes正常运行。 Kubernetes Node作为执行节点，包括负责控制容器的Kubelet，从API Server接收Pod建立请求，启动和停止容器，监控容器状态并报告给API Server。Node包括的Proxy负责为Pod建立代理服务，会从API Server取得所有Service并根据资讯建立代理服务，实现Service到Pod的请求路由和转发，进一步实现层级网络。Node所包括的Docker就是容器的最终执行了，虽然Kubernetes也支持Rocket容器。